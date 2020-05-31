class Doctor
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def new_appointment(patient, date)
        appointment = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients
        appointments.map do |appointment|
            appointment.patient
        end
    end
end
