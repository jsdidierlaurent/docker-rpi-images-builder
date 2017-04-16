build-rpi-influxdb:
	@chmod +x build-and-push.sh ; ./build-and-push.sh rpi-influxdb
build-rpi-grafana:
	@chmod +x build-and-push.sh ; ./build-and-push.sh rpi-grafana
build-rpi-jenkins:
	@chmod +x build-and-push.sh ; ./build-and-push.sh rpi-jenkins
build-rpi-jenkins-jnlp-slave:
	@chmod +x build-and-push.sh ; ./build-and-push.sh rpi-jenkins-jnlp-slave
build-rpi-jenkins-ssh-slave:
	@chmod +x build-and-push.sh ; ./build-and-push.sh rpi-jenkins-ssh-slave
build: build-rpi-influxdb build-rpi-grafana build-rpi-jenkins-jnlp-slave build-rpi-jenkins-ssh-slave