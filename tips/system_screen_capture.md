# Capture screen shot in Mac

## 1. System default screen capture 

### 1.1 capture the entire desktop
> Command-Shift-3

The screen shot will be automatically saved as a PNG file on your desktop


### 1.2 capture a portion of the desktop
> Command-Shift-4

A cross-hair cursor will appear and you can click and drag to select the area you wish to capture. When you release the mouse button, the screen shot will be automatically saved as a PNG file on your desktop. (The file is saved as PDF in Mac OS 10.3 and earlier.)

## 2. change default behavior of system capture

### 2.1 改抓图默认路径
> defaults write com.apple.screencapture location /Users/用户名/Pictures/ScreenShots

其中“/Users/用户名/Pictures/ScreenShots”为用户自定义路径，可以修改替换成自己的路径即可，

### 2.2 修改抓图的默认格式就简单了： 
> defaults write com.apple.screencapture type jpg

Mac支持多种格式：png、gif、jpg、pdf都可以


### 2.3 restart UI server to make the changes effective
> killall SystemUIServer