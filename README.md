# Switch WebRTC Signaling

## 準備
```sh
$ git clone git@github.com:yuki7070/switch-webrtc-signaling.git --recursive
$ docker build -t switch-webrtc-signaling .
```

## 使い方
```sh
$ docker run -d --name switch-webrtc-signaling-container -p 13000:3000 switch-webrtc-signaling
```
