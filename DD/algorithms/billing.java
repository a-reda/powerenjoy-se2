int PRICE_PER_MIN = config.getPricePerMin();

public Bill caculate_Bill(Reservation r)
{
  Ride ride = r.ride;
  Car  car  = r.car;

  float BaseFee = ride.duration * PRICE_PER_MIN;
  float discount = 0;
  // More than 2 passengers discount
  if (car.passengers >= 2) discount += 0.1 ; // 10% Discount
  // More than  50% battery left
  if (car.battery >= 0.5 ) discount += 0.2; // 20% Discount
  // User recharged car
  if (car.isCharging()) discount += 0.3; // 30% Discount
  // If car is left 3KM away from charging OR 20% battery
  boolean isFar = LocalisationController.isCarFar();

  if (LocalisationController.isCarFar(car) || car.battery <= 0.2)
              discount -= 0.3;

   float ChargedAmount = BaseFee * (1 - discount );

   return new Bill(new Date (), ChargedAmount);
}
