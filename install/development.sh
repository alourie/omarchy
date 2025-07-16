paru -S --noconfirm --needed \
  cargo clang llvm mise \
  imagemagick \
  postgresql-libs \
  github-cli podman 

sudo sysctl kernel.unprivileged_userns_clone=1 
