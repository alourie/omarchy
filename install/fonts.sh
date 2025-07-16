paru -Sy --noconfirm --needed ttf-font-awesome noto-fonts noto-fonts-emoji noto-fonts-cjk noto-fonts-extra nerd-fonts-jetbrains-mono

mkdir -p ~/.local/share/fonts

# ia Writer mono???
if ! fc-list | grep -qi "iA Writer Mono S"; then
  cd /tmp
  wget -O iafonts.zip https://github.com/iaolo/iA-Fonts/archive/refs/heads/master.zip
  unzip iafonts.zip -d iaFonts
  cp iaFonts/iA-Fonts-master/iA\ Writer\ Mono/Static/iAWriterMonoS-*.ttf ~/.local/share/fonts
  rm -rf iafonts.zip iaFonts
  fc-cache
  cd -
fi
