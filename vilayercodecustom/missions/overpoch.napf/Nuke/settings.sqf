// Set Up your locations here--------------------------------------------------------------------------------------

/* I used triggers in the 3d map editor to set my locations and copied the coordinates here.
PLEASE NOTE
> > Default locations are for Namalsk/Panthera */
_rndSel = floor(random 1); //Set total number of cases here ( 5 Locations = number 5 here )
TTDropPos =
switch (_rndSel) do
{
    //Locations here X,Y,Z and add a name of the location for the messages
    case 0: {[821.652, 6656.41, 0, "Feldmoos Island"]};
    //case 1: {[3992.4138, 8523.249, 0, "Object A1"]};
    //case 2: {[3992.4138, 8523.249, 0, "Object A1"]};
};
////////////////////////////////////////////////////////////////////////////////////////////////////
// Set up your laptop position here----------------------------------------------------------------
TTLaptopOn = true; //Leave true for now
TTLapPos = [1433.42, 3731.16, 10.572]; //(x,y,z)
TTLapDir = -588.9624; // set the direction the laptop is facing here
TTLapTyp = "Land_CncBlock_Stripes"; // You can edit it to be anything you like
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
TTNukeRem = false;
TTTimeRem = 120; //how long after the nuke the radiaition zone gets deleted (in secounds)
////////////////////////////////////////////////////////////////////////////////////////////////////
// Enable a marker to show the radiation zone on map for all players-------------------------------
TTShowMrk = true;
TTTxtMrk = "Warning Radiation Zone!!"; // set text that shows on the marker here
////////////////////////////////////////////////////////////////////////////////////////////////////