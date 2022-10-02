save_nvim: $(HOME)/.config/nixpkgs/nvim
	@echo "Saving neovim configuration..."
	@cp -r $? home

save_home: save_nim

load_nvim: home/nvim
	@echo "Loading neovim configuration..."
	@cp -r $? $(HOME)/.config/nixpkgs/nvim

load_home: load_nvim
