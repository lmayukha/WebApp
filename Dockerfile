FROM python:3.8-slim-buster
WORKDIR /app
COPY requirements.txt /app
COPY todo_app /app
RUN pip3 install -r requirements.txt

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
