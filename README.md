# ISOfolder info:
A utility tool used to create images from a folder.
# How to install ISOfolder?
## ISOfolder dependecies
ISOfolder dependecies:
- genisoimage
- dialog (for the install script)

If you don't have `genisoimage` and `dialog`, you can install it.

Debian/Ubuntu/Mint:
```
sudo apt update
sudo apt install genisoimage dialog
```
Fedora:
```
sudo dnf install genisoimage dialog
```
Rocky (previously CentOS)/RHEL:
```
sudo yum install genisoimage dialog
```
Arch:
```
sudo pacman -S genisoimage dialog
```
OpenSUSE:
```
sudo zypper install genisoimage dialog
```
## Installation
Clone the repository:
```
git clone https://github.com/alinuxuser5/ISOfolder.git
```
Change directory:
```
cd ISOfolder/
```
Make installation script executable:
```
chmod u+x install.sh
```
Run the installation script:
```
./install.sh
```
> Note: The directory is located on /usr/share/isofolder.

It will ask you to enter your root password.
## Final result
Once the installation is done, you can open it on desktop or Application Menu.
