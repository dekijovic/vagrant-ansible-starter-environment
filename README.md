# Development environment in vagrant with Ansible automation #

Current version of environment is using:
 * Ubunty latest
 * Ansible latest
 * apache 2.4
 * PHP 7.1
 * Python 2.7
 * Ruby 2.4
 * Sass 3.5.1
 * Mysql 5.6
 * nodejs 6.11

Environment is initially setting 3 virtual hosts

On first `    vagrant up    ` the provision script is running ansible playbook

Ansible playbook is running in localhost and `    exe_playbook    ` command is added to rerun the playbook
