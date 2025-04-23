
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
A figura é um ponto onde existe uma torre já existente, que pode ser utilizada para a instalação do enlace. A torre está localizada em uma região com boa visibilidade e acesso, o que facilita a instalação dos equipamentos.
A seguir, apresentamos a análise do segundo ponto candidato, que também foi considerado para o enlace.

#figure(
  figure(
    rect(image("./complementary/uni-prf.png")),
    numbering: none
  ),
  caption: [
    Segundo ponto selecionado.

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
A seguir, apresentamos uma tabela com as especificações dos equipamentos selecionados para o enlace.

== Orçamento

== Aluguel

= Resultados

= Referências