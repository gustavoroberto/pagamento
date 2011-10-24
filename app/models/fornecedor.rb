# encoding: utf-8

require "brcpfcnpj"

class Fornecedor < ActiveRecord::Base
  has_many :conformidades

  validates :nome, presence: true
  validates :cnpj, presence: true, if: :pj?
  validates :cpf, presence: true, unless: :pj?
  validates_uniqueness_of :cnpj, :cpf
  usar_como_cpf :cpf
  usar_como_cnpj :cnpj
  validate :cpf_ou_cnpj

  private
    def cpf_ou_cnpj
      if cpf.present? and cnpj.present?
        errors[:base] << "Use CNPJ ou CPF."
      end

      if cpf.blank? and cnpj.blank?
        errors[:base] << "Use ao menos CNPJ ou CPF."
      end
    end
end