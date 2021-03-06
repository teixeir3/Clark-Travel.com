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

class Testimonial < ActiveRecord::Base
  
  validates :body, :user, presence: true
  
  belongs_to(
    :user,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id,
    inverse_of: :testimonials
  )
  
  def self.all_display
    self.where(display: true)
  end
  
  def display?
    display
  end
  
  def body_truncated(options = {truncated: true})
    return body unless options[:truncated]
    
    truncated_body = body[0..300]
    (body.length > 300) ? truncated_body  + "..." : truncated_body
  end
end
