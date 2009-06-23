class Account < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :eve_user_id, :eve_api_key, :user_id
end
