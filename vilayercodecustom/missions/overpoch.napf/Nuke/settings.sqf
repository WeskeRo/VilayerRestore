// Set Up your locations here--------------------------------------------------------------------------------------

/* I used triggers in the 3d map editor to set my locations and copied the coordinates here.
PLEASE NOTE
> > Default locations are for Namalsk/Panthera */
_rndSel = floor(random 5); //Set total number of cases here ( 5 Locations = number 5 here )
TTDropPos =
switch (_rndSel) do
{
    //Locations here X,Y,Z and add a name of the location for the messages
    case 0: {[821.652, 6656.41, 0, "Feldmoos Island"]};

    case 1: {[3910.01,4480.31, 0, "Military Airfield"]};
    case 2: {[18394.4,2273.28, 0, "South Airstrip"]};
	case 3: {[14411.4,17084.7, 0, "Northern Airfield"]};
    case 4: {[18358,17995.7, 0, "Pfefikon Island"]};
};
////////////////////////////////////////////////////////////////////////////////////////////////////
// Set up your laptop position here----------------------------------------------------------------
TTLaptopOn = true; //Leave true for now
TTLapPos = [16560.98, 18220.211, 0.80752522]; //(x,y,z)
TTLapDir = 113.55727; // set the direction the laptop is facing here
TTLapTyp = "MAP_pc"; // You can edit it to be anything you like
////////////////////////////////////////////////////////////////////////////////////////////////////
//Set the skins that will block blood loss in the radiation zone----------------------------------
TTAntiR = ["BanditW1_DZ","BanditW2_DZ","Bandit2_DZ","GUE_Soldier_MG_DZ","INS_Lopotev_DZ"];
////////////////////////////////////////////////////////////////////////////////////////////////////
// Set vechile damage & radius of the area vechiles will be destroyed------------------------------
/*PLEASE NOTE
> > Vechiles may get damages if parked on or around buildings that get destroyed */
TTVehDam = false;
TTVehDis = 400;
////////////////////////////////////////////////////////////////////////////////////////////////////
// Set building damage & radius of the area buildings will be destroyed > 400 = 400m ---------------
/* 
PLEASE NOTE
> > Epoch buildables in this zone can be destroyed (NOT TESTED WITH INDESTRUCTIBLE BUILDABLES) */

//REMOVED DUE TO LAG

////////////////////////////////////////////////////////////////////////////////////////////////////
// Set blood loss per second in the radiation zone here for normal skins----------------------------
TTBlood = 125;
////////////////////////////////////////////////////////////////////////////////////////////////////
// Set the radius of the radiation zone size here > 1500 = 1500m------------------------------------
TTRadZ = 1500;
////////////////////////////////////////////////////////////////////////////////////////////////////
// Set player death & the radius of the area people will die when the nuke goes off > 400 = 400m----
TTPlyDeath = true;
TTDeaZ = 400;
////////////////////////////////////////////////////////////////////////////////////////////////////
// Option to delete the radiation zone after a set amount of time-----------------------------------
TTNukeRem = true;
TTTimeRem = 1200; //how long after the nuke the radiaition zone gets deleted (in secounds)
////////////////////////////////////////////////////////////////////////////////////////////////////
// Enable a marker to show the radiation zone on map for all players-------------------------------
TTShowMrk = true;
TTTxtMrk = "Hazardous Radiation Zone!!"; // set text that shows on the marker here
////////////////////////////////////////////////////////////////////////////////////////////////////