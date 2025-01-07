STYLUA_OPTS := "-v"
LAZYVIM_BOOT := "./.tests"

MINIMAL_STARTAR := "minimal-init.lua"

dev:
  @echo "Launching nvim..."
  nvim -u {{ MINIMAL_STARTAR }} lua/config/lazy.lua

lint:
  @echo "linting..."
  stylua {{ STYLUA_OPTS }} $(pwd)

clean:
  @echo "Deleting LazyVim Loader..."
  yes | rm -r {{ LAZYVIM_BOOT }}

debug:
  @echo "Bootstrapping NeoVim..."
  nvim -u minimal-init.lua 
