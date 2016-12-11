//Define the reservation time
public ReservationTimeValid(time)
{
  if (time.Nowtime)
  return true;
  else {
          if(time.Nowtime<=1)
          return new time;
          else
          return false;
        }
}
public Reservation (Car c, User u)
{

  if (c.status=="available"&& u.status=="available"&&ReservationTimeValid(time))
  {
    isThisReservation= true;
    User.startRide();
  }
  else if (time.timeNow<=1)// the user made a reservation one hour ahead of the reservation
  return Reservation(Reservation time(), User ID());

}
//Create a new reservation
public createReservation()
{
   Reservation r = new reservation;
   User.Reservation();
}
//Allow user to cancel reservation
public cancelReservation()
{
   if (isThisReservation) {
   isThisReservation = false;
   User.cancelReservation();
}
//Monitor the location and cars nearby
public updateLocation(double[] location)
{
  User.updateLocation(location);
}



























}
