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