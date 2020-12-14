class Project

    @@all = []

    attr_reader :title

    def initialize( this_title )
        @title = this_title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer( backer )
        ProjectBacker.new( self, backer )
    end

    def backers
        projectbackers = ProjectBacker.all.select{ | projectbacker | projectbacker.project == self }
        projectbackers.map{ | projectbacker | projectbacker.backer }
    end

end