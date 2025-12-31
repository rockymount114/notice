FROM python:3.12-slim

WORKDIR /app
COPY . .

# Use UV (your preferred tool) or pip
RUN pip install fpdf2 flask gunicorn

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
