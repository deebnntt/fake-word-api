class Definition < ApplicationRecord

  belongs_to :word
  belongs_to :user, optional: true

end
