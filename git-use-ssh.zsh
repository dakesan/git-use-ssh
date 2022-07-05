function gitusessh() {
    export git_root=$(git rev-parse --show-toplevel)

    if [[ -n "${opthash[(i)--help]}" ]]; then
        echo Usage: -b option to save configfile backup
    fi
    
    if [[ -n "${opthash[(i)-b]}" ]]; then
        cp $git_root/.git/config ./gitconfig
    fi
    
    sed -i 's/https:\/\/github.com\//git@github.com:/g' $git_root/.git/config
}