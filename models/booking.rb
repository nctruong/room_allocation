class Booking
  attr_accessor :id, :checkin, :checkout

  def initialize(attributes = {})
    @id       = attributes[:id]
    @checkin  = Date.parse(attributes[:checkin])
    @checkout = Date.parse(attributes[:checkout])
  end
end
