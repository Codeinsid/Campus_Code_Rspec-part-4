require 'spec_helper'

describe 'DataControl' do
  it '1: Recebe o array de dados cadastrais e retorna quais são inválidos' do
    data_list = [{nome_completo: 'Otávia', aniversario: '19/08/1997', senha: 'Otavio@123', cpf: '14394564026' }]

    expect(DataControl.new(data_list).validate_data_list).to eq([0])
  end

  it '2: Recebe o array de dados cadastrais e retorna quais são inválidos' do
    data_list = [{ nome_completo: 'Otávia Lins', aniversario: '19/08/1997', senha: 'Otavio@123', cpf: '14394564026' },
                 { nome_completo: 'Joana Almeida', aniversario: '05/13/1940', senha: 'Beafofa00', cpf: '69147414090' }]

    expect(DataControl.new(data_list).validate_data_list).to eq([1])
  end

  it '3: Recebe o array de dados cadastrais e retorna quais são inválidos' do
    data_list = [{ nome_completo: 'Otávia Lins', aniversario: '19/08/1997', senha: 'Otavio@123', cpf: '14394564026' },
                 { nome_completo: 'Joana Almeida', aniversario: '05/11/1940', senha: 'Beafofa00', cpf: '69147414090' },
                 { nome_completo: 'Gabriela Castro', aniversario: '12/11/2000', senha: 'Senha@123', cpf: '04536086048' }]

    expect(DataControl.new(data_list).validate_data_list).to eq('Todos são válidos')
  end

  it '4: Recebe o array de dados cadastrais e retorna quais são inválidos' do
    data_list = [{ nome_completo: 'Otávia Lins', aniversario: '19/08/1997', senha: 'otavio@123', cpf: '14394564026' },
                 { nome_completo: 'Joana Almeida', aniversario: '05/11/1940', senha: 'Beafofa00', cpf: '69147414093' },
                 { nome_completo: 'Gabr1ela Castro', aniversario: '12/11/2000', senha: 'Senha@123', cpf: '04536086048' },
                 { nome_completo: 'Andréia Kanamura', aniversario: '09/04/1983', senha: 'Senha', cpf: '87002508059' },
                 { nome_completo: 'Erick Campus', aniversario: '21/03/2010', senha: 'SenhaDificil', cpf: '62087017085' },
                 { nome_completo: 'Cláudio Capelini', aniversario: '12/07/1953', senha: 'Claud1aodosgatos', cpf: '58643325007'},
                 { nome_completo: 'Ano Carolino', aniversario: '18/01/1998', senha: 'Thelast0fUs', cpf: '08242112002' }
                ]

    expect(DataControl.new(data_list).validate_data_list).to eq([0,1,2,3,4])
  end
end