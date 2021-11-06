# to not break npm install
# https://community.gitpod.io/t/how-to-configure-node-version-manager-nvm-and-zsh-oh-my-zsh/3644/3?u=tkgc
# Install the latest version of Gitpod's default Docker image
FROM gitpod/workspace-full:latest

# Using Bash, install a specific version of node.js and npm with node version manager

RUN bash -c ". .nvm/nvm.sh \
    && nvm install v12 \
    && nvm use v12 \
    && nvm alias default v12"