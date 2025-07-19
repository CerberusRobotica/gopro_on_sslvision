# gopro_on_sslvision
A script to use a GoPro HERO 10 Black as a webcam on linux and with compability for [SSL-Vision](https://github.com/RoboCup-SSL/ssl-vision) on the RoboCup SSL competition.

First, to install:

	cd gopro_as_webcam_on_linux_modified && sudo ./install.sh

And:

	chmod +x Install_dependencies.sh && ./Install_dependencies.sh

Turn on your GoPro and connect the USB. A "USB CONNECTED" must be showing on your webcam's screen.

Second, starts the gopro as webcam:

	./start_gopro.sh

Finally, starts the capture(1080p or 720p):

	./capture_1080p.sh
 
 	./capture_720p.sh

Credits to [jschmid1](https://github.com/jschmid1/gopro_as_webcam_on_linux?tab=readme-ov-file)
