FROM python:2

COPY requirements.txt /root/requirements.txt
RUN pip install -r /root/requirements.txt
