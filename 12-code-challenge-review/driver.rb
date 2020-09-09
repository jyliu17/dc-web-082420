class Driver

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        return @@all 
    end

    def self.send_payroll
        puts "Paychecks have been sent out to all drivers"
    end

    def name 
        return @name
    end

    def name=(new_name)
        @name = new_name
    end 

    def new_name
        puts "New name method called"
    end

    def length_of_name
        binding.pry
        return self.name.length
    end

    def self.all_driver_names
        # return an array of just the names of all drivers
        self.all.map do |driver|
            driver.name
        end
    end

    def self.find_by_name(name)
        # returns the driver object with that name
        Driver.all.select do |driver|
            driver.name == name
        end
    end

end