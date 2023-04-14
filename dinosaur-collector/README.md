# Dinossauro coletor

Para ajudar a lidar com a crescente onda de brinquedos espalhados pela casa por conta do crescimento de sua criança, uma programadora resolveu criar um dinossauro coletor para ajudá-la no recolhimento desses brinquedos. O dinossauro coletor é um robô que anda pela casa seguindo sempre um caminho em linha reta, determinado pelo input de dois pontos no software que acompanha o robô. Esse software pode receber um mapa da localização dos brinquedos e traça automaticamente um trajeto para o robô seguir, sempre buscando o brinquedo mais próximo ao dinossauro a cada movimento.

O robô, porém, ainda está em fase experimental e demanda muita energia para realizar seus movimentos. A cada unidade de distância que o dinossauro percorre, ele perde 1% de bateria.

Nesse desafio, você deve escrever um código que, ao receber os pontos onde os brinquedos se encontram `toys_positions`, a posição inicial do dinossauro `dino_position` e a quantidade de bateria atual do robô `battery`, deve traçar o caminho automático que o robô deve seguir para coletar os brinquedos do ambiente. Esse caminho deve sempre enviar o robô para o ponto mais próximo dele que contém um brinquedo. Ao final da execução do código, este deve retornar o caminho a ser seguido, a quantidade de brinquedos a ser recolhida e a porcentagem de bateria restante no robô ao final do código.

## Informações adicionais

- Caso o dinossauro não tenha bateria suficiente para alcançar o próximo brinquedo, o programa é encerrado;
- A porcentagem de bateria final a ser exibida deve ser arredondada para duas casas decimais;
- A fórmula da distância entre dois pontos A, de coordenadas [iA, jA] e B, de coordenadas [iB, jB] é dada por:

  <p> &radic;((iB - iA)<sup>2</sup> + (jB - jA)<sup>2</sup>)
