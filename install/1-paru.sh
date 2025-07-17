sudo pacman -S --needed --noconfirm base-devel

if ! command -v paru > /dev/null; then
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    cd ..
    rm -rf paru
fi
