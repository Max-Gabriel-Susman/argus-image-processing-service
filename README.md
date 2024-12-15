# Argus Image Processing Service 

The Argus Image Processing Service provides object detection for the Argus Stream Engine Service.

## Setup 

```
pip install ultralytics pyrtmp
```

MacOS: 
```
brew install nginx-rtmp-module
```

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