 
 
FROM alpine

RUN wget https://github.com/iovxw/rssbot/releases/download/v1.4.4/rssbot-v1.4.4-linux.zip && unzip rssbot-v1.4.4-linux.zip -d /opt/ && rm ./rssbot-v1.4.4-linux.zip && touch /etc/rssfile

CMD /opt/rssbot /etc/rssfile $TOKEN
