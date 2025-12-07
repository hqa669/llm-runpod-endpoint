# LLM RunPod Endpoint

This repository deploys a standalone LLM inference endpoint using vLLM.

## Model
- Llama-3.1-8B-Instruct

## What this service does
✅ Loads an LLM  
✅ Exposes an OpenAI-compatible API  
✅ Handles pure inference  

## What this service does NOT do
❌ RAG  
❌ Validation  
❌ Business logic  
❌ Domain checks  

Those belong in a separate orchestrator API.

---

## Endpoints

### List models
GET /v1/models

### Chat completion
POST /v1/chat/completions

Example:
```json
{
  "model": "meta-llama/Llama-3.1-8B-Instruct",
  "messages": [
    {"role": "system", "content": "You are a helpful assistant."},
    {"role": "user", "content": "Hello!"}
  ],
  "temperature": 0.3,
  "max_tokens": 256
}
