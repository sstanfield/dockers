#!/bin/bash

# Set up PulseAudio Cookie if missing
if [ x"$(pax11publish -d)" = x ]; then
	start-pulseaudio-x11
fi
#docker run -it --rm \
docker run -it --rm \
	--net host \
	-v /etc/localtime:/etc/localtime:ro \
	-v /dev/shm:/dev/shm \
	-v /etc/machine-id:/etc/machine-id:ro \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-e DISPLAY=unix$DISPLAY \
	-v $HOME/DiveLogs:/home/sstanf/DiveLogs \
	--device /dev/snd \
	--device /dev/dri \
	--device /dev/video0 \
	--group-add $(getent group audio | cut -d: -f3) \
	--group-add $(getent group video | cut -d: -f3) \
	-e PULSE_SERVER=unix:${XDG_RUNTIME_DIR}/pulse/native \
	-e PULSE_COOKIE_DATA=`pax11publish -d | grep --color=never -Po '(?<=^Cookie: ).*'` \
	-e XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR} \
	-v ${XDG_RUNTIME_DIR}:${XDG_RUNTIME_DIR} \
	--name subsurface \
	--entrypoint /bin/bash \
	sstanf/subsurface2

	#--privileged \
	#--cap-drop all \
	#-v ${XDG_RUNTIME_DIR}/pulse/native:${XDG_RUNTIME_DIR}/pulse/native \
