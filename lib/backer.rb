class Backer

    @@all = []

    attr_reader :name

    def initialize( this_name )
        @name = this_name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project( project )
        ProjectBacker.new( project, self )
    end

    def backed_projects
        projectbackers = ProjectBacker.all.select{ | projectbacker | projectbacker.backer == self }
        projectbackers.map{ | projectbacker | projectbacker.project }
    end

end