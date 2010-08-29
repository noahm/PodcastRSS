require 'digest/sha1'

class User < ActiveRecord::Base
  validates_uniqueness_of :login
  attr_protected :id, :salt
  
  def self.random_string(len)
    # generate a random password consisting of strings and digits
    chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
    string = ""
    1.upto(len) {|i| string << chars[rand(chars.size-1)] }
    return string
  end
  
  def password=(pass)
    @password = pass
    self.salt = User.random_string(10) if not self.salt?
    self.hashed_password = User.encrypt(@password, self.salt)
  end
  
  def self.encrypt(pass, salt)
    Digest::SHA1.hexdigest(pass+salt)
  end
  
  def self.authenticate(login, pass)
    u = find(:first, conditions:['login = ?', login])
    return nil if u.nil?
    return u if User.encrypt(pass, u.salt) == u.hashed_password
    nil
  end
end
