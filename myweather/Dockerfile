FROM python:3.9-alpine
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR usr/src/app

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev
#RUN apt-get update && apt-get install postgresql-dev gcc python3-dev musl-dev

RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN apk add libffi-dev
RUN pip install -r requirements.txt

COPY . .

#EXPOSE 5500
#
#CMD ["python", "manage.py", "runserver", "0.0.0.0:5500"]