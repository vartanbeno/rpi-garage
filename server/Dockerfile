FROM arm32v7/python:3-jessie

WORKDIR /usr/src
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
RUN chmod +x server.py

CMD ["./server.py"]
