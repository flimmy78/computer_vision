# import the necessary packages
from pyimagesearch.shapedetector import ShapeDetector
import numpy as np
import argparse
import imutils
import cv2
import math
 
# construct the argument parser and parse the arguments
ap = argparse.ArgumentParser()
ap.add_argument("-i", "--image", required = True, help = "Path to the image")
args = vars(ap.parse_args())

# load the image, clone it for output, and then convert it to grayscale
image = cv2.imread(args["image"])
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
cv2.imshow("Canny", canny)

######
# apply GuassianBlur to reduce noise. medianBlur is also added for smoothening, reducing noise.
# Adaptive Guassian Threshold is to detect sharp edges in the Image. For more information Google it.
thresh = cv2.adaptiveThreshold(canny,255,cv2.ADAPTIVE_THRESH_GAUSSIAN_C,cv2.THRESH_BINARY,11,9)
#cv2.imshow("thresh", thresh)

kernel = np.ones((5,5),np.uint8)
thresh = cv2.erode(thresh,kernel,iterations = 1)
thresh = cv2.dilate(thresh,kernel,iterations = 1)
img_size = thresh.shape
cv2.imshow("thresh", thresh)

# detect circles in the image
#circles = cv2.HoughCircles(thresh, cv2.HOUGH_GRADIENT, 1.1, 100)
#circles = cv2.HoughCircles(gray, cv2.HOUGH_GRADIENT, 1, img_size[0]/10, param1=30, param2=100, minRadius=0, maxRadius=0)
#circles = cv2.HoughCircles(thresh,cv2.HOUGH_GRADIENT,1.1,img_size[0]/10,param1=100,param2=100,minRadius=0,maxRadius=0)
######

#resized = imutils.resize(canny, width=300)
#ratio = canny.shape[0] / float(resized.shape[0])
ratio = 1

(_, canny_cnts, _) = cv2.findContours(canny.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
(_, thresh_cnts, _) = cv2.findContours(thresh.copy(), cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
#print("I count {} contours in this image".format(len(thresh_cnts)))
contours = image.copy()
cv2.drawContours(contours, thresh_cnts, -1, (0, 255, 0), 2)
cv2.imshow("all contours", contours)

sd = ShapeDetector()
contours = image.copy()

canny_found = 0
# loop over the contours
for c in canny_cnts:
	# compute the center of the contour, then detect the name of the
	# shape using only the contour
	M = cv2.moments(c)
	peri = cv2.arcLength(c, True)
	approx = cv2.approxPolyDP(c, 0.08 * peri, True)
	shape = sd.detect(c)
	if(M["m00"] > 10):
		#if (len(approx) == 3):
			#triangle = cv2.minEnclosingTriangle(c)
			#for i in range(0, 3):
				#cv2.line(contours, (triangle[1][i][0][0], triangle[1][i][0][1]), (triangle[1][(i+1)%3][0][0], triangle[1][(i+1)%3][0][1]), (0,0,255), 2)
			#canny_found += 1
		if (len(approx) == 4):
			x,y,w,h = cv2.boundingRect(c)
			#cv2.rectangle(contours,(x,y),(x+w,y+h),(0,255,0),2)
			canny_found += 1
		if (len(approx) > 5 or len(approx) < 3):
			print "------"
			#cv2.drawContours(contours, c, -1, (0, 255, 0), 2)
			cX = int((M["m10"] / M["m00"]) * ratio)
			cY = int((M["m01"] / M["m00"]) * ratio)
			print len(approx)
			print cX,cY
			print M["m00"]
			text = str(M["m00"])
			#cv2.putText(contours, text, (cX, cY), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)
			(x,y),radius = cv2.minEnclosingCircle(c)
			center = (int(x),int(y))
			radius = int(radius)
			print radius
			print center
			area_calc = radius*radius*3.14
			if (M["m00"]/area_calc > 0.1):
				cv2.rectangle(contours, (center[0] - 5, center[1] - 5), (center[0] + 5, center[1] + 5), (0, 128, 255), -1)
				#cv2.circle(contours,center,radius,(0,0,255),4)
				canny_found += 1

thresh_found = 0
for c in thresh_cnts:
	# compute the center of the contour, then detect the name of the
	# shape using only the contour
	M = cv2.moments(c)
	peri = cv2.arcLength(c, True)
	approx = cv2.approxPolyDP(c, 0.04 * peri, True)
	shape = sd.detect(c)
	if(M["m00"] > 10):
		if (len(approx) == 3):
			triangle = cv2.minEnclosingTriangle(c)
			print "---"
			print "triangle"
			print M["m00"]
			print triangle[0]
			area = cv2.contourArea(c)
			print area
			print "---"
			if (M["m00"]/triangle[0] > 0.5):
				for i in range(0, 3):
					cv2.line(contours, (triangle[1][i][0][0], triangle[1][i][0][1]), (triangle[1][(i+1)%3][0][0], triangle[1][(i+1)%3][0][1]), (0,255,0), 2)
				thresh_found += 1
		if (len(approx) == 4):
			x,y,w,h = cv2.boundingRect(c)
			#cv2.rectangle(contours,(x,y),(x+w,y+h),(0,255,0),2)
			thresh_found += 1
		if (len(approx) > 5 or len(approx) < 3):
			print "------"
			#cv2.drawContours(contours, c, -1, (0, 255, 0), 2)
			cX = int((M["m10"] / M["m00"]) * ratio)
			cY = int((M["m01"] / M["m00"]) * ratio)
			print len(approx)
			print cX,cY
			print M["m00"]
			text = str(M["m00"])
			#cv2.putText(contours, text, (cX, cY), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)
			(x,y),radius = cv2.minEnclosingCircle(c)
			center = (int(x),int(y))
			radius = int(radius)
			print radius
			print center
			area_calc = radius*radius*3.14
			if (M["m00"]/area_calc > 0.5):
				cv2.rectangle(contours, (center[0] - 5, center[1] - 5), (center[0] + 5, center[1] + 5), (0, 128, 255), -1)
				#cv2.circle(contours,center,radius,(0,255,0),4)
				thresh_found += 1

if (canny_found or thresh_found):
	cv2.imshow("output", contours)

cv2.waitKey(0)