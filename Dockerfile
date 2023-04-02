FROM amazon/aws-lambda-python:3.8

# optional : pip update
RUN /var/lang/bin/python3.8 -m pip install --upgrade pip

# install git
RUN yum install git -y

RUN git clone https://github.com/HL7644/docker_test.git

# install packages
RUN pip install -r requirements.txt