#! /bin/bash

echo "Starting setup. Written by Juan Pablo Gutierrez"

prompt() {
    while true; do
        read -p "$1 (yes/no): " yn
        case $yn in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer yes or no.";;
        esac
    done
}

install_cursor(){
	echo "Installing Cursor"
	brew install --cask cursor
	echo "Cursor Installing"
}

install_node(){
	echo "Installing Node"
	brew install node
	echo "Node Installing"
}

install_cocoapods(){
	echo "Installing Cocoapods"
	sudo gem install cocoapods
	echo "Cocoapods installed"

}

install_spotify_player(){
	echo "Installing Spotify Player"
	brew install spotify_player
	echo "Spotify Player"
}

install_spotify_desktop(){
	echo "Installing Spofity Desktop"
	brew install --cask spotify
	echo "Spotify Desktop installed"
}

install_neovim(){
	echo "Installing Neovim"
	brew install neovim
	brew install ripgrep
	echo "Neovim installed"
}

install_flutter(){
	echo "Installing Flutter"
	brew install --cask flutter
	echo "Flutter Installed"
}

install_arc(){
	echo "Installing Arc"
	brew install --cask arc
	echo "Arc Installed"
}

install_firefox(){
	echo "Installing Firefox"
	brew install --cask firefox
	echo "Firefox installed"
}

install_brew(){
	echo "Installing HomeBrew"
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
	eval "$(/opt/homebrew/bin/brew shellenv)"
	eval "$(/opt/homebrew/bin/brew shellenv)"

	echo "HomeBrew Installed"
}

install_warp(){
	echo "Installing Warp Terminal"
	brew install --cask warp
	echo "Warp installed"
}

install_gitautoinit() {
	echo "Installing GitAutoInit"

	cd /

	sudo mkdir usr/local/bin

	cd usr/local/bin

	# Download GitAutoInit Script
	sudo curl -o gitautoinit.sh https://raw.githubusercontent.com/jpgtzg/GitAutoInit/main/gitautoinit.sh

	sudo chmod +x gitautoinit.sh

	echo "GitAutoInit installed"
}

install_rust(){
	echo "Installing Rust"
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	echo "Rust Installed"
}

install_ice() {
	echo "Installing Ice"
	brew install jordanbaird-ice
	echo "Ice Installed"
}

install_notion() {
	echo "Installing Notion"
	brew install --cask notion
	echo "Notion Installed"
}

install_discord(){
	echo "Installing Discord"
	brew install --cask discord
	echo "Discord Installed"
}

main_menu() {
	echo "Select what you want to install:"

	if prompt "Install Homebrew"; then
		install_brew
	else
		echo "Skipping Homebrew installation"
	fi
	if prompt "Install GitAutoInit"; then
		install_gitautoinit
	else
		echo "Skipping GitAutoInit installation"
	fi

	if prompt "Install Warp Terminal"; then
		install_warp
	else 
		echo "Skipping Warp installation"	
	fi

    	if prompt "Install Rust"; then
		install_rust
	else 
		echo "Skipping Rust installation"
	fi

	if prompt "Install Ice"; then
		install_ice
	else 
		echo "Skipping Ice installation"
	fi

	if prompt "Install Notion"; then
		install_notion
	else
		echo "Skipping Notion installation"
	fi

	if prompt "Install Discord"; then
		install_discord
	else
		echo "Skipping Discord installation"
	fi

	if prompt "Install Arc"; then
		install_arc
	else 
		echo "Skipping Arc installation"
	fi

	if prompt "Install Firefox"; then
		install_firefox
	else 
		echo "Skipping Firefox installation"
	fi

	if prompt "Install Flutter"; then
		install_flutter
	else
		echo "Skipping Flutter installation"
	fi

	if prompt "Install Neovim"; then
		install_neovim
	else 
		echo "Skipping Neovim installation"
	fi

	if prompt "Install Spotify Desktop"; then
		install_spotify_desktop
	else 
		echo "Skipping Spotify desktop installation"
	fi

	if prompt "Install Spotify Player"; then
		install_spotify_player
	else
		echo "Skipping Spotify Player installation"
	fi

	if prompt "Install Cocoapods"; then
		install_cocoapods
	else
		echo "Skipping Cocoapods installation"
	fi

	if prompt "Install Cursor"; then
		install_cursor
	else
		echo "Skipping Cursor installation"
	fi
   	
    echo "Setup complete."
}

main_menu
