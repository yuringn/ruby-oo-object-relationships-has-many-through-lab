class Patient
    @@all = []
    attr_accessor :name
    def initialize(patient_name)
        @name = patient_name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appointment| self == appointment.patient}
    end

    def doctors
        appointments.map {|appointment| appointment.doctor}
    end
end

