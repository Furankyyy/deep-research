# app.py
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from run import run_deep_research

app = FastAPI()

class RunRequest(BaseModel):
    text: str

class RunResponse(BaseModel):
    output: str

@app.post("/run", response_model=RunResponse)
async def run_script(request: RunRequest):
    try:
        # Run the script with the input text and capture the output
        result = run_deep_research(request.text)
        return RunResponse(output=result)
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))