# Requirement: brew & fish installed

all: 
	$(MAKE) lang
	$(MAKE) clitools
	$(MAKE) apps
	$(MAKE) git
	$(MAKE) dotfiles

# Installing languages dependencies
lang:
	@echo "installing go"
	brew install go
	@echo "installing node"
	brew install node
	@echo "installing rust"
	brew install rust
	@echo "installing zig"
	brew install zig
	@echo "installing python"
	brew install python
	@echo "installing java"
	brew install openjdk

# Installing essential cli tools
clitools:
	@echo "installing neofetch"
	brew install neofetch
	@echo "installing fzf"
	brew install fzf

# Installing and setting up dev tools
dev:
	@echo "installing neovim"
	brew install neovim
	@echo "installing tmux"
	brew install tmux
	@echo "installing tmux plugin manager"
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm || true
	@echo "installing starship"
	brew install starship
	@echo "adding starship to config.fish"
	@echo "starship init fish | source" >> ~/.config/fish/config.fish
	@echo "installing jetbrains mono nerd font"
	brew install --cask font-jetbrains-mono-nerd-font
	@echo "installing aerospace"
	brew install --cask nikitabobko/tap/aerospace
	open -n /Applications/AeroSpace.app
	@echo "installing janky border"
	brew tap FelixKratz/formulae
	brew install borders
	brew services start borders
	@echo "installing sketchybar"
	brew install sketchybar
	brew services start sketchybar
	@fish

# Installing applications
apps:
	@echo "installing ghostty"
	brew install --cask ghostty
	@echo "installing warp vpn"
	brew install --cask warp
	@echo "installing coteditor"
	brew install --cask coteditor
	@echo "installing arc browser"
	brew install --cask arc
	@echo "installing google chrome"
	brew install --cask google-chrome
	@echo "installing ungoogled chromium"
	brew install --cask eloston-chromium
	@echo "installing firefox developer edition"
	brew install --cask firefox@developer-edition
	@echo "installing safari technology preview"
	brew install --cask safari-technology-preview
	@echo "installing stats"
	brew install --cask stats
	@echo "installing raycast"
	brew install --cask raycast
	@echo "installing tailscale"
	brew install --cask tailscale
	@ echo "installing obsidian"
	brew install --cask obsidian

# Setting up git
git:
	@echo "Setting up git"
	git config --global user.name "leminhnguyenai"
	git config --global user.email "leminhnguyenai@gmail.com"
	git config --global init.defaultBranch main
	git config --global pull.rebase false
	@echo "Your username is: $(shell git config --get user.name)"
	@echo "Your email is: $(shell git config --get user.email)"
	@echo "Generating ssh key"
	ssh-keygen -t ed25519 || true
	cat ~/.ssh/id_ed25519.pub
	@read -p "Copy this key to your github, press Enter to continue..."
	@echo "Testing github connection"
	ssh -T git@github.com || true

# Setting up dotfiles
dotfiles:
	echo "Cloning my dotfiles"
	git clone git@github.com:leminhnguyenai/dot-files.git
	mv dot-files ~


clean:
	@echo "Uninstall all homebrew packages"
	sudo rm -rf /opt/homebrew/bin || true
	@echo "Removing git config"
	sudo rm -rf ~/.gitconfig || true
	@echo "Removing dotfiles repo"
	sudo rm -rf ~/.dot-files || true
