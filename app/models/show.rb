class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def actors_list
    characters.collect do |actor|
      actor.full_name
  end
end