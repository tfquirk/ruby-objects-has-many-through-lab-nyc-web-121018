require 'pry'

class Doctor

  attr_accessor :appointment
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @appointment = nil
    @@all << self
  end

  def self.all
    @@all
  end

  # --------------- end Class methods -------------------
  # --------------- start instance methods --------------

  def new_appointment(patient, date)
    appt = Appointment.new(date, patient, self)
  end

  #what are my appointments? Look through Appointment class to find
  def appointments
    Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
    self.appointments.map do |appt|
      appt.patient
    end
  end

end # end Doctor class
