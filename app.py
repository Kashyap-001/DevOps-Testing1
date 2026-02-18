from fastapi import FastAPI 

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello1": "W0r1d"}
