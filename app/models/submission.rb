class Submission
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  belongs_to :form
  field :details, type: Hash

  include Mongoid::Timestamps::Short
end
