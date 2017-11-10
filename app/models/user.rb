class User < ApplicationRecord

  has_many :definitions
  has_many :words, through: :defintions

end
