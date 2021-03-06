class User < ActiveRecord::Base

  has_secure_password

  validates :name,
    presence: true,
    length: { maximum: 20 }


  validates :email,
    presence: true,
    uniqueness: {case_sensitive: false},
    email_format: { message: "Not a valid email address" }

  validates :password,
    presence: true,
    :on => :create

  def self.authenticate email, password
    User.find_by_email(email).try(:authenticate, password)

end
end