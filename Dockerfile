# Use an official Golang runtime as a parent image
FROM golang:latest

# Set the working directory to /go/src/app
WORKDIR /go/src/app


RUN git clone https://continuum-dipanjan-mazumder:13Chandana@github.com/ContinuumLLC/platform-common-lib.git
RUN git clone https://github.com/continuum-dipanjan-mazumder/POC.git
COPY . /go/src/app


RUN cd /go/src/app && ls

CMD go install POC && POC
