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
private["_missionIndex","_unitMissionIndex","_ret","_static","_unitMissionStatic"];

_missionIndex 	= _this select 0;
_static			= _this select 1;

_ret			= 0;
{
	_unitMissionIndex = _x getVariable ["ZEVMissionIndex", -1]; //["ZEVMissionIndex", _missionIndex];
	_unitMissionStatic= _x getVariable ["ZEVMissionStatic", -1];
	if ((_unitMissionIndex == _missionIndex) && (_unitMissionStatic == _static))then 
	{
		_ret = _ret + 1;
	};
	
} foreach allUnits;
_ret
