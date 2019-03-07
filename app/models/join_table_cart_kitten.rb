class JoinTableCartKitten < ApplicationRecord
  belongs_to :cart
  belongs_to :kitten
end
