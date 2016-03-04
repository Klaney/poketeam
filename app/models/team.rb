class Team < ActiveRecord::Base
	has_many :pokemon
  belongs_to :user

  def self.create name, user_id
  	@team = Team.new
  	@team.name = name
  	@team.user_id = user_id
  	@team.save
  end
end
