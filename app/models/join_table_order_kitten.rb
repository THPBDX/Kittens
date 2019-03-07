class JoinTableOrderKitten < ApplicationRecord
  belongs_to :order
  belongs_to :kitten
end
