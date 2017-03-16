FROM ubuntu:16.04

#to build this dockerfile first ensure that it is named "Dockerfile"
#make sure that a directory "resources" that contains the file "go-wrapper" is also present in the same directory as "Dockerfile"
#docker build -t {Your dockerhub username}/{dockerhub repo name}:{tag} .

#$ docker run -v /Users/$USER/go/src/github.com/{GITHUB USER}/libstorage/:/go/src/github.com/emccode/libstorage/ -w=/go/src/github.com/emccode/libstorage/ akiraw95/ubuntugoglide

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
		python-dev \
		python-pip \
		libxml2-dev \
		libxslt1-dev \
		zlib1g-dev \
		libffi-dev \
		libssl-dev \
		nano
RUN pip install scrapy
		
#ENV SCRAPYPROJ /scrapy
#ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

#RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
#WORKDIR $GOPATH

#ADD docker_resources/go-wrapper /usr/local/bin/

CMD ["/bin/bash"]
