from typing import Any
from fastapi import FastAPI


app: FastAPI = FastAPI()

@app.get( "/" )
async def root() -> dict[str, Any]:
    return {
        "message": "hello world"
    }

