+++
widget = "blank"
weight = 3
title = "Установка"

[design.spacing]
  padding = ["10px", "0", "10px", "0"]
  
[design]
  columns = "1"
+++

## Windows

:package: [Страница релизов](https://github.com/crow-translate/crow-translate/releases/latest)

:package: [Пакет Scoop](https://github.com/lukesampson/scoop-extras/blob/master/bucket/crow-translate.json)

```bash
sudo scoop install crow-translate -g
```

## Linux

### Arch Linux, Manjaro, Chakra, etc

:package: [Стабильная версия в AUR](https://aur.archlinux.org/packages/crow-translate)

```bash
git clone https://aur.archlinux.org/crow-translate.git
cd crow-translate
makepkg -si
```

:package: [Git-версия в AUR](https://aur.archlinux.org/packages/crow-translate-git)

```bash
git clone https://aur.archlinux.org/crow-translate-git.git
cd crow-translate-git
makepkg -si
```

### Debian, Ubuntu, Mint, etc

:package: [Страница релизов](https://github.com/crow-translate/crow-translate/releases/latest)

### Fedora

:package: [Fedora Copr](https://copr.fedorainfracloud.org/coprs/faezebax/crow-translate)

```bash
sudo dnf copr enable faezebax/crow-translate
sudo dnf install crow-translate
```

### CentOS, RHEL

:package: [Fedora Copr](https://copr.fedorainfracloud.org/coprs/faezebax/crow-translate)

```bash
sudo yum copr enable faezebax/crow-translate
sudo yum install crow-translate
```

### openSUSE Tumbleweed

:package: [Репозиторий Tumbleweed](https://software.opensuse.org/package/crow-translate)

```bash
sudo zypper install crow-translate
```

### openSUSE Leap

:package: [Open Build Service](https://software.opensuse.org/package/crow-translate)

### Solus

:package: [Репозиторий Solus](https://dev.getsol.us/source/crow-translate)

```bash
sudo eopkg it crow-translate
```
