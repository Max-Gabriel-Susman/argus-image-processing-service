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

* this guide is a great resource on basically everything for this project