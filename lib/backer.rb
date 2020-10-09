class Backer

  attr_accessor :name
  
  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    output = []
    ProjectBacker.all.each do |element|
      if element.backer == self
        output << element.project
      end
    end
    output
  end

end