import cv2
import sys

image_path = sys.argv[1]

img = cv2.imread(image_path)

if img is None:
print("Error: Unable to load image.")
exit()

gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)

face_cascade = cv2.CascadeClassifier(
cv2.data.haarcascades + 'haarcascade_frontalface_default.xml'
)

faces = face_cascade.detectMultiScale(gray, 1.3, 5)

print("Faces detected:", len(faces))
