class AssignRoom < BaseService
  attr_reader :bookings
  attr_reader :assigned_rooms

  def initialize(bookings, num_of_rooms)
    @bookings       = initialize_bookings(bookings)
    @assigned_rooms = initialize_rooms(num_of_rooms)
  end

  def call
    bookings.each do |booking|
      assigned_rooms.keys.each do |room|
        next unless assignable?(assigned_rooms[room], booking)

        assigned_rooms[room] << booking
        break
      end
    end
    to_a
  end

  private

  def initialize_rooms(num_of_rooms)
    (1..num_of_rooms).each_with_object({}) { |num, rooms| rooms[num] = [] }
  end

  def initialize_bookings(bookings)
    bookings.map { |booking| Booking.new(booking) }.sort_by { |booking| booking.checkin }
  end

  def checkout_lteq_checkin?(room, booking)
    (room.last.checkout <= booking.checkin)
  end

  def assignable?(room, booking)
    room.empty? || checkout_lteq_checkin?(room, booking)
  end

  def to_a
    assigned_rooms.values.map { |bookings| bookings.map(&:id) }
  end
end
