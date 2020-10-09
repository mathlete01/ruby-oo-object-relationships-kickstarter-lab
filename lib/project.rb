require 'pry'

class Project

  attr_accessor :title
  
  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  #For the Project class, write a similar method, `backers`, that returns all _backers_ associated with this Project instance.
  def backers
    my_projects = ProjectBacker.all.select do |all_proj_backer_obj|
      all_proj_backer_obj.project == self
    end
    my_projects.map do |my_proj_backer_obj|
      my_proj_backer_obj.backer
    end
  end

end

