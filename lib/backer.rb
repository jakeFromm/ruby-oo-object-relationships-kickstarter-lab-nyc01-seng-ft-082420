require "pry"
class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        new_proj = ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.select {|proj| proj.backer == self}
        projects.map {|each| each.project}
    end
end