# NixOS migration progress tracker

The migration is split into two distinct phases that are meant to allow me to
better understand how NixOS and Nix work:

- Phase 1: setup as much as possible of the system using the default NixOS
  configuration methods that use `configuration.nix` and `hardware-configuration.nix`.
  This phase will also include a full working configuration of `home-manager` and the
  setup of my personal _dotfiles_;
- Phase 2: move the configuration into flakes; I'm leaving this into a second phase
  since I found the lack of documentation on this feature, plus my general lack of
  knowledge about both NixOS and Nix, to make it a very difficult task (for now);

## Phase 1

- [x] Provide a system configuration in a functional state that allows me to boot
      into the machine and fool around;
- [x] Initial `home-manager` configuration with just the basic tools;
- [x] Configure `i3` to match my usual workflow;
- [ ] Configure a status bar (probably `i3bar`) with basic useful information;
- [ ] Configure a notification system ([dunst](https://github.com/dunst-project/dunst)) that is
      just working;
- [ ] Configure [kitty](https://github.com/kovidgoyal/kitty) to my needs. Since I'll be using
      `kitty` a lot, I'll try to configure it as much as possible to its final stage here;
- [ ] Configure [neovim](https://github.com/neovim/neovim) to my *basic* needs. By this I mean
      to have `neovim` configured but probably without plugins at this stage. I will be using
      this step as an excuse to do some maintenance and tyding of my current `init.lua`;
- [ ] Configure Firefox - apparently it is possible to manage Firefox using either Nix or
      `home-manager`?;
- [ ] Setup SSH as much as possible: declarative keys (is it possible?), setup the SSH
      authentication agent;
- [ ] Setup GPG as much as possible: similar to the SSH step above;
- [ ] Configure the system to use Nvidia drivers;
- [ ] Configure proper power management: this is mostly a direct migration of the scripts I
      currently already use, but I'll be attempting to create Nix packages for them;
- [ ] Configure a screen lock, probably [i3lock](https://github.com/i3/i3lock);
- [ ] Configure the base Latex system, install all the plugins;
- [ ] Configure [zathura](https://github.com/pwmt/zathura) and learn how to use it;
- [ ] Configure the note taking tools - all of this is mostly homebrew scripts and stuff;
- [ ] Configure [roswell](https://github.com/roswell/roswell) - I'm aware that I could use
      Nix to manage my Lisp development environments, but I'm too used to `roswell` by now. Also,
      I want to have my Lisp environment running as fast as possible;
- [ ] Configure Python development - I'll try to make use of `micromamba` paired with `nix-shell`
      facilities and `direnv` support;
- [ ] Configure the Go development environment - From what I've seen, this one should be
      straighforward using Nix;
- [ ] Configure the C development environment;

## Phase 2

- [ ] Move configuration into flakes
