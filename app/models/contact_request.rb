class ContactRequest

  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :message

  validates :name, :email, :message, :presence => true

  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def to_model
    self
  end

  def persisted?
    false
  end
end
