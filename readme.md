## Approach
New booking would be assigned to a room if its checkin date >= last booking's checkout date of this room.
So we need to sort this bookings first and check above condition then.

![](https://i.ibb.co/mqp9cC8/Hi-nh-a-nh-PNG.png)
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
