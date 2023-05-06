
# Testes para recrutamento e seleção de desenvolvedores Flutter Edusoft

Objetivo: Avaliar as habilidades de desenvolvimento de
uma solução como: raciocínio, organização e padrões
de projetos utilizados.

# Solução/Teste

Construir um projeto que consuma web-service obtenha dos
dados do nomes do Censo, e mostre em uma lista com
rolagem e paginação

## Solução

Tecnologias:
   - Linguagem: Flutter & Dart SDK;
   - Padrões de Projeto: Clean Architecure (Clean Dart), MVVM (Aplicada na camada de apresentação), DTO, Repository, Inversão de Controle (IoC);
   - Reatividade: ValueNotifier Nativo do Flutter;
   
Features:
   - Paginação com Scroll infinito;
   - Camada de testes unitários;
   - Layout responsivo;

## Setup
Download de dependências e execução do projeto:
   - flutter pub get
   - flutter pub run build_runner build --delete-conflicting-outputs
   - flutter run

Execução de testes unitários:
   - flutter test


## Detalhes
Tempo gasto: 4 horas.
Desafios encontrados: 
   - Tomada sobre a melhor abordagem para implementar a paginação, considerando que a API base não oferece suporte nativo para paginação.
