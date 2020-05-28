class Doctor 
    @@all = []
    attr_accessor :name 
    def initialize(name)
        @name = name
        self.class.all << self 
    end 

    def self.all 
        @@all
    end
    
    def new_appointment(patient, date)
        appt = Appointment.new(date, patient, self)
    end 

    def appointments 
        Appointment.all.select {|appointment| appointment.doctor == self}
    end 

    def patients
        self.appointments.collect {|appointment| appointment.patient}
    end 
end 