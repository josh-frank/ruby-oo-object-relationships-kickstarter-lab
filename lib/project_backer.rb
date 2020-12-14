class ProjectBacker

    @@all = []

    attr_reader :project, :backer

    def initialize( this_project, this_backer )
        @project = this_project
        @backer = this_backer
        @@all << self
    end

    def self.all
        @@all
    end

end