# [Official documentation] How to generate a SSH key:
#     GitHub: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
#     GitLab: https://docs.gitlab.com/ee/ssh/#generate-an-ssh-key-pair

EMAIL="<your-email-address>"

#usage: info "My important message, which could contains var like ${MY_VAR}"
#description: log an informational message
info () {
  local now
  now=$(LANG=en_us_88591; date -u)
  echo -e "\e[34m[INFO ] \e[33m$now - \e[39m$1" >&2
}

info "Starting the bash script... Please wait..."
info "-----------------------------------------------------------------------------------"
info "                 _______                                                           "
info "               _/       \_                                                         "
info "              / |       | \                                                        "
info "             /  |__   __|  \                                                       "
info "            |__/((o| |o))\__|                                                      "
info "            |      | |      |                                                      "
info "            |\     |_|     /|                                                      "
info "            | \           / |                                                      "
info "             \| /  ___  \ |/                                                       "
info "              \ | / _ \ | /                                                        "
info "               \_________/                                                         "
info "                _|_____|_                                                          "
info "           ____|_________|____                                                     "
info "          /                   \  Generation of a new SSH key (id_ed25519 format)..."
info "-----------------------------------------------------------------------------------"

info "Working in '$PWD' folder"

cd ~/.ssh
ssh-keygen -t ed25519 -C $EMAIL
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

cat ~/.ssh/id_ed25519.pub | clip

info "Public key added to your clipboard, you can now update your hub (GitHub, GitLab) settings to add it"
info "      - GitHub: https://github.com/settings/ssh/new"
info "      - GitLab: https://gitlab.com/-/profile/keys"
