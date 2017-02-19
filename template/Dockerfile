FROM ubuntu:latest
MAINTAINER Hunter Lightman "hunter.lightman@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev rubygems build-essential postgresql
RUN apt-get install -y git
RUN gem install sass
RUN git clone https://github.com/hack4impact/flask-base.git /m4a
WORKDIR /m4a
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
RUN python3 manage.py recreate_db
RUN python3 manage.py setup_dev
ENTRYPOINT ["honcho"]
CMD ["start", "-f", "Local"]

