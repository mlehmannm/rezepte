# justfile (https://github.com/casey/just)

# use powershell on windows
set windows-powershell

# default
[private]
default:
    @{{ just_executable() }} --list --unsorted --justfile "{{ justfile() }}"

# start gemini-cli via docker in this directory
gemini-cli:
    docker run --interactive --network=host --rm --tty --mount "type=bind,src={{ justfile_directory() }},dst=/app" gemini-cli:latest

# lint various files
lint:
    docker run --rm --mount "type=bind,src={{ justfile_directory() }},dst=/tmp/lint" oxsecurity/megalinter:v9
