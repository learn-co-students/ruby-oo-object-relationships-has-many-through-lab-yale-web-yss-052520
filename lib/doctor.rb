class Doctor 
    @@all = [] 
    def initialize(name)
        @name = name 
        @@all << self 
    end 
    attr_reader :name 
    def self.all 
        @@all 
    end 
    def appointments 
        Appointment.all.select {|one_appt| one_appt.doctor == self }
    end 
    def new_appointment(patient,date)
        Appointment.new(date, patient, self)
    end 
    def patients 
        self.appointments.map do |one_appt| 
            one_appt.patient 
        end.uniq 
    end 
end 