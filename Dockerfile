FROM python:3.5.1-alpine

EXPOSE 8000

COPY . /usr/src/app
WORKDIR /usr/src/app

RUN pip install -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:8000", "-w", "8", "httpbin:app"]
