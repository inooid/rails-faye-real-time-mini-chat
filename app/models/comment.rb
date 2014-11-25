# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  message    :text
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base
end
