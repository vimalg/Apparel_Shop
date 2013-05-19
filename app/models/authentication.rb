class Authentication < ActiveRecord::Base
	belongs_to :user
	def apply_omniauth(omniauth)
	authentications.build(:provider => omniauth['provider'], :uid => omniauth['uid'])
end
end
