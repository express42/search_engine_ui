FROM python:3.6-alpine
WORKDIR app
ADD . .

ENV MONGO mongo_host
ENV MONGO_PORT mongo_port
ENV FLASK_APP ui.py
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
