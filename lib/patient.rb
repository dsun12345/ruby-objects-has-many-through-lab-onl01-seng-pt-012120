require "pry"
class Patient 
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def self.all
    @@all
  end 
  
  def new_appointment(doctor, date)
    app = Appointment.new(date, self, doctor)
  end 
  
  def appointments 
    Appointment.all.select {|appointment| appointment.patient == self}
  end 
  
  def doctors
<<<<<<< HEAD
=======
    binding.pry 
>>>>>>> 861bdfdc9754fdbc5a75673c6bbe33197d6c6470
    self.appointments.collect {|appointment| appointment.doctor}
  end 
  
end 