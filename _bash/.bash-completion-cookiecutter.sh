
CC_DIR="${HOME}/.cookiecutters"

_cookiecutters_completion()
{
    local cur prev opts
    prev=${COMP_WORDS[COMP_CWORD-1]}
    cur=`_get_cword`
    if [[ "$cur" == -* ]]; then
        COMPREPLY=( $( compgen -W '-h --help -V --version -v --verbose --no-input -c --checkout' -- "$cur" ) )
    elif [[ "$cur" == /* || "$cur" == .* ]]; then
        COMPREPLY=( $( compgen -o plusdirs -f -X  -- "$cur" ) )
    else
        APPS=`for f in $CC_DIR/*; do echo "$f"; done | command \sort`
        COMPREPLY=( $( compgen -W '$APPS' -- "$cur" ) )
    fi

}


complete -o filenames -F _cookiecutters_completion cookiecutter

