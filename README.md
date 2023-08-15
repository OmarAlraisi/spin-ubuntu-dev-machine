# Personal Ansible Development Environment Configs

This is repo is designed to my preferences. The README will include information about what will be configured and how to run the playbook.

## Configurations:

The playbook does different types of configurations, including

 - Making Z-Shell the default shell
 - Styling the shell:
    - Install appropriate fonts
    - Install oh-my-zsh
 - Installs some useful tools:
    - ripgrep
    - batcat
    - lsd
    - neovim
    - tmux
    - Rust toolchain
 - Copies dotfiles

## Folder Structure:

The folder structure breaks down like this:

**local.yml**: This is the Playbook that Ansible expects to find by default in pull-mode, think of it as an "index" of sorts that pulls other Playbooks in. It includes pre_tasks to update and upgrade packages, roles to call all the roles, and post_taks to clean up and set up a cronjob to automate ansible-pull.

**roles/shell**: This directory contains tasks to install and set Z-shell as the default shell for the current user.

**roles/style**: This directory contains tasks to style the shell for user 'omar'.

**roles/tools**: this directory contains tasks to install all the necessary tools.

**roles/dotfiles**: this directory contains tasks to copy all the dotfiles and configuration files.

## How do I run it?

There are two primary ways to automate your ubuntu setup:

### Method I: Two command method

 - Install ansible `sudo apt install ansible` - This will install all the required ansible commands.
 - Run the ansible pull command against this repo `ansible-pull -U https://github.com/OmarAlraisi/spin-ubuntu-dev-machine.git`

### Method II: One command method

 - Install and run setup script `curl -sSL https://gist.githubusercontent.com/OmarAlraisi/66d272ece702e59ef58a41c78e16f934/raw/f95448bcca9b8c8ca4566c5277163f0b193c3e4e/spin-ubuntu-dev-machine.sh | bash`
