#!/bin/bash
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_45
export PATH=$JAVA_HOME/bin:$PATH

if [ ! -d "$JAVA_HOME" ]; then
	echo "jdk missing"
	exit
fi

mvn clean install -Dmaven.test.skip=true
