class Drink
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :materials, type: Array
end
