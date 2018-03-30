# Goodbytes Dotfiles

## What Is This?

This repository serves as a way to help us setup and maintain our macs.

It can take a long time to manually configure macs and install applications. This helps speed up the process.

Feel free to explore, learn and copy parts for your own .dotfile.

Enjoy

## A Fresh macOS Setup

Follow these install instructions to setup a new Mac.

1. Update macOS to the latest version with the App Store
2. Install Xcode from the App Store, open it and accept the license agreement (Xcode is required to install MAS CLI app - CLI Tools is not sufficient)
3. Install macOS Command Line Tools by running `xcode-select --install`
4. Clone this repo to `~/.dotfiles`
5. Run `install.sh` to start the installation
6. Restart your computer to finalize the process

Your Mac is now ready to use!

## Your Own Dotfiles

If you want to start your own dotfiles from this setup, it's pretty easy to do so. First of all you'll need to fork this repo. After that you can tweak it the way you want.

Go through the [`.macos`](./.macos) file and adjust the settings to your liking. You can find much more settings at [the original script by Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) and [Kevin Suttle's macOS Defaults project](https://github.com/kevinSuttle/MacOS-Defaults).

Check out the [`Brewfile`](./Brewfile) file and adjust the apps you want to install for your machine. Use [their search page](https://caskroom.github.io/search) to check if the app you want to install is available.

Check out the [`config.fish`](./config.fish) file and add your own aliases/functions. This file will be copied to `~./config/fish/config.fish` and will be loaded each time Fish is started.

Enjoy your own Dotfiles!

## Thanks To...

I first got the idea for this project after attending Paweł Lewtak's ([@pawel-lewtak](https://github.com/pawel-lewtak)) talk on Improving Your Developer Toolset at Laracon EU 2017, however I initially cloned [@driesvints](https://github.com/driesvints/dotfiles) repo as it is primarily macOS based, then took parts of both.

Dries' inspiration taken from the [Github does dotfiles](https://dotfiles.github.io/) project. Both [Zach Holman](https://github.com/holman/dotfiles) and [Mathias Bynens](https://github.com/mathiasbynens/dotfiles) were great sources of inspiration. [Sourabh Bajaj](https://twitter.com/sb2nov/)'s [Mac OS X Setup Guide](http://sourabhbajaj.com/mac-setup/) proved to be invaluable. And lastly, I'd like to thank [Maxime Fabre](https://twitter.com/anahkiasen) for [his excellent presentation on Homebrew](https://speakerdeck.com/anahkiasen/a-storm-homebrewin) which made me migrate a lot to a `Brewfile` and [Mackup](https://github.com/lra/mackup).

In general, I'd like to thank every single one who open-sources their dotfiles for their effort to contribute something to the open-source community. Your work means the world! :earth_africa: :heart:
