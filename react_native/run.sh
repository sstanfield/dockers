docker run \
	--user sstanf \
	-it \
	--rm \
	--net host \
	-v /home/sstanf/work/:/home/sstanf/work/ \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=unix$DISPLAY \
	-v /dev/bus/usb:/dev/bus/usb \
	--privileged \
	--name react_native \
	sstanf/react_native \
	/bin/bash

#	--cap-drop all
#	--device /dev/usb \
