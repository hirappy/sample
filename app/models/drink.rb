class Drink
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  embeds_many :materials
  accepts_nested_attributes_for :materials
end
