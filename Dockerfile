FROM python:3.7

WORKDIR /workspace
ADD . /workspace

RUN pip install -r requirements.txt

CMD [ "python3" , "/workspace/app.py" ]

RUN chown -R 42420:42420 /workspace

ENV HOME=/workspace
