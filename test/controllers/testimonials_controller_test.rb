# == Schema Information
#
# Table name: testimonials
#
#  id         :integer          not null, primary key
#  highlight  :string(255)
#  body       :text
#  user_id    :integer          not null
#  signature  :string(255)      not null
#  display    :boolean          default(TRUE), not null
#  position   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class TestimonialsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
