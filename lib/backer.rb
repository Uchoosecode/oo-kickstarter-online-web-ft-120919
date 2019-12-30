require 'pry'

class Backer
  
  attr_accessor :name
  attr_reader :backed_projects
  
  def initialize(name= "Avi")
    @backed_projects = []
    @name = name
  end
  
  def backed_project(project)
    @backed_projects << project
    project.backers << self
    binding.pry
  end
  
end