FROM archlinux:base-20210221.0.15908

RUN  sed -i '1i Server = https://mirrors.tuna.tsinghua.edu.cn/archlinux/$repo/os/$arch' /etc/pacman.d/mirrorlist \
  && pacman -Syyu --noconfirm \
  && echo "[archlinuxcn]" >> /etc/pacman.conf \
  && echo "Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch" >> /etc/pacman.conf \
  && pacman -Sy archlinuxcn-keyring

ENV LANGUAGE en_US.UTF-8
ENV TZ Asia/Shanghai
