# justfile (https://github.com/casey/just)

# use powershell on windows
set windows-powershell := true

# default
[private]
default:
    @{{ just_executable() }} --list --unsorted --justfile "{{ justfile() }}"

# lint various files
lint:
    docker run --rm --mount "type=bind,src={{ justfile_directory() }},dst=/tmp/lint" oxsecurity/megalinter:v9
