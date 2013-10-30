class Workout
	include Mongoid::Document

	field :name, type: String
	field :typing_system, type: String
	field :memory_management, type: String


# before_save :hashed_password
# validates :email, presence: true
# validates :email, uniqueness: { case_sensitive: false }
# validates :password, confirmation: true

# def authenticate(password)
# 	self.hashed_password ==
# 	BCrypt::Engine.hash_secret(password, self.salt)
# end

# private
# def hash_password
# 	if password.present?
# 		self.salt = BCrypt::Engine.generate_salt
# 		self.hashed_password =
# 		BCrypt::Engine.hash_secret(password, self.salt)
# 		password = password_confirmation = nil
# 	end
# end
end