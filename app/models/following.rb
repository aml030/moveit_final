class Following < ActiveRecord::Base

  belongs_to :follower, :class_name => "User", :foreign_key => "follower_id"

belongs_to :leader, :class_name => "User", :foreign_key => "leader_id"

validates :follower, :presence => true, :uniqueness => { :scope => :leader }
validates :leader, :presence => true
end
