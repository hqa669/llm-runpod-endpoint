FROM nvcr.io/nvidia/pytorch:24.01-py3

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip \
 && pip install -r requirements.txt

ENV HF_HUB_ENABLE_HF_TRANSFER=1

COPY start.sh .
COPY healthcheck.py .
RUN chmod +x start.sh

EXPOSE 8000
CMD ["./start.sh"]
