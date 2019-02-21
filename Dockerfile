FROM python:3.6.3
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt && rm -rf /root/.cache && chmod +x entrypoint.sh

USER root

ENTRYPOINT ["/app/entrypoint.sh"]

