FROM python:3.10.0a6-alpine3.13

RUN pip install pandas sqlalchemy psycopg2-binary

WORKDIR /app

COPY . .

ENTRYPOINT [ "python", "ingest.py" ]