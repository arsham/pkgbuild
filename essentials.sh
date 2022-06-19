#!/bin/bash

yay -Syu --noconfirm --needed \
        dell-bios-fan-control-git \
        findutils-git \
        fontpreview-ueberzug-git \
        gimp-plugin-resynthesizer-git \
        mpv-git \
        numix-circle-arc-icons-git \
        numix-circle-icon-theme-git \
        numix-icon-theme-git \
        nvtop-git \
        powerline-fonts-git \
        sddm-config-editor-git \
        upower-git \
        zoxide-git

yay -Syu --noconfirm --needed \
        alltray \
        antibody \
        ark \
        asp \
        aurvote \
        autorandr \
        bat \
        betterlockscreen \
        binutils \
        brave-bin \
        ccache \
        chromium \
        clamav \
        clang \
        clipnotify \
        coreutils \
        cpulimit \
        cpupower \
        cpupower-gui \
        ctags \
        cuda \
        cuda-tools \
        desktop-file-utils \
        dialog \
        diffutils \
        docker \
        docker-compose \
        downgrade \
        dragon-drop \
        dropbox \
        dropbox-cli \
        entr \
        ethtool \
        ffmpeg \
        ffmpegthumbnailer \
        fuse-common \
        fuse2 \
        fuse3 \
        fzf \
        gegl \
        gimme \
        gimp \
        gitg \
        gksu \
        glow \
        gnuplot \
        gnutls \
        go \
        go-md2man \
        goffice \
        google-chrome \
        gotop-bin \
        gzip \
        hdparm \
        helm \
        imagemagick \
        inetutils \
        iputils \
        java-runtime-common \
        jaxx-liberty-appimage \
        jq \
        jre-openjdk-headless \
        jre8-openjdk \
        jre8-openjdk-headless \
        k9s \
        keyutils \
        kitty \
        kitty-shell-integration \
        kitty-terminfo \
        konsole \
        kubectl \
        kubectx \
        laptop-detect \
        linux-zen \
        linux-zen-headers \
        lm_sensors \
        lua \
        lua-filesystem \
        lua-lgi \
        lua-penlight \
        lua51 \
        lua51-filesystem \
        lua51-lpeg \
        lua51-mpack \
        lua51-penlight \
        lua52 \
        lua53 \
        lua53-lgi \
        lxappearance \
        lxrandr \
        minizip \
        mjpegtools \
        moreutils \
        mplayer \
        ncdu \
        nerd-fonts-complete \
        net-tools \
        network-manager-applet \
        networkmanager \
        networkmanager-openconnect \
        networkmanager-openvpn \
        networkmanager-pptp \
        networkmanager-vpnc \
        nvidia-dkms \
        nvidia-prime \
        nvidia-settings \
        nvidia-utils \
        nvme-cli \
        okular \
        openbsd-netcat \
        opencl-headers \
        opencl-nvidia \
        openjade \
        openjpeg2 \
        openssh \
        openssh-askpass \
        openssl \
        openssl-1.0 \
        openvpn \
        optimus-manager \
        optimus-manager-qt \
        pacutils \
        papirus-icon-theme \
        parallel \
        parted \
        pasystray \
        patch \
        patchutils \
        pavucontrol \
        pbzip2 \
        pciutils \
        peek \
        pg_activity \
        pgmodeler \
        phonon-qt5 \
        phonon-qt5-gstreamer \
        pkgconf \
        plocate \
        poppler \
        poppler-data \
        poppler-glib \
        poppler-qt5 \
        postgresql-libs \
        powertop \
        procps-ng \
        protobuf \
        proton-ge-custom-bin \
        pulseaudio \
        pulseaudio-alsa \
        pulseaudio-bluetooth \
        pulseaudio-equalizer \
        pulseaudio-jack \
        pulseaudio-lirc \
        pulseaudio-rtp \
        pulseaudio-zeroconf \
        purpose \
        readline \
        redshift \
        reflector \
        ripgrep \
        ristretto \
        rofi \
        rofi-calc \
        rofi-emoji \
        rofi-greenclip \
        rustup \
        sccache \
        schedtool \
        sddm \
        sdparm \
        sed \
        slack-desktop \
        sshfs \
        steam \
        stow \
        strace \
        sudo \
        the_silver_searcher \
        tldr \
        tlp \
        tmuxp \
        transmission-gtk \
        tree \
        tree-sitter \
        ueberzug \
        unrar \
        unzip \
        upx \
        virtualbox \
        virtualbox-host-dkms \
        vlc \
        volumeicon \
        words-insane \
        xfce4-power-manager \
        xvidcore \
        xz \
        yay \
        zip \
        zlib \
        zsh-completions \
        zsh-syntax-highlighting

sudo systemctl enable NetworkManager.service
sudo systemctl enable ananicy-cpp.service
sudo systemctl enable betterlockscreen@arsham
sudo systemctl enable clamav-freshclam.service
sudo systemctl enable clamav-unofficial-sigs.timer
sudo systemctl enable cpupower-gui.service
sudo systemctl enable cpupower.service
sudo systemctl enable dell-bios-fan-control.service
sudo systemctl enable docker.service
sudo systemctl enable fancontrol.service
sudo systemctl enable fangfrisch.timer
sudo systemctl enable lm_sensors.service
sudo systemctl enable optimus-manager.service
sudo systemctl enable plocate-updatedb.timer
sudo systemctl enable reflector.timer
sudo systemctl enable sddm.service
sudo systemctl enable tlp.service
