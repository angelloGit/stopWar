FROM alpine
RUN apk add git py3-pip && git clone https://github.com/AlexTrushkovsky/NoWarDDoS && cd  NoWarDDoS && pip3 install -r requirements.txt
WORKDIR /NoWarDDoS
CMD python3 ./attack.py 500
