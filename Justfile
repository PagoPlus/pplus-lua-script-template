[private]
default:
  @just --list

# source_files := `find src -name '*.lua'`

# Clean up compiled files
clean:
  rm -fr build
  rm -f types/types.lua

# Download latest types
fetch-types:
  curl --silent -o "types/types.lua" -z "types/types.lua" "https://pagoplus.fly.dev/scripts/types.lua"

# Install lua dependencies
deps:
  luarocks --lua-version 5.3 --local make

# Run the linter
lint: deps fetch-types
  luacheck src/

# Compile the project into a single file for deployment
build: clean deps fetch-types
  npx luacompact build

# Compile and re-compile when a file changes
watch: build
  npx luacompact build --watch

# Execute tests
test:
  busted src/main_test.lua