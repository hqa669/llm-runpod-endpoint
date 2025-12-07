FROM nvcr.io/nvidia/pytorch:24.01-py3

WORKDIR /app

RUN pip install --upgrade pip \
 && pip install vllm==0.4.2

# Optional but recommended for fast HF downloads
ENV HF_HUB_ENABLE_HF_TRANSFER=1

EXPOSE 8000

CMD ["bash", "start.sh"]
