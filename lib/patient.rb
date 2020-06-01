class Patient

    attr_accessor :name 

    @@all = []

    def initialize(name)
        @name = name
        save 
    end

    def save
        @@all << self 
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
       Appointment.all.select {|appoint| appoint.patient == self } 
    end

    def self.all
        @@all 
    end

    def doctors
        appointments.map {|appoint| appoint.doctor }
    end


end