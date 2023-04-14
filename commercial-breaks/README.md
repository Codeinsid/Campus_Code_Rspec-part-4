# Preenchendo intervalos comerciais

Numa determinada emissora de TV, periodicamente, programas de jogos interativos são exibidos nos intervalos para preencher a grade de programação. Normalmente, é escolhido um jogo por dia e ele é persistido durante diferentes intervalos durante o dia.

Nesse desafio, você irá receber uma lista representando os intervalos comerciais onde o jogo deve ir ao ar `commercial_breaks`, onde cada posição da lista é um intervalo comercial, e seu valor representa a quantidade de minutos que precisam ser preenchidos, além do tempo máximo de exibição que aquele jogo consegue cobrir `maximum_time`. Seu código deve retornar a maior quantidade de intervalos possíveis que aquele jogo consegue cobrir. Nos casos onde há mais de uma forma de se preencher a mesma quantidade de comerciais com um jogo, seu código deve devolver os intervalos comerciais que usam a maior quantidade de tempo de jogo possível.
