FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_APP=main.py

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=8080"]

# FROM python:3.8-slim-buster
# 
# WORKDIR /app
# 
# COPY requirements.txt
# 
# RUN pip install --no-cache-dir -r requirements.txt
# 
# COPY ..
# 
# EXPOSE 5000
# 
# CMD ["python", "main.py"]


# lynx http://127.0.0.1:8080/hello/lukasz