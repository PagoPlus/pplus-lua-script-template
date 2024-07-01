[private]
default:
  @just --list

# Clean up compiled files
clean:
	rm -r build

# Download latest types
fetch-types:
  echo harow

# Install lua dependencies
deps:
  luarocks --lua-version 5.3 --local make

# Compile the project into a single file for deployment
build: clean deps fetch-types
  npx luacompact build

# Compile and re-compile when a file changes
watch: build
  npx luacompact build --watch

