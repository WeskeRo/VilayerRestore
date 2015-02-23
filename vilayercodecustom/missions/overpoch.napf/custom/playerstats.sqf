private "_name";
//Let Zeds know
[player,4,true,(getPosATL player)] spawn player_alertZombies;

//display gui (temp hint)
_name = if (alive player) then {name player;} else {"Dead Player";};
	hintSilent parseText format ["
	<t size='1.4' font='Bitstream' align='center' color='#C70000'>RVL NAPF</t><br/>
	<t size='1.15' font='Bitstream' align='center' color='#DDDDDD'>%3 Players Online</t><br/>
	<t size='1.25' font='Bitstream' color='#5882FA'>%1</t><br/>
	<t size='1.15' font='Bitstream' align='left'>DayZ Survived: </t><t size='1.15' font='Bitstream' align='right'>%2</t><br/>
	<t size='1.15' font='Bitstream' align='left'>Cash: </t><t size='1.15' font='Bitstream' align='right'>%5</t><br/>
	<t size='1.15' font='Bitstream' align='left'>Bank: </t><t size='1.15' font='Bitstream' align='right'>%6</t><br/><br/>
	<t size='1' font='Bitstream' align='center' color='#16DB57'>Restart in %4 minutes</t><br/><br/>
	<t size='0.9' font='Bitstream' align='center' color='#DDDDDD'>TS: revolution-ukbb.pl:1029</t><br/>",
	1(name player),
	2(dayz_Survived),
	3(count playableUnits),
	4(180-(round(serverTime/60))),
	5(player getVariable['cashMoney', 0]),//11
	6(player getVariable['bankMoney', 0])//12
	];
