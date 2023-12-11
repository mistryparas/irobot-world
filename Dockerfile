FROM anapsix/alpine-java
ADD ./pkg/irobot-project.jar /irobot-project.jar
ADD ./run.sh /run.sh
RUN chmod a+x /run.sh
EXPOSE 8080:8080
CMD /run.sh
