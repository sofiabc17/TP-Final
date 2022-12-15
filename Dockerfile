FROM ubuntu

MAINTAINER Sofia Brizuela Cipolletti

COPY ./ /TP-Final

WORKDIR ./TP-Final

RUN chmod +777 *.sh *.txt

ENTRYPOINT ./menu.sh *.txt
