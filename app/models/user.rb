class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :entries
  has_many :exercises
  has_many :goals


  mount_uploader :photo, PhotoUploader


#has_many :followings_where_follower, :class_name => "Following", :foreign_key => "follower_id"

#has_many :followers_where_follower, :through => :followings_where_follower, :source => :leader

#has_many :followings_where_leader, :class_name => "Following", :foreign_key => "leader_id"

#has_many :followers_where_leader, :through => :followings_where_leader, :source => :follower

#has_many :entries, :through => :followers_where_follower, :source => :entries
end


