import requests

def curl_nginx(request):
    response = requests.get("http://localhost:8080")
    return f"CURL response: {response.text}"
