class User < ActiveRecord::Base
  attr_accessible :email

  validates :email,  :uniqueness => true

  has_many :tasks

  def self.current
      Thread.current[:current_user]
    end

    def self.current=(usr)
      Thread.current[:current_user] = usr
    end
end
