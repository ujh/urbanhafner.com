require 'test_helper'

class ContactRequestTest < ActiveSupport::TestCase

  include ActiveModel::Lint::Tests

  def setup
    @model = ContactRequest.new
  end
end
