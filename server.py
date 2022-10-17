from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return { "message": "Hello! I am a python server :D" }

# Run in venv as
# uvicorn server:app --reload
