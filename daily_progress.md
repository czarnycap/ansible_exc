07-Nov-22 (Monday)
cloned VMs (xubuntu, centos)
changed hostnames via hostnamesctl
added ansible user via usermod -a -G
used visudo to allow ansible user to change into root without password
wrote first playbook to install "emacs" via apt or yum (respectively of the version of OS)
changed .ssh/config files to allow for easier ssh connection
deployed id_rsa.pub keys to remote machines to allow connections without password
wrote playbook_remove_emacs 
wrote playbok_hostname with debug input from hostname command


base on https://www.toptechskills.com/ansible-tutorials-courses/ansible-yum-module-tutorial-examples/