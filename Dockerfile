
FROM python:2.7

WORKDIR /app

ADD ./lib/          /app/
ADD ./headphones/   /app/
ADD ./init-scripts/ /app/
ADD ./data          /app/
ADD ./contrib/      /app/

ADD ./Headphones.py /app/
ADD ./config.ini    /app/
ADD ./setup.cfg     /app/

COPY ./requirements-dev.txt /app/requirements.txt
RUN pip install -r requirements.txt

EXPOSE 8181

ENTRYPOINT ["python", "Headphones.py"]