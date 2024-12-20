# Argus Image Processing Service 

The Argus Image Processing Service provides object detection for the Argus Stream Engine Service.

## Setup 

pip install:
```
pip install ultralytics pyrtmp
```

install nginx prerequisites
```
brew install pcre zlib openssl
```

curl -O https://nginx.org/download/nginx-1.25.2.tar.gz
tar -xzvf nginx-1.25.2.tar.gz
cd nginx-1.25.2


Ubuntu: 
```
sudo apt-get install libnginx-mod-rtmp
```

## Usage 

start the service:
```
python main.py
```

stream to the service: 
```
make stream
```

## Resources

* this guide is a great resource on basically everything for this project: https://github.com/orgs/ultralytics/discussions/12839

Certainly! Setting up a live stream with RTMP and NGINX for your DJI drone and integrating it with your custom YOLOv8 model for real-time detection sounds like an exciting project! Here’s a brief guide to get you started:

RTMP Server Setup with NGINX:

Install NGINX and the RTMP module. You can find a good tutorial on how to do this here.
Configure NGINX to receive the RTMP stream from your drone. You'll need to modify the nginx.conf file to include the RTMP module settings.
Integrate YOLOv8 for Real-Time Detection:

Use the Python cv2 library to capture video frames from the RTMP stream.
Load your trained YOLOv8 model and pass the video frames to it for detection.
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
Developing a Web App with Flask:

Flask is a great choice for setting up a web server. You can start by creating a basic Flask app that displays the video stream.
Integrate the Flask app with the detection model to display the processed frames.
Check out the Flask documentation for basic setup and this tutorial for streaming video through Flask.
These steps should help you set up your project. For specific issues or errors, feel free to ask for more detailed help! Good luck with your real-time detection system! 🚀

# Argus Media Service

The Argus Media Service manages and transcodes stream data on the Argus platform

## Setup 


## Live Stream

docker-compose build 

docker compose up 

open OBS

## Stream Key

## Transcode RTMP to HLS