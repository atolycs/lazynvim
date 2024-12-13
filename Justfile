STYLUA_OPTS := "-v"

lint:
  @echo "linting..."
  stylua {{ STYLUA_OPTS }} $(pwd)
