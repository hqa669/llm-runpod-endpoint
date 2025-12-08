#!/usr/bin/env bash


MODEL_NAME="Qwen/Qwen2.5-7B-Instruct"

# MODEL_NAME="meta-llama/Llama-3.1-8B-Instruct-AWQ"

echo "Starting vLLM with model: ${MODEL_NAME}"

python -m vllm.entrypoints.openai.api_server \
  --model ${MODEL_NAME} \
  --dtype float16 \
  --max-model-len 8192 \
  --gpu-memory-utilization 0.90 \
  --tensor-parallel-size 1
