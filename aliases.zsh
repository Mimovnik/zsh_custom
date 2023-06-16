alias mimodisk="cd /run/media/mimovnik/MimoDisk"
alias unity="cd /run/media/mimovnik/MimoDisk/UnityProjects"

nvim_cd()
{
    if [ -d "${1}" ]; then
        local dir="${1}"
        shift 1
        ( cd "${dir}" && nvim "." "${@}" )
    else
        \nvim "${@}"
    fi
}
alias nvim=nvim_cd
alias vim=nvim
