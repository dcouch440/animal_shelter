class Cat < ApplicationRecord
  validates *%i[name breed gender coat_length size], presence: true

end