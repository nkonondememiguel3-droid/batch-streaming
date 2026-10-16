#maybe you should use the --network=host when running docker.

from astral/uv:python3.13-alpine

workdir /usr/src/app

env UV_COMPILE_BYTECODE=1 \
  UV_LINK_MODE=copy \
  PATH="/usr/src/app/.venv/bin:$PATH"

# install the dependencies
copy pyproject.toml uv.lock ./
run uv sync --locked --no-dev --no-install-project

# copy the source and install the project
copy . .
run uv sync --locked --no-dev

cmd [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]

