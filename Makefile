.PHONY: all
all: /usr/bin/ansible-playbook
	$< --verbose kodi.yml

/usr/bin/ansible-playbook:
	sudo dnf -y install ansible

lint:
	ansible-lint kodi.yml
