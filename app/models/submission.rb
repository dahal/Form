class Submission
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  belongs_to :fom, foreign_key: :form_id
  field :details, type: Hash
  field :created_at, type: DateTime, default: Time.now
end
