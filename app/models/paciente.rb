class Paciente < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 3}
  validates :cpf, presence: true, length: {minimum: 11}, uniqueness: true
  validates :telefone, presence: true, length: {minimum: 11}
  VALID_EMAIL_FORMAT= /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, presence: true, length: {minimum: 5}, format: { with: VALID_EMAIL_FORMAT}, uniqueness: {case_sensitive: false}
  validates :endereco, presence: true, length: {minimum: 10}
  validates :estado_civil, presence: true, length: {minimum: 5}
  validates :quant_filhos, presence: true
  validates :eh_fumante, presence: true
  validates :ingere_alcool, presence: true
  belongs_to :psicologo
  has_many :sessaos, dependent: :destroy
end
