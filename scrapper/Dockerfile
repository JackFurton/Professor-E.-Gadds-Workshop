FROM python:latest

WORKDIR /app

ADD . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

ARG API_KEY
ARG API_KEY=${API_KEY}

CMD ["python", "scrapper.py"]
