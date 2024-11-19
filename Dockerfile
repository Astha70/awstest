FROM python:3.8-alpine

WORKDIR /app

COPY sample.py /app/

ENTRYPOINT ["python"]

CMD ["python", "sample.py"]
