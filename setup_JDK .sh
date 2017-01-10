#! /bin/bash

CURDIR=$(cd "$(dirname "$0")"; pwd)

JAVA_JDK_PATH=/usr/jdk
JAVA_VERSIONNAME=jdk1.8.0_65
JAVA_ZIPNAME=jdk-8u65-linux-x64.tar.gz
JAVA_SETUP_LINK_PATH=$JAVA_JDK_PATH/java

echo "===============  setup jdk  ==============="
sudo mkdir $JAVA_JDK_PATH
sudo tar zxvf $CURDIR/$JAVA_ZIPNAME -C $JAVA_JDK_PATH
sudo ln -s $JAVA_JDK_PATH/$JAVA_VERSIONNAME $JAVA_SETUP_LINK_PATH

sudo echo -e "" >> /etc/profile
sudo echo -e "export JAVA_HOME=$JAVA_SETUP_LINK_PATH" >> /etc/profile
sudo echo -e "export JRE_HOME=\${JAVA_HOME}/jre" >> /etc/profile
sudo echo -e "export CLASSPATH=.:\${JAVA_HOME}/lib:\${JRE_HOME}/lib" >> /etc/profile
sudo echo -e "export PATH=\${JAVA_HOME}/bin:\$PATH" >> /etc/profile
sudo source /etc/profile
sudo . /etc/profile

sudo echo -e "" >> ~/.bashrc
sudo echo -e "export JAVA_HOME=$JAVA_SETUP_LINK_PATH" >> ~/.bashrc
sudo echo -e "export JRE_HOME=\${JAVA_HOME}/jre" >> ~/.bashrc
sudo echo -e "export CLASSPATH=.:\${JAVA_HOME}/lib:\${JRE_HOME}/lib" >> ~/.bashrc
sudo echo -e "export PATH=\${JAVA_HOME}/bin:\$PATH" >> ~/.bashrc
sudo source ~/.bashrc

echo -e "" >> ~/.bashrc
echo -e "export JAVA_HOME=$JAVA_SETUP_LINK_PATH" >> ~/.bashrc
echo -e "export JRE_HOME=\${JAVA_HOME}/jre" >> ~/.bashrc
echo -e "export CLASSPATH=.:\${JAVA_HOME}/lib:\${JRE_HOME}/lib" >> ~/.bashrc
echo -e "export PATH=\${JAVA_HOME}/bin:\$PATH" >> ~/.bashrc
source ~/.bashrc