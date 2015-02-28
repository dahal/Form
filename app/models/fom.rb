class Fom
  include Mongoid::Document

  field :name, type: String
  field :form_id, type: String

  has_many :submissions
  before_create :generate_form_id

  # index({ form_id: 1 }, { unique: true, background: true })

  private
  def generate_form_id
    begin
      self.form_id = SecureRandom.hex(4)
    end while self.class.where(form_id: form_id).exists?
  end
end
