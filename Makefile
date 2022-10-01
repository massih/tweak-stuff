.PHONY: dotfiles, install, all

dotfiles:
	@for f in ./files/* ; do \
		echo "Moving $$f to $$HOME ..." ; \
  		cp $$f ./temp/."$$(basename "$$f")" ; \
	done

install:
	sudo apt update && sudo apt upgrade -y
	apt install tmux zsh
	chsh -s $$(which zsh)
	sh -c "$$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	curl -s "https://get.sdkman.io" | bash


all:
	dotfiles