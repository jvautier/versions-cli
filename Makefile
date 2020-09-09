CLI_NAME = versions-cli

install: uninstall
	sudo cp ./$(CLI_NAME) /usr/bin/$(CLI_NAME)
	sudo chmod +x /usr/bin/$(CLI_NAME)

install-dev: uninstall
	sudo ln -s $(PWD)/$(CLI_NAME) /usr/bin/$(CLI_NAME)
	sudo chmod +x /usr/bin/$(CLI_NAME)

uninstall:
	sudo rm -f /usr/bin/$(CLI_NAME)