FROM python:3.12-slim
COPY . /app
WORKDIR /app
RUN pip install fpdf2 flask
EXPOSE 5000
CMD ["python", "app.py"]
