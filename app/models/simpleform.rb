class Simpleform
  include Mongoid::Document
  field :name, type: String
  has_many :submissions
end
