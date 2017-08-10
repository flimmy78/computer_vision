# import the necessary packages
from Detector import Detector
import numpy as np
import argparse
import cv2

cap = cv2.VideoCapture(0)

cd = Detector()

# initialize the FourCC, video writer, dimensions of the frame, and
# zeros array
fourcc = cv2.VideoWriter_fourcc('M', 'J', 'P', 'G')
writer = None
(h, w) = (None, None)

while(True):
	ret, frame = cap.read()

	output = cd.detect(frame.copy())

	cv2.imshow("output", output)

	if writer is None:
		(h, w) = output.shape[:2]
		writer = cv2.VideoWriter("example.avi", fourcc, 10, (w, h), True)

	#writer.write(output)

	if (cv2.waitKey(1) & 0xFF) == ord('q'):
		break

# When everything done, release the capture
cap.release()
cv2.destroyAllWindows()