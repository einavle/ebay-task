
FROM python:3.7-alpine
RUN mkdir /app
COPY prometheus-client.py /app
WORKDIR /app
RUN pip install prometheus-client
CMD ["python", "prometheus-client.py"]
