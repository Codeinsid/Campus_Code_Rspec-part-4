require 'spec_helper'

describe 'GameShow' do
  it '1: Recebe a lista de intervalos comerciais e retorna a quantidade de pausas preenchidas' do
    breaks = [4, 5]
    maximum_time = 4

    expect(GameShow.new.commercial_breaks(breaks, maximum_time)).to eq([[0]])
  end

  it '2: Recebe a lista de intervalos comerciais e retorna a quantidade de pausas preenchidas' do
    breaks = [2, 5, 4]
    maximum_time = 4

    expect(GameShow.new.commercial_breaks(breaks, maximum_time)).to eq([[2]])
  end

  it '3: Recebe a lista de intervalos comerciais e retorna a quantidade de pausas preenchidas' do
    breaks = [2, 5, 4, 3]
    maximum_time = 5

    expect(GameShow.new.commercial_breaks(breaks, maximum_time)).to eq([[0,3]])
  end

  it '4: Recebe a lista de intervalos comerciais e retorna a quantidade de pausas preenchidas' do
    breaks = [2, 5, 4, 3]
    maximum_time = 7

    expect(GameShow.new.commercial_breaks(breaks, maximum_time)).to eq([[0,1],[2,3]])
  end

  it '5: Recebe a lista de intervalos comerciais e retorna a quantidade de pausas preenchidas' do
    breaks = [2, 5, 4, 3, 1]
    maximum_time = 8

    expect(GameShow.new.commercial_breaks(breaks, maximum_time)).to eq([[0,1,4],[2,3,4]])
  end

  it '6: Recebe a lista de intervalos comerciais e retorna a quantidade de pausas preenchidas' do
    breaks = [10, 12, 13, 14, 8, 7, 5, 20, 19, 9]
    maximum_time = 40

    expect(GameShow.new.commercial_breaks(breaks, maximum_time)).to eq([[0, 4, 5, 6, 9]])
  end
end