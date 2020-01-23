class Booking
  attr_accessor :id, :checkin, :checkout

  def initialize(attributes = {})
    @id       = attributes[:id]
    @checkin  = to_date(attributes[:checkin])
    @checkout = to_date(attributes[:checkout])
  end

  private

  def to_date(date)
    Date.parse(date)
  end
end
