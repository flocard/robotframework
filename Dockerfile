FROM python:latest

LABEL description Robot Framework in Docker with Additional Libaries.

ENV ROBOT_HOME /opt/robot
RUN mkdir $ROBOT_HOME

#ENV TZ=Europe/Warsaw
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN ln -s /bin/bash /usr/bin/bash
#==============================
# imagemagick
#==============================
#RUN apt-get update &&  apt-get install -yqq \
#    imagemagick \
#    && rm -rf /var/lib/apt/lists/*

#==============================
# python
#==============================
RUN python --version
RUN python -m pip install --upgrade pip setuptools wheel 
RUN pip --version
#========================
# python dependencies
#========================
RUN pip install -U -r requests
RUN pip install -U -r robotframework
RUN pip install -U -r robotframework-selenium2library
RUN pip install -U -r robotframework-jsonlibrary
RUN pip install -U -r selenium
RUN pip install -U -r lxml
RUN pip install -U -r rstr
RUN pip install -U -r pyyaml
RUN pip install -U -r html2text
RUN pip install -U -r jsonpath
RUN pip install -U -r python-dateutil
RUN pip install -U -r jsonpath-ng

RUN robot --version || true
