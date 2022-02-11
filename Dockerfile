FROM tiangolo/uvicorn-gunicorn-fastapi:python3.7
ENV PYTHONUNBUFFERED 1
WORKDIR /myfastapi
COPY ./requirements.txt .
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["uvicorn", "--host", "0.0.0.0", "--port", "8000", "app.main:app"]
