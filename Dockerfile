# Using Python Slim-Buster
FROM vckyouuu/geezprojects:buster
# Geez-UserBot
#
RUN git clone -b Geez-UserBot https://github.com/MouseNymous/forkgeez /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/vckyou/Geez-UserBot/Geez-UserBot/requirements.txt

EXPOSE 80 443

# Finalization
CMD ["python3","-m","userbot"]
