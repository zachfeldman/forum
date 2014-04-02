class User < ActiveRecord::Base
  has_many :topics
  has_many :replies

  validates_confirmation_of :password
  def full_name
    if fname && lname
      fname + " " + lname
    elsif fname
      fname
    elsif lname
      lname
    else
      ""
    end
  end
end
