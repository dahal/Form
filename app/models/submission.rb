class Submission
  include Mongoid::Document
  field :details, type: Hash
  field :created_at, type: DateTime, default: Time.now
end
