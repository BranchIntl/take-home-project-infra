FROM python:3.7-alpine
COPY requirements.txt /tmp
RUN pip install -qr /tmp/requirements.txt
RUN adduser -D appuser
WORKDIR /home/appuser
USER appuser
COPY app app
EXPOSE 8000
CMD ["python3", "./app/server.py"]
