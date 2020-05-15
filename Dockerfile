FROM python:stretch

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install -r requirements.text

EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", "0.0.0.0:8080" "main:APP"]