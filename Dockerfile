# Web-app to use as DevOps course's project
# Linux x64
FROM python:3.7-alpine

#Add all files at the project build context to "code" directory
ADD . /code
#config the working directory to be "code" directory
WORKDIR /code

#install required packages
RUN pip install -r requirements.txt

#config the command to run when the container is started
CMD ["python", "main.py"]
