# Projeto Alpaca 🦙

Bem-vindo ao projeto Alpaca! Este é um projeto Ruby simples que implementa uma classe Alpaca com funcionalidades básicas e testes automatizados.

## Descrição

Este projeto contém:
- Uma classe `Alpaca` que representa uma alpaca com propriedades e comportamentos
- Testes automatizados para verificar a qualidade do código
- Verificação de código para garantir boas práticas

## Requisitos

- Ruby 3.2.3 ou superior

## Estrutura do Projeto

```
.
├── alpaca.rb        # Classe principal Alpaca
├── alpaca_test.rb   # Testes e verificações de código
└── alpaca.jpg       # Imagem ilustrativa de uma alpaca
```

## Classe Alpaca

A classe `Alpaca` possui os seguintes atributos:

- **name** (nome): Nome da alpaca
- **age** (idade): Idade da alpaca
- **color** (cor): Cor da alpaca
- **wool_length** (comprimento da lã): Comprimento da lã em centímetros

### Métodos

#### `initialize(name, age, color, wool_length)`
Inicializa uma nova instância de Alpaca com os parâmetros fornecidos.

#### `feed(food)`
Alimenta a alpaca com um determinado alimento.
- **Parâmetro**: `food` - tipo de alimento
- **Retorna**: String descrevendo a ação de alimentação

#### `make_sound()`
Faz a alpaca emitir seu som característico.
- **Retorna**: String com o som da alpaca

#### `display_info()`
Exibe informações completas sobre a alpaca.
- **Retorna**: String formatada com todas as informações da alpaca

## Uso

### Exemplo Básico

```ruby
require_relative 'alpaca'

# Criar uma nova alpaca
minha_alpaca = Alpaca.new("Fluffy", 5, "branca", 15)

# Exibir informações
puts minha_alpaca.display_info
# Saída: Name: Fluffy, Age: 5, Color: branca, Wool Length: 15 cm

# Alimentar a alpaca
puts minha_alpaca.feed("capim")
# Saída: Alpaca Fluffy is eating capim.

# Ouvir o som da alpaca
puts minha_alpaca.make_sound
# Saída: Alpaca Fluffy says 'Mmmm!'
```

### Acessando e Modificando Atributos

```ruby
# Acessar atributos
puts minha_alpaca.name          # "Fluffy"
puts minha_alpaca.age           # 5
puts minha_alpaca.color         # "branca"
puts minha_alpaca.wool_length   # 15

# Modificar atributos
minha_alpaca.name = "Fofinha"
minha_alpaca.age = 6
minha_alpaca.wool_length = 20
```

## Testes

O arquivo `alpaca_test.rb` contém verificações automatizadas de qualidade de código que:

1. **Verifica declarações `puts`**: Garante que não há declarações `puts` no código de produção (exceto nos testes)
2. **Verifica `binding.pry`**: Garante que não há pontos de depuração esquecidos no código

### Executar Testes

```bash
ruby alpaca_test.rb
```

Se tudo estiver correto, você verá:
```
No 'puts' statements found in the provided files.
No 'binding.pry' statements found in the provided files.
```

## Contribuindo

Sinta-se à vontade para contribuir com este projeto! Algumas sugestões:

- Adicionar novos comportamentos para a classe Alpaca
- Implementar testes unitários mais robustos
- Adicionar documentação adicional
- Melhorar a validação de dados

## Sobre Alpacas 🦙

As alpacas são animais domésticos sul-americanos, parentes das lhamas. São conhecidas por:
- Sua lã macia e quente
- Temperamento gentil e curioso
- Sons característicos ("Mmmm!")
- Serem animais de rebanho sociais

## Licença

Este é um projeto de teste e demonstração.
