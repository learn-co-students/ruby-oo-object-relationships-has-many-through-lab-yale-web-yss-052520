class Patient 
    @@all = []

    attr_accessor :name 

    def self.all 
        @@all
    end 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end 
    
    def appointments
        Appointment.all.select {|cita| cita.patient == self}
    end 

    def doctors
        appointments.map do |cita|
            cita.doctor
        end 
    end
end  