class Word < ApplicationRecord

  has_many :definitions
  has_many :users, through: :defintions

end
