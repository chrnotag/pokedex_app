# Pokédex App

Este é um aplicativo de Pokédex desenvolvido em Flutter com arquitetura MVVM, utilizando Flutter Modular para modularização e Firebase para autenticação e persistência de dados. O app também implementa o Hive para um modelo offline-first.

## Tecnologias Utilizadas
- **Flutter**
- **Dart**
- **Flutter Modular** (Gerenciamento de estado e injeção de dependência)
- **Firebase** (Autenticação e banco de dados)
- **Hive** (Armazenamento offline)
- **Flutter Animate** (Animações dinâmicas)

## Estrutura do Projeto
O aplicativo segue a arquitetura **MVVM** (Model-View-ViewModel), garantindo organização e manutenção do código.

---

## Funcionalidades
- **Autenticação**: Login e registro via Firebase
- **Persistência de dados**: Firebase para sincronização e Hive para funcionamento offline
- **Lista de Pokémons**: Exibição detalhada dos Pokémons com imagens e atributos
- **Favoritos**: Possibilidade de favoritar Pokémons
- **Perfil do Usuário**: Informações do usuário autenticado

## Telas do App

### Splash Screen
<!-- Adicionar imagem da tela de Splash -->

A animação na Splash Screen destaca cada letra do nome "Pokédex" surgindo individualmente.

### Tela de Login
<!-- Adicionar imagem da tela de Login -->

Tela para autenticação via Firebase.

### Tela de Registro
<!-- Adicionar imagem da tela de Registro -->

Tela para criar uma conta.

### Lista da Pokédex
<!-- Adicionar imagem da tela da lista de Pokémons -->

Exibe todos os Pokémons com pesquisa e filtros.

### Detalhes do Pokémon
<!-- Adicionar imagem da tela de detalhes -->

Informações detalhadas do Pokémon selecionado.

### Favoritos
<!-- Adicionar imagem da tela de favoritos -->

Lista dos Pokémons favoritados pelo usuário.

### Perfil do Usuário
<!-- Adicionar imagem da tela de perfil -->

Exibe as informações da conta do usuário.

---

## Como Rodar o Projeto

1. **Clone o repositório**
   ```sh
   git clone https://github.com/seuusuario/pokedex_app.git
   ```
2. **Acesse o diretório do projeto**
   ```sh
   cd pokedex_app
   ```
3. **Instale as dependências**
   ```sh
   flutter pub get
   ```
4. **Configure o Firebase**
   - Adicione o arquivo `google-services.json` (Android) e `GoogleService-Info.plist` (iOS) na pasta `android/app` e `ios/Runner`
5. **Execute o aplicativo**
   ```sh
   flutter run
   ```

## Contribuição
Se quiser contribuir com melhorias, siga estes passos:

1. **Crie um fork do repositório**
2. **Crie um branch para a funcionalidade**
   ```sh
   git checkout -b minha-feature
   ```
3. **Faça commit das mudanças**
   ```sh
   git commit -m "Adiciona nova funcionalidade"
   ```
4. **Suba para o repositório remoto**
   ```sh
   git push origin minha-feature
   ```
5. **Abra um Pull Request** no GitHub

---

## Licença
Este projeto está sob a licença MIT. Veja o arquivo `LICENSE` para mais detalhes.

