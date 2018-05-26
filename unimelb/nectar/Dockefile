FROM ubuntu:16.04

RUN echo 'export PS1="$ "' >> /root/.bashrc

RUN apt-get update && \
    apt-get install -y make \
    	    gcc \
    	    libssl-dev \
	    gdb \
	    valgrind