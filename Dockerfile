FROM python:3.8.19-alpine3.20
RUN pip install --upgrade pip setuptools  -i http://pypi.doubanio.com/simple/ --trusted-host pypi.doubanio.com 
WORKDIR /app
COPY weather.py  /app/
RUN  pip install  requests  -i http://pypi.doubanio.com/simple/ --trusted-host pypi.doubanio.com

ENTRYPOINT ["python3", "weather.py"]
