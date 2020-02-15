FROM python:3.5

WORKDIR /app

COPY requirements-dev.txt /app/
RUN pip install -r requirements-dev.txt

COPY . /app/
CMD python setup.py install
CMD python examples/echobot.py