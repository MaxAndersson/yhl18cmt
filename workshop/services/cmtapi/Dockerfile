FROM python:3-alpine
ADD requirements.txt /app/requirements.txt
WORKDIR /app/
RUN pip install -r requirements.txt
EXPOSE 8080
COPY . /app
CMD ["python", "app.y"]
