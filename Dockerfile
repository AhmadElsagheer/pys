FROM ubuntu

WORKDIR /app

RUN apt update -y && apt install -y python3 python3-pip

COPY requirements.txt . 

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 80

CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port",  "80"]
