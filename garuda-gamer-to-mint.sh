#!/bin/bash

# Script para instalação de ferramentas de jogos compatíveis com Linux (Debian/Ubuntu/Mint)
# Com foco nas distribuições baseadas em Debian, Ubuntu e Linux Mint
# Este script instalará ferramentas como Steam, Lutris, Heroic, MangoHud, GameMode e outros

# Verificar se o usuário tem permissões de root
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script precisa ser executado como root. Execute com sudo."
    exit 1
fi

# Função para atualizar o sistema
atualizar_sistema() {
    echo "Deseja atualizar o sistema? (y/n)"
    read -r resposta
    if [ "$resposta" == "y" ]; then
        echo "Atualizando o sistema..."
        apt update && apt upgrade -y
    else
        echo "Atualização cancelada."
    fi
}

# Função para instalar pacotes essenciais
instalar_pacotes_essenciais() {
    echo "Deseja instalar pacotes essenciais (Steam, Lutris, Heroic, etc.)? (y/n)"
    read -r resposta
    if [ "$resposta" == "y" ]; then
        echo "Instalando pacotes essenciais..."
        apt install -y         steam lutris heroic-games-launcher         mangohud gamemode         wine winetricks playonlinux         kdenlive obs-studio         corectrl         flatpak
    else
        echo "Instalação de pacotes essenciais cancelada."
    fi
}

# Função para adicionar repositórios necessários
adicionar_repositorios() {
    echo "Deseja adicionar os repositórios necessários (WineHQ)? (y/n)"
    read -r resposta
    if [ "$resposta" == "y" ]; then
        echo "Adicionando repositórios necessários..."
        apt install -y software-properties-common
        dpkg --add-architecture i386
        apt update
        apt install -y wine64 wine32
    else
        echo "Adição de repositórios cancelada."
    fi
}

# Função para configurar o MangoHud
configurar_mangohud() {
    echo "Deseja configurar o MangoHud para mostrar FPS, uso de CPU, GPU, etc.? (y/n)"
    read -r resposta
    if [ "$resposta" == "y" ]; then
        echo "Configurando o MangoHud..."
        # Definindo variáveis de ambiente para o MangoHud
        echo "export MANGOHUD=1" >> ~/.bashrc
        echo "export MANGOHUD_CONFIG=1" >> ~/.bashrc
        source ~/.bashrc
    else
        echo "Configuração do MangoHud cancelada."
    fi
}

# Função para configurar o GameMode
configurar_gamemode() {
    echo "Deseja configurar o GameMode para otimizar o desempenho nos jogos? (y/n)"
    read -r resposta
    if [ "$resposta" == "y" ]; then
        echo "Configurando o GameMode..."
        apt install -y gamemode
    else
        echo "Configuração do GameMode cancelada."
    fi
}

# Função para otimizar o desempenho de GPU (Ajuste para AMD/NVIDIA)
otimizar_gpu() {
    echo "Deseja otimizar o desempenho da sua GPU (instalar mesa-utils)? (y/n)"
    read -r resposta
    if [ "$resposta" == "y" ]; then
        echo "Otimizar o desempenho de GPU..."
        apt install -y mesa-utils
    else
        echo "Otimização de GPU cancelada."
    fi
}

# Função para instalar o MangoRoot (se necessário)
instalar_mangoroot() {
    echo "Deseja instalar o MangoRoot via Flatpak? (y/n)"
    read -r resposta
    if [ "$resposta" == "y" ]; then
        echo "Instalando o MangoRoot..."
        flatpak install -y flathub com.valvesoftware.Steam
    else
        echo "Instalação do MangoRoot cancelada."
    fi
}

# Função para instalar emuladores de consoles
instalar_emuladores() {
    echo "Deseja instalar emuladores de consoles (PCSX2, Dolphin, RetroArch, RPCS3, Xenia)? (y/n)"
    read -r resposta
    if [ "$resposta" == "y" ]; then
        echo "Instalando emuladores de consoles..."

        # Instalar PCSX2 (PS2)
        echo "Deseja instalar o PCSX2 (PS2)? (y/n)"
        read -r resposta_pcsx2
        if [ "$resposta_pcsx2" == "y" ]; then
            apt install -y pcsx2
        fi

        # Instalar Dolphin (GameCube/Wii)
        echo "Deseja instalar o Dolphin (GameCube/Wii)? (y/n)"
        read -r resposta_dolphin
        if [ "$resposta_dolphin" == "y" ]; then
            apt install -y dolphin-emu
        fi

        # Instalar RetroArch (emulador multi-plataforma)
        echo "Deseja instalar o RetroArch? (y/n)"
        read -r resposta_retroarch
        if [ "$resposta_retroarch" == "y" ]; then
            apt install -y retroarch
        fi

        # Instalar RPCS3 (PS3)
        echo "Deseja instalar o RPCS3 (PS3)? (y/n)"
        read -r resposta_rpcs3
        if [ "$resposta_rpcs3" == "y" ]; then
            flatpak install -y flathub org.rpcs3.RPCS3
        fi

        # Instalar Xenia (Xbox)
        echo "Deseja instalar o Xenia (Xbox)? (y/n)"
        read -r resposta_xenia
        if [ "$resposta_xenia" == "y" ]; then
            flatpak install -y flathub org.xenia.Xenia
        fi
    else
        echo "Instalação de emuladores cancelada."
    fi
}

# Função para interação com o usuário
interacao_usuario() {
    atualizar_sistema
    adicionar_repositorios
    instalar_pacotes_essenciais
    configurar_mangohud
    configurar_gamemode
    otimizar_gpu
    instalar_mangoroot
    instalar_emuladores
    echo "Processo de instalação concluído!"
}

# Iniciar o processo
interacao_usuario
