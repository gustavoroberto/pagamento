# encoding: utf-8

require 'spec_helper'

describe Fornecedor do
  it "é válido com nome" do
    Fornecedor.new(nome: 'Apple', cnpj: '00000000000191', pj: true).should be_valid
  end

  it "é inválido sem nome" do
    Fornecedor.new(cnpj: '00000000000191', pj: true).should be_invalid
  end

  it "valida CPF" do
    Fornecedor.new(nome: 'Julio', cpf: '01052529135').should be_valid
    Fornecedor.new(nome: 'Fulano', cpf: '1').should be_invalid
  end

  it "valida CNPJ" do
    Fornecedor.new(nome: 'Apple', cnpj: '00000000000191', pj: true).should be_valid
    Fornecedor.new(nome: 'MS', cnpj: '1', pj: true).should be_invalid
  end

  it "não aceita CPF e CNPJ juntos" do
    Fornecedor.new(nome: 'Apple', cnpj: '00000000000191', cpf: '01052529135').should be_invalid
  end

  it "não aceita CPF e CNPJ vazios ao mesmo tempo" do
    Fornecedor.new(nome: 'Apple').should be_invalid
  end

  it "verifica CNPJ quando for Pessoa jurídica" do
    Fornecedor.new(nome: 'Apple', pj: true, cnpj: '00000000000191').should be_valid
    Fornecedor.new(nome: 'Apple', pj: true, cpf: '01052529135').should be_invalid
  end
    
  it "verifica CPF quando for Pessoa física" do
    Fornecedor.new(nome: 'Fulano', pj: false, cpf: '01052529135').should be_valid
    Fornecedor.new(nome: 'Fulano', pj: false, cnpj: '00000000000191').should be_invalid
  end

  it "apaga CPF quando for Pessoa jurídica" do
    Fornecedor.create!()
  end

  it "apaga CNPJ quando for Pessoa física"

end