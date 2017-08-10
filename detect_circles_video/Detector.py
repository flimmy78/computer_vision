# import the necessary packages
from support.shapedetector import ShapeDetector
from scipy.spatial import distance as dist
import numpy as np
import argparse
import imutils
import cv2
import math
import time

class Detector:
	def __init__(self):
		pass

	def detect(self, image):
		output = image.copy()
		gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
		#cv2.imshow("Original gray", gray)

		#lap = cv2.Laplacian(gray, cv2.CV_64F)
		#lap = np.uint8(np.absolute(lap))
		#cv2.imshow("Laplacian", lap)

		#sobelX = cv2.Sobel(gray, cv2.CV_64F, 1, 0)
		#sobelY = cv2.Sobel(gray, cv2.CV_64F, 0, 1)
		#sobelX = np.uint8(np.absolute(sobelX))
		#sobelY = np.uint8(np.absolute(sobelY))
		#sobelCombined = cv2.bitwise_or(sobelX, sobelY)
		#cv2.imshow("Sobel X", sobelX)
		#cv2.imshow("Sobel Y", sobelY)
		#cv2.imshow("Sobel Combined", sobelCombined)

		blur = cv2.GaussianBlur(gray, (5, 5), 0)
		blur = cv2.medianBlur(blur,5)
		#cv2.imshow("blur", blur)

		canny = cv2.Canny(blur, 30, 150)
		#cv2.imshow("Canny", canny)

		######
		# apply GuassianBlur to reduce noise. medianBlur is also added for smoothening, reducing noise.
		# Adaptive Guassian Threshold is to detect sharp edges in the Image. For more information Google it.
		thresh = cv2.adaptiveThreshold(canny,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,cv2.THRESH_BINARY,11,9)
		#cv2.imshow("thresh", thresh)

		kernel = np.ones((5,5),np.uint8)
		thresh = cv2.erode(thresh,kernel,iterations = 1)
		thresh = cv2.dilate(thresh,kernel,iterations = 1)
		img_size = thresh.shape
		#cv2.imshow("thresh", thresh)

		#resized = imutils.resize(canny, width=300)
		#ratio = canny.shape[0] / float(resized.shape[0])
		ratio = 1

		(_, canny_cnts, _) = cv2.findContours(canny.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
		(_, thresh_cnts, _) = cv2.findContours(thresh.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
		contours = image.copy()
		#print("I count {} contours in this image".format(len(thresh_cnts)))
		#cv2.drawContours(contours, thresh_cnts, -1, (0, 255, 0), 2)
		#cv2.imshow("all contours", contours)

		#sd = ShapeDetector()

		# not accurate enough
		canny_enable = 0

		thresh_enable = 1

		canny_found = 0
		thresh_found = 0

		min_area = 100
		low_threshold = 0.8
		high_threshold = 1.0/low_threshold

		# future work
		# implement a univeral poly area
		# detect overlapped poly
		# divide complex poly into triangles

		if canny_enable:
			for c in canny_cnts:
				M = cv2.moments(c)
				area = cv2.contourArea(c)
				peri = cv2.arcLength(c, True)
				approx = cv2.approxPolyDP(c, 0.04 * peri, True)
				#shape = sd.detect(c)
				if(area > min_area):
					if (len(approx) == 3):
						triangle = cv2.minEnclosingTriangle(c)
						D1 = dist.euclidean((triangle[1][0][0][0], triangle[1][0][0][1]), (triangle[1][1][0][0], triangle[1][1][0][1]))
						D2 = dist.euclidean((triangle[1][1][0][0], triangle[1][1][0][1]), (triangle[1][2][0][0], triangle[1][2][0][1]))
						D3 = dist.euclidean((triangle[1][2][0][0], triangle[1][2][0][1]), (triangle[1][0][0][0], triangle[1][0][0][1]))
						p = (D1+D2+D3)/2
						area_calc	=	math.sqrt(p*(p-D1)*(p-D2)*(p-D3))
						if (area/area_calc > low_threshold and area/area_calc < high_threshold):
							for i in range(0, 3):
								cv2.line(contours, (triangle[1][i][0][0], triangle[1][i][0][1]), (triangle[1][(i+1)%3][0][0], triangle[1][(i+1)%3][0][1]), (0,255,0), 2)
							canny_found += 1
					elif (len(approx) == 4):
						rect = cv2.minAreaRect(c)
						box = cv2.boxPoints(rect)
						box = np.int0(box)
						D1 = dist.euclidean((box[0][0], box[0][1]), (box[1][0], box[1][1]))
						D2 = dist.euclidean((box[1][0], box[1][1]), (box[2][0], box[2][1]))
						area_calc = D1*D2
						if (area/area_calc > low_threshold and area/area_calc < high_threshold):
							cv2.drawContours(contours,[box],0,(0,255,0),4)
							canny_found += 1
					elif (len(approx) == 5):
						# do nothing
						pass
					else:
						#cX = int((M["m10"] / M["m00"]) * ratio)
						#cY = int((M["m01"] / M["m00"]) * ratio)
						#text = str(M["m00"])
						#cv2.putText(contours, text, (cX, cY), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)
						(x,y),radius = cv2.minEnclosingCircle(c)
						center = (int(x),int(y))
						radius = int(radius)
						area_calc = radius*radius*math.pi
						if (area/area_calc > low_threshold and area/area_calc < high_threshold):
							cv2.rectangle(contours, (center[0] - 5, center[1] - 5), (center[0] + 5, center[1] + 5), (0, 128, 255), -1)
							cv2.circle(contours,center,radius,(0,255,0),4)
							canny_found += 1

		if thresh_enable:
			for c in thresh_cnts:
				M = cv2.moments(c)
				area = cv2.contourArea(c)
				peri = cv2.arcLength(c, True)
				approx = cv2.approxPolyDP(c, 0.04 * peri, True)
				#shape = sd.detect(c)
				if(area > min_area):
					if (len(approx) == 3):
						triangle = cv2.minEnclosingTriangle(c)
						D1 = dist.euclidean((triangle[1][0][0][0], triangle[1][0][0][1]), (triangle[1][1][0][0], triangle[1][1][0][1]))
						D2 = dist.euclidean((triangle[1][1][0][0], triangle[1][1][0][1]), (triangle[1][2][0][0], triangle[1][2][0][1]))
						D3 = dist.euclidean((triangle[1][2][0][0], triangle[1][2][0][1]), (triangle[1][0][0][0], triangle[1][0][0][1]))
						p = (D1+D2+D3)/2
						area_calc	=	math.sqrt(p*(p-D1)*(p-D2)*(p-D3))
						if (area/area_calc > low_threshold and area/area_calc < high_threshold):
							for i in range(0, 3):
								cv2.line(contours, (triangle[1][i][0][0], triangle[1][i][0][1]), (triangle[1][(i+1)%3][0][0], triangle[1][(i+1)%3][0][1]), (0,255,0), 2)
							thresh_found += 1
					elif (len(approx) == 4):
						rect = cv2.minAreaRect(c)
						box = cv2.boxPoints(rect)
						box = np.int0(box)
						D1 = dist.euclidean((box[0][0], box[0][1]), (box[1][0], box[1][1]))
						D2 = dist.euclidean((box[1][0], box[1][1]), (box[2][0], box[2][1]))
						area_calc = D1*D2
						if (area/area_calc > low_threshold and area/area_calc < high_threshold):
							cv2.drawContours(contours,[box],0,(0,255,0),4)
							thresh_found += 1
					elif (len(approx) == 5):
						# do nothing
						pass
					else:
						#cX = int((M["m10"] / M["m00"]) * ratio)
						#cY = int((M["m01"] / M["m00"]) * ratio)
						#text = str(M["m00"])
						#cv2.putText(contours, text, (cX, cY), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)
						(x,y),radius = cv2.minEnclosingCircle(c)
						center = (int(x),int(y))
						radius = int(radius)
						area_calc = radius*radius*math.pi
						if (area/area_calc > low_threshold and area/area_calc < high_threshold):
							cv2.rectangle(contours, (center[0] - 5, center[1] - 5), (center[0] + 5, center[1] + 5), (0, 128, 255), -1)
							cv2.circle(contours,center,radius,(0,255,0),4)
							thresh_found += 1

		if (canny_found or thresh_found):
			timestr = time.strftime("%Y%m%d-%H%M%S")
			#name = "frame%s.jpg"%timestr
			#cv2.imwrite(name, contours)

		#cv2.imshow("contours", contours)
		return contours