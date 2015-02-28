class Submission
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :details, type: Hash
  field :created_at, type: DateTime, default: Time.now
  belongs_to :simpleform
end
