//-----------------------------------------------------------//
//
// 				DayZ Visual Mission Editor 
//				by Eugene Zhuravlev 2014 (c)
// 	Thanks to authors of EMS and WAI and BIS wiki for code examples
//
//
//  mail	: EugeneZhuravlev@yandex.ru
//	Skype	: EugeneZhuravlev
//	www		: http://DayZMissionEditor.ru/
//  YouTube : http://www.youtube.com/channel/UCWuzUxNJ_Ctf9ynoJqiV2ww
//
//-----------------------------------------------------------//
private [
"_route","_AIData","_aiGroupType","_aiFormation","_aiSide","_aIParmsQty","_groupData",
"_missionIndex","_aiunit","_aiGroup","_aiVehicle","_gunnerSpots","_aivehicleData","_spawnDelay","_static",
"_cargoMin","_cargoMax"];
 
    _aiunit = objNull;

	_missionIndex	= _this select 0;
	_groupData		= _this select 1;
	_static			= _this select 2;
	
	_aIParmsQty			= _groupData select 0;
	_aiSide				= _groupData select 1;
	_aiFormation		= _groupData select 2;
	_aiGroupType		= _groupData select 3;
	_AIData 			= _groupData select 4;
	_aivehicleData		= _groupData select 5;
	_route				= _groupData select 6;
	_spawnDelay			= _groupData select 7;
	_cargoMin			= _groupData select 8;
	_cargoMax			= _groupData select 9;
	
	if(_cargoMin < 0) then { _cargoMin = 0;};
	if(_cargoMax < _cargoMin) then { _cargoMax = _cargoMin;};
	
	if(_spawnDelay != 0) then
	{
		sleep _spawnDelay;
	};
	if(_aiSide == "EAST") then
	{
		_aiGroup 	= createGroup EAST;	
	};
	if(_aiSide == "RESISTANCE") then
	{
		_aiGroup 	= createGroup Resistance;	
	};
	if(_aiSide == "Civilian") then
	{
		_aiGroup 	= createGroup Civilian;	
	};
	
	_aiGroup setFormation _aiFormation;			
	_aiGroup setVariable ["ZEVMissionIndex", _missionIndex];	
	_aiGroup setVariable ["ZEVMissionStatic", _static];	
	
	_aiVehicle = [_missionIndex, _aivehicleData, _static] call ZEVMissionAddVehicle;
	
	_aiunit = [_aiGroup,_AIData] call ZEVMissionAddAIUnit;
	
	_aiunit assignAsDriver _aiVehicle;
	_aiunit moveInDriver _aiVehicle;
 
//>---------------------------------gunners--------------------------
	_gunnerSpots = _aiVehicle emptyPositions "gunner";
	_aiVehicle setVariable ["Pilot", _aiunit];
	for "_i" from 0 to (_gunnerSpots - 1) do 
	{
		_aiunit = [_aiGroup,_AIData] call ZEVMissionAddAIUnit;
		_aiunit assignAsGunner _aiVehicle;
		_aiunit moveInGunner _aiVehicle;
		sleep 0.1;
	};
//<---------------------------------gunners--------------------------
//>---------------------------------CargoUnits--------------------------
	_gunnerSpots 	= _aiVehicle emptyPositions "cargo";
	_cargoMin 		= _cargoMin + floor(random(_cargoMax - _cargoMin));
	if (_gunnerSpots > _cargoMin) then
	{
		_gunnerSpots = _cargoMin;
	};
	for "_i" from 0 to (_gunnerSpots - 1) do 
	{
		_aiunit = [_aiGroup,_AIData] call ZEVMissionAddAIUnit;
		_aiunit assignAsCargo _aiVehicle;
		_aiunit moveInCargo [_aiVehicle,_i];
		sleep 0.1;
	};
//<---------------------------------Cargounits--------------------------
	_aivehicle setVehicleAmmo 1;
	[_aivehicle] spawn ZEVMissionVehicleRearm;
		
	[_aiGroup, _route, _missionIndex] call ZEVMissionAddWayPoints;
