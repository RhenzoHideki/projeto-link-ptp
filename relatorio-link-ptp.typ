
#import "@preview/klaro-ifsc-sj:0.1.0": report
#import "@preview/codelst:2.0.2": sourcecode
#set text(font: "Arial", size: 12pt)
#set text(lang: "pt")
#set page(
  footer: "Engenharia de Telecomunicações - IFSC-SJ",
)

#show: doc => report(
  title: "Projeto 1 - Link PTP com RadioMobile",
  subtitle: "Sistemas de Telecomunicações",
  authors: ("Matheus Pires Salazar","Rhenzo Hideki Silva Kajikawa",),
  date: "23 de Abril de 2025",
  doc,
)

= Introdução

O objetivo deste projeto é realizar o planejamento de um link ponto a ponto (PTP) utilizando o software RadioMobile. O projeto consiste em determinar a viabilidade do link entre dois pontos, considerando fatores como distância, ganho de antena, potência do transmissor e condições atmosféricas.

Este trabalho busca criar um cenário realista que justifique a implementação do enlace, sendo tangível e factível, com o objetivo de solucionar um possível problema. O enlace será ponto a ponto, com possibilidade de expansão para ponto multiponto, preferencialmente em ambientes outdoor, utilizando equipamentos reais.

Além disso, será considerado o orçamento necessário, incluindo o preço dos equipamentos e a mão de obra, para garantir um link mínimo de 3 km com uma taxa de confiabilidade de pelo menos 85%. O projeto também analisará os cenários ao redor da rede e suas aplicabilidades, criando uma necessidade ou identificando uma existente.

Serão avaliados os materiais obrigatórios e recomendados, análise de custo operacional, configurações necessárias, e aspectos como marketing B2B ou B2C, gerenciamento, implantação com especificações do enlace e conformidade com órgãos regulatórios, O&M, obras, financeiro, sustentabilidade, suporte e análise geográfica da região. Por fim, será verificado se o cenário proposto é cabível e útil.

== Detalhes do Enlace Planejado

O enlace a ser projetado apresenta as seguintes características principais:
- Tipo de enlace: Ponto a Ponto (PTP)
- Distância mínima entre os pontos: 3 km
- Taxa de confiabilidade esperada: Pelo menos 85%

#pagebreak()
= Desenvolvimento
O desenvolvimento do projeto será dividido em várias etapas, incluindo a análise do cenário, a escolha dos equipamentos, o planejamento do enlace e a implementação. A seguir, apresentamos um resumo de cada etapa.

== Definindo os Pontos do Enlace
A análise do cenário envolve a identificação dos pontos de transmissão e recepção, bem como a avaliação das condições geográficas da região. Para isso, utilizamos o software RadioMobile, que permite simular o enlace e avaliar sua viabilidade.
A figura a seguir mostra um dos pontos cadidatos que foi analisado.
#figure(
  figure(
    rect(image("./complementary/norte-da-ilha-1.png")),
    numbering: none
  ),
  caption: [
    Primeiro ponto selecionado.

   Fonte: Elaborada pelo autor
  ],
  supplement: "Figura"
);
#figure(
  figure(
    rect(image("./complementary/norte-da-ilha-2.png")),
    numbering: none
  ),
  caption: [
    Fotografia do primeiro local.

   Fonte: Elaborada pelo autor
  ],
  supplement: "Figura"
);
A figura é um ponto onde existe uma torre já existente, que pode ser utilizada para a instalação do enlace. A torre está localizada em uma região com boa visibilidade e acesso, o que facilita a instalação dos equipamentos.
A seguir, apresentamos a análise do segundo ponto candidato, que também foi considerado para o enlace.

#figure(
  figure(
    rect(image("./complementary/uni-prf-1.png",width: 75%)),
    numbering: none
  ),
  caption: [
    Segundo ponto selecionado.

   Fonte: Elaborada pelo autor
  ],
  supplement: "Figura"
);
#figure(
  figure(
    rect(image("./complementary/uni-prf-2.png")),
    numbering: none
  ),
  caption: [
    Fotografia do segundo local.

   Fonte: Elaborada pelo autor
  ],
  supplement: "Figura"
);
A UniPRF é um local estratégico para a segurança pública, sendo um centro de formação e capacitação de profissionais da área. A instalação do enlace neste local não apenas atenderia às necessidades de comunicação da instituição, mas também criaria um enlace de redundância, aumentando a confiabilidade da rede.

Além disso, a localização da UniPRF apresenta características favoráveis para a instalação do enlace, como a presença de infraestrutura existente e uma posição geográfica que facilita a propagação do sinal. A seguir, apresentamos uma tabela comparativa entre os dois pontos candidatos, destacando os principais fatores considerados na análise.

Para referência, os pontos foram colocados das seguintes formas dentro do RadioMobile:

#let pontos = csv("complementary/csv-pontos.csv")

#align(
  table(
    columns: 5,
    [Nome],[Longitude],[Latitude],[Zoom],[Elevação],
    ..pontos.flatten()
  ),
  center
)

== Especificações do Enlace
A especificação do enlace envolve a definição dos equipamentos a serem utilizados, incluindo antenas, transmissores e receptores. Para isso, consideramos as características dos pontos selecionados e as condições geográficas da região.
Logo abaixo temos a imagem da distância do enlace baseado no google maps. Como é possivel ver, a distância entre os dois pontos é de aproximadamente 4,4 km, distância é adequada para o projeto.
#figure(
  figure(
    rect(image("./complementary/distancia.png")),
    numbering: none
  ),
  caption: [
    Distância entre pontos.

   Fonte: Elaborada pelo autor
  ],
  supplement: "Figura"
);
Desconsiderando esta a zona de fresnel pois não representa o elance real, apenas um exemplo para vizualizar geografia do local escolhido.
Logo abaixo é possivel vizualizar a imagem.
#figure(
  figure(
    rect(image("./complementary/geografia.png")),
    numbering: none
  ),
  caption: [
    Geografia entre pontos.

   Fonte: Elaborada pelo autor
  ],
  supplement: "Figura"
);

== Definindo os Equipamentos
A escolha dos equipamentos é uma etapa crucial no planejamento do enlace. Para garantir a viabilidade do projeto, consideramos fatores como ganho de antena, potência do transmissor e frequencia de operação.
A seguir, apresentamos uma tabela com as especificações dos equipamentos propostos junto as suas frequencias de operação e outros dados.

#let antenas = csv("complementary/comparativo-antenas.csv")
#align(
  table(
    columns: 8,
    ..antenas.flatten()
  ),
  center
)
EH2200FX é ideal para enlaces de curta distância com alta capacidade de transmissão, sendo adequado para cenários onde a largura de banda é crítica. No entanto, o custo elevado pode ser um fator limitante.

Já AF-5U é mais acessível e oferece um alcance significativamente maior. No entanto, o ganho da antena e a potência de transmissão são inferiores ao EH2200FX, o que pode impactar a qualidade do enlace em cenários de alta interferência.

== Estabilidade do enlace
EH-2200FX (E-band 71–76/81–86 GHz):
- Opera em faixa licenciada, com feixe de antena muito estreito (“pencil beam”), praticamente livre de interferência externa.
- Atenuação atmosférica aproximadamente de 1.2 a 0.4  dB/km em E-band e link budget de até 179 dB (250 MHz) suportam enlaces de até 6,9 km com antenas de 43 dBi.
- Sensibilidade de recepção efetiva em torno de –60 dBm (com antena de 31cm, 43 dBi e canal de 250 MHz) mantém margem no link de 176–179 dB.

AF-5U (5.725–6.200 GHz)
- Opera em faixa não licenciada, com EIRP configurável até +50 dBm EIRP; ATPC e modulação adaptativa xRT reduzem interferência e maximizam qualidade do enlace. 
- Antena integrada split de 23 dBi (TX/RX) e sensibilidade de –95 a –57 dBm (dependendo da modulação e largura de canal) garantem enlace estável mesmo em ambientes com ruído moderado .
- Links ponto a ponto de 100+ km indicam folga de margem para 4,4 km, com baixa atenuação atmosférica na faixa de 5 GHz.


== Viabilidade
Para avaliar a viabilidade econômica do projeto, consideramos o custo dos equipamentos e a mão de obra necessária para a instalação do enlace.
Para isso irémos fazer uma análise separa por equipamento e a mão de obra necessária e também outros custos que podem ser necessários para a instalação do enlace.

=== Operar Siklu EtherHaul-2200FX
Operar um elance com o Siklu EtherHaul-2200FX envolve custos de aquisição, instalação e manutenção. O preço do equipamento é elevado, mas oferece alta capacidade de transmissão e baixa latência. A instalação requer mão de obra especializada e pode incluir custos adicionais com infraestrutura, como torres e cabos. A manutenção regular é essencial para garantir o desempenho ideal do enlace.
A tabela abaixo apresenta uma estimativa de custos para a operação do Siklu EtherHaul-2200FX, considerando os principais fatores envolvidos.
#let siklu = csv("complementary/comparativo-siklu.csv")

#align(
  table(
    columns: 4,
    ..siklu.flatten()
  ),
  center
)

O custo de despesa de capital é de um total de R\$55374,82 ou seja os custos de equipamentos e instalação, enquanto o custo de operação gira em torno de R\$ 15477-48477 por ano, considerando a manutenção , custo de energia e licenças.

O equipamento Siklu EtherHaul-2200FX é ideal para aplicações que exigem alta capacidade de transmissão e baixa latência, como serviços de internet de alta velocidade, transmissão de vídeo em tempo real e aplicações críticas em ambientes urbanos. 

=== Operar AF-5U
Agora uma análise do enlace com o AF-5U, que é um equipamento mais acessível e oferece um alcance significativamente maior. O custo de aquisição do AF-5U é menor em comparação ao Siklu EtherHaul-2200FX, o que torna o projeto mais viável economicamente. A instalação também requer mão de obra especializada, mas os custos adicionais com infraestrutura podem ser menores devido à flexibilidade do equipamento.
A tabela abaixo apresenta uma estimativa de custos para a operação do AF-5U, considerando os principais fatores envolvidos.
#pagebreak()
#let af5u = csv("complementary/comparativo-af5u.csv")
#align(
  table(
    columns: 4,
    ..af5u.flatten()
  ),
  center
)
O custo de despesa de capital é de um total de R\$26377,76 ou seja os custos de equipamentos e instalação, enquanto o custo de operação gira em torno de R\$ 14852-48452   por ano, considerando a manutenção , custo de energia e licenças.

== Simulação do enlace
A simulação do enlace foi realizada utilizando o software RadioMobile, que permite avaliar a viabilidade do enlace considerando fatores como ganho de antena, potência do transmissor e condições atmosféricas. A seguir, apresentamos os resultados da simulação para os dois equipamentos considerados.
Os pontos podem ser visualizados na imagem abaixo, onde é possivel ver a distancia entre os dois pontos.
#figure(
  figure(
    rect(image("./complementary/enlace-uniPrf-Norte.png")),
    numbering: none
  ),
  caption: [
    Simulação do enlace.

   Fonte: Elaborada pelo autor
  ],
  supplement: "Figura"
);

=== Resultados da Simulação do Siklu EtherHaul-2200FX
A simulação do enlace utilizando o Siklu EtherHaul-2200FX apresentou os seguintes resultados:
#let siklu-perfomance = csv("complementary/71-performance.csv")
#let siklu-propagation = csv("complementary/71-propagation.csv")
#let siklu-radio-system = csv("complementary/71-radio-system.csv")
Abaixo temos os resultados da simulação do Siklu EtherHaul-2200FX, onde é possivel ver a performance do enlace, a propagação e o sistema de radio.
#align(
  table(
    columns: 2,
    ..siklu-perfomance.flatten()
  ),
  center
)
#align(
  table(
    columns: 2,
    ..siklu-propagation.flatten()
  ),
  center
)
#align(
  table(
    columns: 2,
    ..siklu-radio-system.flatten()
  ),
  center
)
Aqui é possível ver a imagem do link:

#figure(
  figure(
    rect(image("./complementary/radio-71GHz.png")),
    numbering: none
  ),
  caption: [
    Simulação do enlace.

   Fonte: Elaborada pelo autor
  ],
  supplement: "Figura"
);

=== Resultados da Simulação do AF-5U
A simulação do enlace utilizando o AF-5U apresentou os seguintes resultados:
#let af5u-perfomance = csv("complementary/5-7-performance.csv")
#let af5u-propagation = csv("complementary/5-7-propagation.csv")
#let af5u-radio-system = csv("complementary/5-7-radio-system.csv")

Abaixo temos os resultados da simulação do AF-5U, onde é possivel ver a performance do enlace, a propagação e o sistema de radio.
#align(
  table(
    columns: 2,
    ..af5u-perfomance.flatten()
  ),
  center
)
#align(
  table(
    columns: 2,
    ..af5u-propagation.flatten()
  ),
  center
)
#align(
  table(
    columns: 2,
    ..af5u-radio-system.flatten()
  ),
  center
)
Aqui é possível ver a imagem do link:
#figure(
  figure(
    rect(image("./complementary/radio-5-7GHz.png")),
    numbering: none
  ),
  caption: [
    Simulação do enlace.

   Fonte: Elaborada pelo autor
  ],
  supplement: "Figura"
);
#pagebreak()

= Resultados

= Referências