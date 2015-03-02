class Fom
  include Mongoid::Document

  field :name, type: String
  field :form_id, type: String
  field :test_form, type: Boolean

  has_many :submissions
  belongs_to :users
  before_create :generate_form_id

  validates_presence_of :name

  # index({ form_id: 1 }, { unique: true, background: true })

  private
  def generate_form_id
    begin
      self.form_id = SecureRandom.hex(4)
    end while self.class.where(form_id: form_id).exists?
  end
end
