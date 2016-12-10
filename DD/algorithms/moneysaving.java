import Location.Map;
import ChargeStation.dao;
import Bill;
import Reservation;
public class moneySaving {
   Bill Amount = caculate_Bill(r);
   //check whether there is a charge station nearby  the destination which user inputed.
   if checkDestination() == true{
     //define the variable.
       private boolean ChargeStation = new getChargeStation();
       private int plugs = new getPlugsAvailability();
      //
       if ( Plugs >= 1){
           Amount = Amount*caculate_Bill(r).Discount; // recaculate the bill with a new discount.
           Return new Bill(new Date (), Amount);
           }
           // show error message
           else Toast.makeText(this, "No available plugs for charging").show();
     }
     // show error message
     else Toast.makeText(this,"No shargeStation nearby the destination").show();

public void checkChargeStation(Location d ){
    if Map.Location(d) != none {
       Returen true;
      }
   }
}
