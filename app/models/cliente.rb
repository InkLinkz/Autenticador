class Cliente < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true
  validates :nome, :document, :email, :telefone, :aniversario, presence: true
end
