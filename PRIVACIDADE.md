# Política de Privacidade — TurboFraction

Última atualização: 12/11/2026

A TurboFraction é uma extensão independente do Google Chrome que adiciona recursos de produtividade ao sistema Fraction Web, usado pelas unidades operacionais da rede Jadlog. Ela não é um produto oficial da Jadlog. Só funciona para quem já tem login no Fraction Web e usa apenas os dados que esse usuário já pode ver no sistema.

## Quais dados a extensão usa

Para funcionar, a extensão lê informações exibidas nas páginas do Fraction Web, por exemplo:
- números de remessas, coletas, manifestos, listas de entrega e notas fiscais;
- status, ocorrências, datas, circuits e pesos das remessas;
- nome, endereço, telefone e CPF/CNPJ do remetente e do destinatário, que aparecem na consulta e na emissão;
- códigos lidos pelo leitor de código de barras nas telas de Recebimento, Lista de Entrega e Emissão;
- os arquivos da Performance de Entrega e de Coleta gerados pelo próprio Fraction Web.

## Onde os dados ficam

- **No próprio computador.** Tudo é processado no navegador do usuário. A extensão guarda no armazenamento local do Chrome (e, como cópia de segurança, no armazenamento local do próprio site do Fraction Web) apenas o necessário:
  - os códigos lidos, para o usuário salvar ou reenviar;
  - os arquivos da Performance, para não gerar de novo até a próxima atualização do Fraction;
  - as remessas fixadas;
  - os textos prontos de observação;
  - os nomes de motoristas dos PUDOs;
  - as preferências de tela.
- **Nada é enviado ao desenvolvedor.** A extensão não tem servidor próprio, não coleta estatísticas de uso, não usa cookies de rastreamento e não vende nem compartilha dados com terceiros.

## Quando dados saem do computador

Só por ação do usuário e só para estes destinos:
- **Fraction Web (jadlog.com.br / jadlog.com):** os mesmos pedidos que o usuário faria clicando nas telas do sistema.
- **Portal da NF-e (nfe.fazenda.gov.br) e do CT-e (cte.fazenda.gov.br):**
  - Ao clicar em "Consultar NF-e" ou nos links de NF-e/CT-e, a chave de acesso é preenchida na consulta pública do governo. O captcha é sempre resolvido pelo usuário.
  - Na tela de Emissão, os dados da nota exibidos pelo portal são copiados para os campos do Fraction Web no próprio computador.
- **Google Maps e WhatsApp:** ao clicar nos ícones de mapa ou de WhatsApp, o endereço ou o telefone é aberto nesses serviços.
- **QR Code das remessas faltantes:** o QR Code é gerado no próprio computador com os números das remessas e só é lido por quem o usuário escolher.

## Permissões

- **storage / unlimitedStorage:** guardar localmente os dados listados acima.
- **webRequest:** observar (sem alterar) um redirecionamento do próprio Fraction Web na tela de Consulta, para abri-la corretamente em https.
- **alarms:** usada apenas na versão distribuída fora da Chrome Web Store, para verificar periodicamente se há versão nova. A versão da loja não usa essa permissão.
- **Acesso a sites:**
  - a extensão só atua nas páginas do Fraction Web;
  - também atua na página de consulta de NF-e/CT-e quando o usuário a abre pela extensão.

## Contato

Dúvidas sobre esta política: WhatsApp (24) 99948-7331, o mesmo do botão "Reportar erro" da extensão.
