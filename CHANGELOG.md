# Changelog

Histórico da TurboFraction. Cada versão abaixo repete as notas do commit em que ela foi publicada.

## 1.5.9 — 2026-10-29

### Consulta da remessa

- O endereço do Local de Entrega abre no Google Maps com nome, endereço e cidade.
- Botão flutuante **Mensagem de rastreamento**, no centro inferior, com **+** à esquerda. O clique copia um texto para o cliente e oferece abrir no WhatsApp:
  - primeira linha: número do conhecimento;
  - segunda linha: a última movimentação, em frase, e o lugar.
- Quando a última operação é disponível para retirada (`DISPONIVEL PARA RETIRADA PICKUP`), o lugar da mensagem é o Local de Entrega (nome, endereço e cidade), em vez da unidade do histórico.

### Emissão

- O botão **Limpar** fica vermelho, com ícone de alerta, e separado dos outros botões do rodapé.
- O clique abre uma confirmação antes de apagar a emissão. No diálogo, o texto do Limpar fica escuro e o ícone de alerta vermelho.

## 1.5.8 — 2026-10-29

- Relatório de Pendências: grupo 'Outras Pendências' que pode ser recolhido (−/+)
- Performance: botões de período preenchem as datas sem abrir o calendário; Destino não é mais escolhido sozinho
- On Time: quando o Fraction não responde, o código volta para a fila e é tentado de novo (link 'reenviar' nos erros)
- Lista On Time: leituras mostram a remessa da lista com link para a consulta e um ✕ para excluí-la
- Consulta: com texto selecionado, o botão Imprimir fica vermelho e imprime uma etiqueta com o texto

## 1.5.7 — 2026-10-27

- Lista On Time: botão Completar no card 'Remessa incompleta' (adiciona os volumes que faltam)
- Lista de Entrega: botões Mostrar Status e Vencimento do Dia em vermelho

## 1.5.6 — 2026-10-27

- Lista On Time: card 'Remessa incompleta' com volumes lidos e faltantes, e botão Excluir
- Lista On Time: Processar dentro da janela, com a confirmação de volumes faltantes; a janela fica limpa para a próxima lista
- Performance: campo Destino escolhido automaticamente
- Painel de Pendências: células com 10 dias ou mais em vermelho forte

## 1.5.5 — 2026-10-27

- Lista On Time: card 'Remessa incompleta' com volumes lidos e faltantes, e botão Excluir
- Lista On Time: Processar dentro da janela, com a confirmação de volumes faltantes; a janela fica limpa para a próxima lista
- Performance: campo Destino escolhido automaticamente
- Painel de Pendências: células com 10 dias ou mais em vermelho forte

## 1.5.4 — 2026-10-24

- Lista de Entrega: botão On Time (lê os volumes um a um, adiciona à nova lista e processa com a Rota na própria janela)
- On Time: leitura duplicada em amarelo, erros só da sessão e zerados ao processar, lista com até 500 leituras numeradas
- On Time: cards de erro clicáveis (consulta da remessa ou Consulta pela NF com 30 dias)
- Consulta: número da lista vira link para imprimir (quando o último EM ROTA tem até 30 dias)
- Conferência: o botão do PDF mostra o motivo quando o Fraction não devolve o arquivo

## 1.5.2 — 2026-10-23

- Entrada On Time no Recebimento de Remessa (leitura contínua, erros num painel, buffer com .txt diário e arrastar arquivo)
- Conferência de manifesto: Faltantes por Circuit, com peso, bairro, Produtos (NF-e) e PDF original
- Mostrar Status e Vencimento do Dia consideram todas as páginas de listas
- Nova Lista: janela de erros sem as mensagens de item já na lista / inválido / não localizado
- Consulta: botão do Google Maps pela foto do comprovante e link CT-e/NF-e corrigido
- Cartão de ocorrência menor, escolhe ENTREGA e fecha atualizando a consulta
- Botão Início no cabeçalho, aviso de coletas escondido e períodos rápidos na Performance

## 1.5.1 — 2026-10-22

- Atalhos no quadro de boas-vindas (Emissão, Recebimento, Envio, Conferir manifesto, Lista de entrega, Devolução, Performance, Pesquisar)
- Vencimentos do Dia na Performance: por Circuit ou Status, data editável e grupos minimizáveis
- Painel da Performance reaproveita o arquivo até a próxima atualização do Fraction
- Ocorrência para até 100 remessas no campo Remessa
- Consulta: NFs da mesma remessa agrupadas numa linha
- Janela da extensão: link de download e Reportar erro pelo WhatsApp

## 1.4.3 — 2026-10-21

- Previsão vencida em vermelho e negrito no cartão das remessas da Lista de Entrega

## 1.4.2 — 2026-10-21

- Clique no ícone da extensão agora verifica se há atualização

## 1.4.1 — 2026-10-21

- Removido o botão Reimprimir etiqueta da tela de consulta da remessa

## 1.4.0 — 2026-10-21

- Painel de Pendências com dias parados (CUSTÓDIA por ocorrência, demais status e transferências da filial)
- Aviso automático de nova versão
