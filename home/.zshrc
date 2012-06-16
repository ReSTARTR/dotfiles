# ADDITIONAL PATHS
export DEV_HOME=$HOME/dev
PATH=$DEV_HOME/local/bin:$PATH
PATH=$HOME/local/bin:$PATH

# Java
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/1.6.0/Home/
PATH=$JAVA_HOME/bin:$PATH

# Maven
export M2_HOME=/usr/share/maven
PATH=$M2_HOME/bin:$PATH
export MAVEN_OPTS="-noverify"
export MVN_HOME=/usr/local/share/apache-maven-2.2.1
PATH=$MVN_HOME/bin:$PATH

# Scala
export SCALA_HOME=$DEV_HOME/local/scala-2.9.1.final
PATH=$SCALA_HOME/bin:$PATH
export PLAY_HOME=/usr/local/Cellar/play/1.2.3
export AKKA_HOME=$DEV_HOME/local/akka-microkernel-1.1

# Android
export ANDROID_HOME=$DEV_HOME/local/android-sdk-mac_86
PATH=$ANDROID_HOME/tools:$PATH

PATH=/usr/local/sbin:$PATH
PATH=/opt/local/sbin:$PATH
PATH=/opt/local/bin:$PATH
