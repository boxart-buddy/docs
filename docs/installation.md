---
linkTitle: Installation
title: Installation
weight: 1
breadcrumbs: false
---

## Automatic Installation

Run the following from the terminal. <br/><br/>
It will install all dependencies, Skyscraper, php etc. on macOS and Linux platforms.<br/>
Tested and working on Fedora 28+, Debian 12+, Ubuntu 22+ and macOS 14.5 <br/>

If it doesn't work on your particular distro please raise an issue.

You can view the installation script [here](https://github.com/boxart-buddy/boxart-buddy/blob/main/install.sh)

{{< tabs items="macOS,Linux" >}}

{{< tab >}}
```bash
# change to the directory you want to install Boxart Buddy, typically the home directory
cd ~
bash -c "$(curl -fsSL https://raw.githubusercontent.com/boxart-buddy/boxart-buddy/main/install.sh)"
```
{{< /tab >}}

{{< tab >}}
```bash
# change to the directory you want to install Boxart Buddy, typically the home directory
cd ~
wget -q -O - https://raw.githubusercontent.com/boxart-buddy/boxart-buddy/main/install.sh | bash
```
{{< /tab >}}

{{< /tabs >}}

## Update

If you've already downloaded Boxart Buddy you can run this from install directory to update to the latest version

```bash
make update
```

## Manual Installation / Development Version

First [Setup Skyscraper](https://github.com/Gemba/Skyscraper/?tab=readme-ov-file#installation-prerequisites-on-other-systems-or-architectures). Make sure you use the [newest fork](https://github.com/Gemba/Skyscraper/)

This application runs on PHP 8.2+ and requires a few other packages to be installed.

### Install Dependencies

{{< tabs items="macOS,Debian,Ubuntu,Fedora/RHEL/Centos,Arch Linux" >}}

{{< tab >}}

```bash
brew install php@8.2 composer p7zip imagemagick pkg-config jpegoptim optipng pngquant
pecl install imagick
```

{{< /tab >}}

{{< tab >}}

```bash
sudo dpkg -l | grep php | tee packages.txt

sudo apt install apt-transport-https lsb-release ca-certificates wget -y
sudo wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg
sudo sh -c 'echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
sudo apt update

sudo apt install build-essential imagemagick p7zip-full php8.2 php8.2-cli curl php8.2-{bz2,curl,mbstring,intl,zip,imagick,xml,dom,simplexml} jpegoptim optipng pngquant composer
sudo update-alternatives --set php /usr/bin/php8.2
```

{{< /tab >}}

{{< tab >}}

```bash
sudo dpkg -l | grep php | tee packages.txt
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt install build-essential imagemagick p7zip-full php8.2 php8.2-cli curl php8.2-{bz2,curl,mbstring,intl,zip,imagick,xml,dom,simplexml} jpegoptim optipng pngquant qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools composer
sudo update-alternatives --set php /usr/bin/php8.2
```

{{< /tab >}}

{{< tab >}}

```shell
sudo dnf update
sudo dnf install ImageMagick php php-cli php-common php-json php-zip php-pecl-imagick php-bz2 php-curl php-mbstring php-intl unzip p7zip p7zip-plugins jpegoptim optipng pngquant composer
```

{{< /tab >}}
{{< tab >}}
```shell
    pacman -S --needed php imagemagick php-imagick bzip2 wget jpegoptim optipng pngquant p7zip unzip qt5-base qt5-tools qt5ct composer base-devel
```
You'll probably need to [manually enable various php extensions] (https://github.com/boxart-buddy/boxart-buddy/blob/main/install.sh#L23)
{{< /tab >}}

{{< /tabs >}}

### Clone repository & composer install

If your package manager was unable to install composer you'll need to [install it manually](https://getcomposer.org/doc/00-intro.md#installation-linux-unix-macos).

Once requirements are installed clone this repo and run `composer install` dependencies

```shell
git clone https://github.com/boxart-buddy/boxart-buddy
cd boxart-buddy 

composer install
```