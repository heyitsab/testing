# Guia de Contribuição

Obrigado por seu interesse em contribuir para este projeto! Este documento fornece diretrizes para contribuir com o projeto.

## Como Contribuir

### 1. Fork e Clone

1. Faça um fork deste repositório para sua conta do GitHub
2. Clone o fork para sua máquina local:
   ```bash
   git clone https://github.com/seu-usuario/testing.git
   cd testing
   ```

### 2. Crie uma Branch

Crie uma nova branch para sua contribuição:
```bash
git checkout -b minha-contribuicao
```

### 3. Faça suas Alterações

- Mantenha seu código limpo e bem documentado
- Siga as convenções de estilo do projeto
- Certifique-se de que suas alterações não quebram o código existente

## Padrões de Código

### Ruby

Este projeto usa Ruby. Por favor, siga estas diretrizes:

- Use indentação de 2 espaços
- Use nomes de variáveis descritivos
- Escreva métodos curtos e focados
- Adicione comentários quando necessário para explicar lógica complexa

### Qualidade do Código

- **Não use `puts` no código de produção** - O projeto tem verificações automáticas que falharão se `puts` for encontrado no código
- **Não use `binding.pry` no código final** - Remova qualquer comando de debugging antes de fazer commit

## Testes

### Executando os Testes

Execute os testes antes de submeter suas alterações:
```bash
ruby alpaca_test.rb
```

### Escrevendo Testes

- Adicione testes para novas funcionalidades
- Certifique-se de que todos os testes passam antes de submeter um pull request
- Os testes devem ser claros e descritivos

## Processo de Pull Request

1. **Commit suas alterações:**
   ```bash
   git add .
   git commit -m "Descrição clara das alterações"
   ```

2. **Push para seu fork:**
   ```bash
   git push origin minha-contribuicao
   ```

3. **Abra um Pull Request:**
   - Vá para o repositório original no GitHub
   - Clique em "New Pull Request"
   - Selecione sua branch
   - Descreva claramente suas alterações
   - Explique o motivo da mudança

### Requisitos do Pull Request

- [ ] O código segue os padrões do projeto
- [ ] Os testes passam com sucesso
- [ ] Não contém declarações `puts` ou `binding.pry`
- [ ] A descrição do PR é clara e completa
- [ ] As alterações são relevantes e necessárias

## Reportando Problemas

Se você encontrar um bug ou tiver uma sugestão:

1. Verifique se já não existe uma issue similar
2. Abra uma nova issue com:
   - Título claro e descritivo
   - Descrição detalhada do problema ou sugestão
   - Passos para reproduzir (se aplicável)
   - Comportamento esperado vs. comportamento atual

## Código de Conduta

- Seja respeitoso e profissional
- Aceite críticas construtivas
- Foque no que é melhor para a comunidade
- Mostre empatia com outros membros da comunidade

## Dúvidas?

Se você tiver dúvidas sobre como contribuir, não hesite em:
- Abrir uma issue perguntando
- Entrar em contato com os mantenedores do projeto

## Agradecimentos

Toda contribuição é valiosa, seja ela grande ou pequena. Obrigado por ajudar a melhorar este projeto!
