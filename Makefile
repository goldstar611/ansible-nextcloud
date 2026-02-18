.phony venv deploy

venv:
	python3 -m venv .venv
	.venv/bin/pip install -r requirements.txt

deploy:
	ansible-playbook -i inventory.yml playbook.yml --diff
