require 'spec_helper'

describe 'Validator' do
  it '1: Recebe um hash com dados cadastrais e decide se é válido ou não' do
    data = {nome_completo: 'Verônico', aniversario: '15/03/2090', senha: 'Passw0rd', cpf: '49638353040' }

    expect(Validator.new(data).data_checker).to eq('Inválido')
  end

  it '2: Recebe um hash com dados cadastrais e decide se é válido ou não' do
    data = {nome_completo: 'Verônico Orellano', aniversario: '15/03/2000', senha: 'Passw0rd', cpf: '49638353040' }

    expect(Validator.new(data).data_checker).to eq('Válido')
  end

  it '3: Recebe um hash com dados cadastrais e decide se é válido ou não' do
    data = {nome_completo: 'Valesco Franco', aniversario: '17/04/1990', senha: 'Maluz1n', cpf: '69436352047' }

    expect(Validator.new(data).data_checker).to eq('Inválido')
  end

  it '4: Recebe um hash com dados cadastrais e decide se é válido ou não' do
    data = {nome_completo: 'Caia Duarte', aniversario: '22/12/1978', senha: 'senhavalida', cpf: '50958306044' }

    expect(Validator.new(data).data_checker).to eq('Inválido')
  end
end