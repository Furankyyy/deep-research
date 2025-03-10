FROM python:3.10

WORKDIR /app

COPY . .

COPY .env .env

RUN pip install -r requirements.txt

RUN pip install fastapi uvicorn

EXPOSE 8000

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]