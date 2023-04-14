require 'spec_helper'

describe 'DinosaurCollector' do
  it '1: Recebe a posição dos brinquedos, a posição do dinossauro e sua bateria e retorna as informações pedidas' do
    toys_positions = [[0,2]]
    dino_position = [0,0]
    battery = 100
    result = DinosaurCollector.new.toy_collecting(toys_positions, dino_position, battery)

    expect(result).to eq([[[0,0],[0,2]],1,98])
  end

  it '2: Recebe a posição dos brinquedos, a posição do dinossauro e sua bateria e retorna as informações pedidas' do
    toys_positions = [[0,2],[0,-2]]
    dino_position = [0,1]
    battery = 100
    result = DinosaurCollector.new.toy_collecting(toys_positions, dino_position, battery)

    expect(result).to eq([[[0,1],[0,2],[0,-2]],2,95])
  end

  it '3: Recebe a posição dos brinquedos, a posição do dinossauro e sua bateria e retorna as informações pedidas' do
    toys_positions = [[5,0],[1,0],[-2,0],[-5,0]]
    dino_position = [0,0]
    battery = 100
    result = DinosaurCollector.new.toy_collecting(toys_positions, dino_position, battery)

    expect(result).to eq([[[0,0],[1,0],[-2,0],[-5,0],[5,0]],4,83])
  end

  it '4: Recebe a posição dos brinquedos, a posição do dinossauro e sua bateria e retorna as informações pedidas' do
    toys_positions = [[-3,0],[3,0],[3,1],[-1,-1],[-2,1],[-3,1]]
    dino_position = [-6,0]
    battery = 80
    result = DinosaurCollector.new.toy_collecting(toys_positions, dino_position, battery)

    expect(result).to eq([[[-6, 0], [-3, 0], [-3, 1], [-2, 1], [-1, -1], [3, 0], [3, 1]], 6, 67.64])
  end

  it '5: Recebe a posição dos brinquedos, a posição do dinossauro e sua bateria e retorna as informações pedidas' do
    toys_positions = [[10,0],[2,4],[2,3],[6,3],[3,5],[6,5],[12,5],[10,3]]
    dino_position = [-4,3]
    battery = 20
    result = DinosaurCollector.new.toy_collecting(toys_positions, dino_position, battery)

    expect(result).to eq([[[-4, 3], [2, 3], [2, 4], [3, 5], [6, 5], [6, 3], [10, 3]], 6, 2.59])
  end

  it '6: Recebe a posição dos brinquedos, a posição do dinossauro e sua bateria e retorna as informações pedidas' do
    toys_positions = [[10,0],[2,4],[2,3],[6,3],[3,5],[6,5],[12,5],[10,3]]
    dino_position = [-4,3]
    battery = 25.63
    result = DinosaurCollector.new.toy_collecting(toys_positions, dino_position, battery)

    expect(result).to eq([[[-4, 3], [2, 3], [2, 4], [3, 5], [6, 5], [6, 3], [10, 3], [12, 5], [10, 0]], 8, 0.0])
  end
end