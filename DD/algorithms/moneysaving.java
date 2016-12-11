import Location.Map;
import ChargeStation.dao;
public class moneySaving {

private boolean mNearByChargeStation;
private int mPlugsAvailability;
private String mChargeStaionName;
private Location Path;
public moneySavingOptions(boolean NearByChargeStation, int PlugsAvailability ){
    if(NearByChargeStation == true){
      mChargeStaionName = ChargeStaionName;
      if(PlugsAvailability >= 1){
        mPlugsAvailability = PlugsAvailability-1;
        Path = Map.location.Naviagte(ChargeStaionName);
      } else Toast.makeText(this, "No available plugs for charging").show();

    } else Toast.makeText(this,"No shargeStation nearby the destination").show();

}

public boolean isNearByChargeStation(Location d ){
    if Map.Location(d) != none {
      return mNearByChargeStation;
      }
   }

public void getChargeStaionName(boolean NearByChargeStation){
     mChargeStaionName = ChargeStaionName;
}
public int getPlugsAvailability(String ChargeStaionName){
      return mPlugsAvailability;
  }
}
