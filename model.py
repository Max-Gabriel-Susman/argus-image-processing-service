import cv2
from ultralytics import YOLO

# Load model
model = YOLO('path/to/your/custom_model.pt')

# Capture RTMP stream
cap = cv2.VideoCapture('rtmp://localhost/live/stream_name')
while cap.isOpened():
    ret, frame = cap.read()
    if ret:
        # Make predictions
        results = model(frame)
        results.show()  # Display the frame with detections
    if cv2.waitKey(1) & 0xFF == ord('q'):
        break
cap.release()
cv2.destroyAllWindows()