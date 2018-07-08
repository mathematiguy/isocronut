FROM python:2

RUN pip install \
	pybase64 \
	ConfigParser \
	simplejson \
	datetime

# RUN easy_install hashlib