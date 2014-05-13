class User < ActiveRecord::Base
	validates :nickname,
        presence: true,
        uniqueness: { case_sensitive: false }

    before_save { self.nickname = nickname.downcase }
end