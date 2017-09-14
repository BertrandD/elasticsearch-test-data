FROM python:3

RUN apt-get update

RUN apt-get install gcc

RUN pip install --no-cache-dir tornado numpy

ENV es_url http://127.0.0.1:9200

COPY es_test_data.py ./

CMD [ "sh", "-c", "python ./es_test_data.py --es_url=${es_url}" ]
