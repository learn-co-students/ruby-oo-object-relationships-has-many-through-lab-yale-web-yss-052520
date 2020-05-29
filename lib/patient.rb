# Patient
#   #new
#     initializes with a name 
#   #new_appointment
#     given a doctor and date, creates a new appointment belonging to that patient
#   .all
#     knows about all patients 
#   #appointments
#     returns all appointments associated with this Patient
#   #doctors
#     has many doctors through appointments 



class Patient
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
    end

    def new_appointment(doctor, date)
        Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors
        appointments.collect {|appointment| appointment.doctor}.uniq
    end

end
