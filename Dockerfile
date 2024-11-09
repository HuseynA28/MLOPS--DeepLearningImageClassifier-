FROM python:3.13
WORKDIR /usr/local/app
COPY requiremenst.in ./
RUN pip install pip-tools  && \
    pip compile --upgrade requiremenst.in &&\
    pip install --no-cache-dir -r requiremenst.txt