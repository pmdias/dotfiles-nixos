save_nix: $(HOME)/.config/nixpkgs/home.nix
	@echo "Saving home-manager nix configuration..."
	@cp -r $? home

save_bash: $(HOME)/.config/nixpkgs/bash
	@echo "Saving bash configuration..."
	@cp -r $? home

save_direnv: $(HOME)/.config/nixpkgs/direnv
	@echo "Saving direnv configuration..."
	@cp -r $? home

save_git: $(HOME)/.config/nixpkgs/git
	@echo "Saving git configuration..."
	@cp -r $? home

save_kitty: $(HOME)/.config/nixpkgs/kitty
	@echo "Saving kitty configuration..."
	@cp -r $? home

save_nvim: $(HOME)/.config/nixpkgs/nvim
	@echo "Saving neovim configuration..."
	@cp -r $? home

save_polybar: $(HOME)/.config/nixpkgs/polybar
	@echo "Saving polybar configuration..."
	@cp -r $? home

save_session: $(HOME)/.config/nixpkgs/session
	@echo "Saving session configuration..."
	@cp -r $? home

save_themes: $(HOME)/.config/nixpkgs/themes
	@echo "Saving themes configuration..."
	@cp -r $? home

save_wallpapers: $(HOME)/.config/nixpkgs/wallpapers
	@echo "Saving wallpapers configuration..."
	@cp -r $? home

save_xsession: $(HOME)/.config/nixpkgs/xsession
	@echo "Saving xsession configuration..."
	@cp -r $? home

save_home: save_nix save_bash save_direnv save_git save_kitty save_nvim save_polybar save_session save_themes save_wallpapers save_xsession

load_nvim: home/nvim
	@echo "Loading neovim configuration..."
	@cp -r $? $(HOME)/.config/nixpkgs/nvim

load_home: load_nvim
