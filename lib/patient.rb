class Patient 
    @@all = [] 
    def initialize(name)
        @name = name 
        @@all << self 
    end 
    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end 
    def appointments 
        Appointment.all.select {|one_appt| one_appt.patient == self}
    end 
    def self.all 
        @@all 
    end 
    def doctors 
        self.appointments.map do |one_appt| 
            one_appt.doctor 
        end.uniq 
    end 
end 