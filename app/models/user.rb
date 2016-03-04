class User < ActiveRecord::Base
	validates :email,
	presence: true,
	uniqueness: {case_sensitive: false}

	has_secure_password

	validates_presence_of :password, on: :create

	has_many :team

	def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)
  end

  def self.create email, password, name
  	@user = User.new
  	@user.email = email
  	@user.password = password
  	@user.name = name
  	@user.save
  end

end
