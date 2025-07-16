if ! command -v nvim &>/dev/null; then
  paru -S --noconfirm --needed nvim luarocks tree-sitter-cli
fi
