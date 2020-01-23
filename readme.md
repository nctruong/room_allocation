## Approach
New booking would be assigned to a room if its checkin date >= last booking's checkout date of this room.
So we need to sort this bookings first.
![Bookings](https://drive.google.com/file/d/1YUq1TGnXFNJiwLg7fiDcLYcU8jQMwr_-/view?usp=sharing)
## Design Applied
- OOP
- SOLID
- Service Object.

## Run
### Console
```ruby
rake
```

### Test
```ruby
rspec spec/assign_room_spec.rb
```
