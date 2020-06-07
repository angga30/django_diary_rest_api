FROM python:3
WORKDIR /app

RUN apt-get install gcc 
COPY requirement.txt .
RUN pip3 install --no-cache-dir -r requirement.txt
RUN pip3 install gunicorn
COPY . .
CMD ["bash"]