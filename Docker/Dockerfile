FROM openjdk:12-jdk-alpine
LABEL maintainer="Bilel I <bilel.brahim@gmail.com>"
ENV REFRESHED_AT 2018-12-25
EXPOSE 8080
RUN set -ex \
  && apk update \
  && apk upgrade \
  && apk add curl jq
RUN mkdir /storefront
COPY /build/libs/*.jar /storefront/accounts.jar
WORKDIR /storefront
CMD ["java", "-jar", "-Djava.security.egd=file:/dev/./urandom", "-Dspring.profiles.active=gke", "accounts.jar"]
