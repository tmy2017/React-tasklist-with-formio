# to not break npm install
# https://community.gitpod.io/t/how-to-configure-node-version-manager-nvm-and-zsh-oh-my-zsh/3644/3?u=tkgc
# Install the latest version of Gitpod's default Docker image
FROM gitpod/workspace-full:latest

# Using Bash, install a specific version of node.js and npm with node version manager

RUN bash -c ". .nvm/nvm.sh \
    && nvm install v12 \
    && nvm use v12 \
    && nvm alias default v12"
# seems need to let bashrc really make sure use default? zzQQQ zz-_44-_y21-1106-1714
RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix
