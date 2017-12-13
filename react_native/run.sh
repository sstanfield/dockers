export VOLUMES="-v /home/sstanf/work/:/home/sstanf/work/ -v /data/sstanf/react_home/:/home/sstanf/ -v /tmp/.X11-unix:/tmp/.X11-unix -v /dev/bus/usb:/dev/bus/usb"

if [ -n $SSH_AUTH_SOCK ]; then
	export VOLUMES="$VOLUMES -v $SSH_AUTH_SOCK:/.ssh.agent"
fi

docker run \
	--user sstanf \
	-it \
	--rm \
	--net host \
	--hostname REACT-NATIVE \
	-e DISPLAY=unix$DISPLAY \
	-e SSH_AUTH_SOCK=/.ssh.agent \
	--workdir /home/sstanf \
	$VOLUMES \
	--privileged \
	--name react_native \
	sstanf/react_native \
	/bin/bash

