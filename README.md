# Pokédex App

Este é um aplicativo de Pokédex desenvolvido em Flutter com arquitetura MVVM, utilizando Flutter Modular para modularização e Firebase para autenticação e persistência de dados. O app também implementa o Hive para um modelo offline-first.

## Créditos pelo front-end
- O design das telas utilizadas nesse aplicativo foram feitos pelo designer de UI/UX **Junior Saraiva** - Linkedin: <a>https://www.linkedin.com/in/junior-saraiva/</a>
- Figma com as telas utilizadas: <a>https://www.figma.com/design/CdunalBBehDO1UfsLgk1oP/Pok%C3%A9dex-%2F-Pok%C3%A9mon-App-(Community)?node-id=95-236&p=f&t=OVQEkFz0NOAsUMtO-0</a>

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
<img src="https://github.com/user-attachments/assets/18af34af-e7ac-480e-b564-5b1b9754709d" alt="Tela animada Splash" width="300">

A animação na Splash Screen destaca cada letra do nome "Pokédex" surgindo individualmente.
Esse efeito é obtido por meio de um `AnimationController`, transformando a String "Pokédex" em um array de caracteres. O `animationBuilder` faz com que cada letra aumente seu tamanho em 1.5x por 0.5 segundos e logo após reverte o fazendo voltar ao normal, ao encerrar a animação de um caracter ele pula para o outro. A animação continua até a tela ser fechada após todos os dados essenciais para o aplicativo serem carregados.

### Tela de Onboarding
<img src="https://github.com/user-attachments/assets/47cb072f-0706-41b9-b6e4-5a204abfa388" alt="Tela com Carousel onboarding" width=300>

Tela de onboarding, informa ao usuário o proposito principal do aplicativo de forma objetiva e intuitiva.
Nessa tela foi utilizado o widget `CarouselSlider` juntamente com um `AnimatedContainer` para animar o indicador inferior ao mudar as telas.

### Tela para Escolher Login ou registrar
<img src="https://github.com/user-attachments/assets/f6ee7eb7-edf1-4ba8-bafa-7b3e708e3b54" width=300>

Essa tela tem como função fornecer ao usuário uma escolha entre logar ou se registrar, ele também pode optar por pular o login/registro caso queira, podendo utilizar o app sem a necessidade de se logar no mesmo.

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

