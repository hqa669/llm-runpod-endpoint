FROM nvcr.io/nvidia/pytorch:24.01-py3

WORKDIR /app

# Install vLLM
RUN pip install --upgrade pip \
 && pip install vllm==0.4.2

# Optional but recommended
ENV HF_HUB_ENABLE_HF_TRANSFER=1

# ✅ COPY your runtime files into the image
COPY start.sh .
COPY healthcheck.py .

# ✅ Make sure start.sh is executable
RUN chmod +x start.sh

EXPOSE 8000

CMD ["./start.sh"]
