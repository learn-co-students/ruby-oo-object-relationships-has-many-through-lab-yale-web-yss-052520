class Appointment 
    @@all = []
    def initialize(date,patient, doctor)
        @doctor = doctor
        @patient = patient 
        @date = date 
        @@all << self 
    end 
    attr_reader :date, :patient, :doctor 
    def self.all 
        @@all 
    end 
end 