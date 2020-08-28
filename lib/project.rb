class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        new_back = ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select {|proj| proj.project == self}
        project_backers.map {|each| each.backer}
    end
end