_pre_commit_hooks() {
    local hooks
    if [[ -f .pre-commit-config.yaml ]]; then
        hooks=($(awk '/id:/ {print $3}' .pre-commit-config.yaml))
    fi
    compadd -a hooks
}

_pre_commit() {
    local -a subcommands
    subcommands=(run install uninstall autoupdate gc clean)
    _arguments \
        "1: :->subcmds" \
        "2: :->hooks"
    
    case $state in
        subcmds)
            compadd "${subcommands[@]}"
            ;;
        hooks)
            if [[ $words[2] == "run" ]]; then
                _pre_commit_hooks
            fi
            ;;
    esac
}

compdef _pre_commit pre-commit
