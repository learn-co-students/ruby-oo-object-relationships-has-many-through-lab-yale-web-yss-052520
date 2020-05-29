# Doctor
#   #name
#     has a name 
#   #new
#     initializes with a name and adds itself to an array of all doctors
#   #appointments
#     returns all appointments associated with this Doctor 
#   #new_appointment
#     given a date and a patient, creates a new appointment 
#   #patients
#     has many patients, through appointments



class Doctor
    
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment (patient, date)
        Appointment.new(date,patient,self)
    end

    def patients
        appointments.collect {|appointment| appointment.patient}.uniq
    end
    


end
