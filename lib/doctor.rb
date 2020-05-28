class Doctor 
    @@all = []

    attr_accessor :name 

    def self.all 
        @@all
    end 

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def new_appointment(patient, date) 
        Appointment.new(date, patient, self) 
    end 

    def appointments
        Appointment.all.select {|cita| cita.doctor == self}
    end 
    
    def patients 
        appointments.map do |cita|
            cita.patient
        end 
    end 
end 
