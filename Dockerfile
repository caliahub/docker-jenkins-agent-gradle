FROM caliahub/jenkins-agent:4.3

MAINTAINER Calia "cnboycalia@gmail.com"

ENV PATH=$PATH:/usr/local/gradle/bin \
	GRADLE_VERSION=5.6

RUN cd /usr/local \
  && wget https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip \
  && unzip gradle-${GRADLE_VERSION}-bin.zip \
  && mkdir -p gradle/init.d \
  && mv gradle-${GRADLE_VERSION}/bin gradle/ \
  && mv gradle-${GRADLE_VERSION}/lib gradle/ \
  && rm -rf gradle-${GRADLE_VERSION}* gradle/bin/gradle.bat