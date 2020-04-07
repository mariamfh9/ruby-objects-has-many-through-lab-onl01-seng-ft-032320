class Doctor
  
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def name 
    @name
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end 
  
  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor = self
  end 
end
  
  def patients
    Patient.all.select do |patient|
      patient.doctor = self
    end
  end
  
end
