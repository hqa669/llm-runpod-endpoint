import requests

BASE_URL = "http://localhost:8000"

def check():
    r = requests.get(f"{BASE_URL}/v1/models", timeout=5)
    r.raise_for_status()
    print("✅ LLM endpoint is healthy")
    print(r.json())

if __name__ == "__main__":
    check()
