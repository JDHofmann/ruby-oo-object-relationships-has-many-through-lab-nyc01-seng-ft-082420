class Patient

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
    # binding.pry
  end

  def appointments
    Appointment.all.filter{|app| app.patient == self}
  end

  def doctors
    appointments.map{|app| app.doctor}
  end
end