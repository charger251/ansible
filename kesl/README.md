With this playbook you can install kesl, klnagent on Ubuntu/Debian and configure them.

Example:
	Install new key:
		ansible-playbook /etc/ansible/playbooks/install_kes_deb.yml --step --start-at-task="copy"
		ansible-playbook /etc/ansible/playbooks/install_kes_deb.yml --step --start-at-task="add_key"