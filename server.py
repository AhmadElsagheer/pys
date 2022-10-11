from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return { "message": "Hello! I am a python server" }

# Run in venv as
# uvicorn server:app --reload
