# Don't Remove Credit @VJ_Botz
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y && apt install -y git

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir -U pip && pip3 install --no-cache-dir -U -r /requirements.txt

WORKDIR /VJ-Post-Search-Bot
COPY . /VJ-Post-Search-Bot

EXPOSE 8080

CMD ["sh", "-c", "gunicorn -b 0.0.0.0:8080 app:app & python3 main.py"]
