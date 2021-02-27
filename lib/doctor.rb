class Doctor
    @@all = []
    attr_accessor :name
    def initialize(doctor_name)
        @name = doctor_name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appointment| self == appointment.doctor}
    end

    def patients
        appointments.map {|appointment| appointment.patient}
    end
end
