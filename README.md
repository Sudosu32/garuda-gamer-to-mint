# Instalação de Ferramentas de Jogos no Linux (Debian/Ubuntu/Mint)

Este script foi projetado para configurar um ambiente de jogos completo no Linux, com suporte a ferramentas de jogos como Steam, Lutris, Heroic, RPCS3, Xenia, e outros. Ele foi testado para funcionar nas distribuições Debian, Ubuntu, e Linux Mint.

## Requisitos
- Este script deve ser executado com permissões de root.
- O sistema deve ser baseado em Debian/Ubuntu ou Mint.
  
## Funcionalidades
Este script irá:
1. Atualizar o sistema.
2. Instalar pacotes essenciais como Steam, Lutris, Heroic, MangoHud, GameMode e outros.
3. Adicionar repositórios necessários, como o WineHQ.
4. Configurar MangoHud e GameMode para otimizar o desempenho de jogos.
5. Instalar emuladores populares, como PCSX2, Dolphin, RetroArch, RPCS3 e Xenia.
6. Oferecer a opção de instalação de ferramentas adicionais como Wine, PlayOnLinux, Kdenlive, OBS Studio e CoreCtrl.

## Passo a Passo
1. **Atualização do Sistema**: O script começa com a atualização do sistema, garantindo que os pacotes estejam atualizados.
2. **Instalação de Ferramentas**: Ele instala várias ferramentas de jogos, incluindo Steam, Lutris e Heroic. O usuário pode escolher o que deseja instalar.
3. **Configuração de Desempenho**: Após a instalação, ele configura o MangoHud para monitoramento de FPS e outras métricas, além de configurar o GameMode para otimizar o desempenho.
4. **Emuladores**: O script instala os emuladores de PS2 (PCSX2), GameCube/Wii (Dolphin), multi-plataforma (RetroArch), PS3 (RPCS3) e Xbox (Xenia), com opções para o usuário escolher se deseja instalá-los.

## Como Usar
1. **Baixe o script**.
2. **Dê permissões de execução** ao script com o comando:
   ```bash
   chmod +x garuda-gamer-to-mint.sh
   ```
3. **Execute o script** com privilégios de root:
   ```bash
   sudo ./garuda-gamer-to-mint.sh
   ```
4. **Siga as instruções interativas** durante o processo de instalação.

## Licença
Este script é de uso livre e está disponível sob a licença MIT.
