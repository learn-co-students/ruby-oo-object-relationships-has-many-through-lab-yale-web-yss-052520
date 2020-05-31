class Patient
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :name

    def initialize(name)
        @name = name
        self.class.all << self
    end

    def new_appointment(doctor, date)
        appointment = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end
end