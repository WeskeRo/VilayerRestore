//Default Loadout
DefaultMagazines = ["ItemBandage","ItemBandage","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemMorphine","ItemPainkiller","ItemWaterbottleBoiled","FoodSteakCooked"];
DefaultWeapons = ["M9SD","ItemFlashlightRed","ItemMap","ItemToolbox","ItemRadio"];
DefaultBackpack = "DZ_ALICE_Pack_EP1";
DefaultBackpackWeapon = "";

//Dennis
if ((getPlayerUID player) in ["76561197999843895"]) then {
	DefaultMagazines = ["FHQ_rem_7Rnd_338Lapua_MSR_NT_SD","FHQ_rem_7Rnd_338Lapua_MSR_NT_SD","FHQ_rem_7Rnd_338Lapua_MSR_NT_SD","RH_7Rnd_50_AE","RH_7Rnd_50_AE","RH_7Rnd_50_AE","Skin_Sniper1_DZ","ItemBandage","ItemBandage","ItemMorphine","ItemMorphine","ItemPainkiller","ItemPainkiller","ItemBloodbag","ItemSodaMdew","FoodSteakCooked","ItemSodaMdew","FoodSteakCooked"];
	DefaultWeapons = ["Binocular_Vector","ItemCrowbar","NVGoggles","ItemGPS","ItemMap","ItemToolbox","ItemRadio","FHQ_MSR_NV_SD_DESERT","RH_Deagleg"];
	DefaultBackpack = "DZ_LargeGunBag_EP1";
	DefaultBackpackItems = ["RH_hk417sdsp","RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417","RH_20Rnd_762x51_SD_hk417","PartVRotor","PartEngine"];
};

if ((getPlayerUID player) in ["76561198085450320"]) then {  
	DefaultMagazines = ["10Rnd_127x99_m107","10Rnd_127x99_m107","10Rnd_127x99_m107","10Rnd_127x99_m107","vil_usp45SD_mag","vil_usp45SD_mag","vil_usp45SD_mag","Skin_Sniper1_DZ","ItemBandage","ItemBandage","ItemBandage","ItemBandage","ItemMorphine","ItemMorphine","ItemPainkiller","ItemPainkiller","ItemBloodbag","ItemSodaMdew","FoodSteakCooked"];
	DefaultWeapons = ["Binocular_Vector","ItemCrowbar","ItemHatchet","ItemMatchbox","NVGoggles","ItemCompass","ItemGPS","ItemMap","ItemToolbox","ItemRadio","PMC_AS50_TWS","vil_USP45SD"];
	DefaultBackpack = "DZ_LargeGunBag_EP1";
	DefaultBackpackItems = ["PartVRotor","PartEngine"];
};