
# Garuda Gamer to Mint - Script de Instalação para Jogos no Linux

Este script tem como objetivo transformar sua distribuição Linux baseada em Debian/Ubuntu/Mint em uma máquina de jogos com várias ferramentas e otimizações. Ele instalará as ferramentas de jogos mais populares, como Steam, Lutris, Heroic Games Launcher, além de otimizações para o desempenho da GPU e do sistema. Ele também inclui emuladores de consoles e ferramentas de automação para configurar o hardware de forma mais eficiente.

## Funcionalidades:

### 1. **Pacotes Essenciais**
   - **Steam**: Plataforma para jogos no Linux.
   - **Lutris**: Plataforma de jogos que suporta títulos nativos e jogos do Windows via Wine.
   - **Heroic Games Launcher**: Para jogos da Epic Games Store.
   - **MangoHud**: Ferramenta de monitoramento de FPS, uso de CPU, GPU, RAM e muito mais.
   - **GameMode**: Otimização dinâmica de desempenho enquanto joga.
   - **Wine, Winetricks, PlayOnLinux**: Ferramentas para executar jogos do Windows.

### 2. **Repositórios Necessários**
   - Instalação do repositório do WineHQ para jogos Windows.
   - Adiciona a arquitetura i386 para suporte a jogos de 32 bits.

### 3. **Ferramentas de Otimização**
   - **MangoHud**: Configura o MangoHud para exibir informações úteis como FPS, uso de hardware, etc.
   - **GameMode**: Instala o GameMode para melhorar o desempenho dos jogos.
   - **Mesa-utils**: Para otimizar o desempenho da GPU.
   
### 4. **Emuladores de Consoles**
   - **PCSX2** (PS2): Emulador de PlayStation 2.
   - **Dolphin** (GameCube/Wii): Emulador de GameCube e Wii.
   - **RetroArch**: Emulador multi-plataforma para vários consoles antigos.
   - **RPCS3** (PS3): Emulador de PlayStation 3.
   - **Xenia** (Xbox): Emulador de Xbox 360.

### 5. **Ferramentas de Automação e Controle de Hardware**
   - **CoreCtrl**: Ferramenta para controle de hardware (temperatura, velocidade do ventilador, etc.).
   - **Overclocking para AMD**: Instala ferramentas para overclocking de placas gráficas AMD.
   - **TLP, Powertop e cpufrequtils**: Ferramentas para otimização de energia e gerenciamento de desempenho da CPU.

### 6. **Instalação via Flatpak**
   - **MangoRoot**: Instala o MangoRoot via Flatpak para otimizar a Steam e melhorar o desempenho geral dos jogos.

## Como Usar:

1. **Baixe o script**:
   Faça o download do script em [garuda-gamer-to-mint.sh](./garuda-gamer-to-mint.sh).

2. **Dê permissão de execução**:
   Abra o terminal e navegue até o diretório onde o script foi baixado, então execute o seguinte comando:
   ```bash
   chmod +x garuda-gamer-to-mint.sh
   ```

3. **Execute o script**:
   Para executar o script, use o comando:
   ```bash
   sudo ./garuda-gamer-to-mint.sh
   ```
   O script pedirá confirmação antes de instalar cada ferramenta. Você pode escolher se deseja ou não instalar as opções oferecidas.

## Funcionalidades Interativas:

O script permite que você escolha as opções que deseja instalar durante a execução:

- **Atualizar o Sistema**: Pergunta se você deseja atualizar o sistema antes de iniciar a instalação.
- **Instalar Pacotes Essenciais**: Permite a instalação do Steam, Lutris, Heroic, entre outros.
- **Instalar Emuladores**: Você pode escolher entre emuladores de PS2, PS3, Xbox, GameCube e outros.
- **Ferramentas de Automação e Controle de Hardware**: Instala o CoreCtrl, ferramentas de overclocking e otimização de energia.

## Dependências:

- **Sistema baseado em Debian/Ubuntu/Mint**.
- **Permissões de root** para instalar pacotes e ferramentas.
- **Conexão com a internet** para baixar os pacotes.

## Observações:

- Este script foi desenvolvido e testado para funcionar em sistemas baseados em **Debian**, **Ubuntu** e **Linux Mint**.
- Se você encontrar algum problema ou desejar contribuir com melhorias, sinta-se à vontade para abrir uma **issue** ou enviar um **pull request**.

## Licença:

Este script é de código aberto e está licenciado sob a licença **MIT**. Você pode usá-lo, modificá-lo e distribuí-lo como desejar.

---

**Nota**: Certifique-se de ter backup dos seus dados antes de executar qualquer script que modifique o sistema.


