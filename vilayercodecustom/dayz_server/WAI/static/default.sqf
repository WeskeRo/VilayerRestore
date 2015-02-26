if(isServer) then {


	//Custom Spawns file//
	/*
	Custom group spawns Eg.

	[
		[953.237,4486.48, 0.001],			// Position
		4,									// Number Of units
		"Random",							// Skill level of unit (easy, medium, hard, extreme, Random)
		"Random",	or ["Random","at"],		// Primary gun set number and rocket launcher. "Random" for random weapon set, "at" for anti-tank, "aa" for anti-air launcher
		5,									// Number of magazines
		"Random",							// Backpack classname, use "Random" or classname here
		"Random",							// Skin classname, use "Random" or classname here
		"Random",							// Gearset number. "Random" for random gear set
		"Bandit"							// AI Type, "Hero" or "Bandit".
	] call spawn_group;

	Place your custom group spawns below
*/	
	[
		[3194.9646, 7210.3516, 0.001],
		5,
		"extreme",
		"Random",
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;
	
	[
		[3200.9949, 7298.8945, 0.001],
		5,
		"extreme",
		"Random",
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;
	
	[
		[3150.3376, 7345.0947, 0.001],
		5,
		"extreme",
		"Random",
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;
	
	[
		[3075.2078, 7359.501, 0.001],
		5,
		"extreme",
		"Random",
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;
	
	[
		[3202.9358, 7404.79, 0.001],
		5,
		"extreme",
		"Random",
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;
	
	[
		[3295.7358, 7439.0049, 0.001],
		5,
		"extreme",
		"Random",
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;

///////////////////////////////////////////////////////////////////////////
//////////CAVE/////////////////////////////


	[
		[5555.4902, 2317.3604,0.001],
		5,
		"extreme",
		"Random",
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;
	
	[
		[5589.8867, 2348.6448,0.001],
		7,
		"extreme",
		["Random","at"],
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;
	
	[
		[5674.3911, 2317.1155,0.001],
		5,
		"extreme",
		"Random",
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;
	
		[
		[5711.0698, 2365.5334,0.001],
		5,
		"extreme",
		"Random",
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;
	
		[
		[5553.25,2302.09,0.001],
		5,
		"extreme",
		["Random","aa"],
		5,
		"Random",
		"Random",
		"Random",
		"Bandit"
	] call spawn_group;
	





	/*
	Custom static weapon spawns Eg. (with mutiple positions)

	[
		[									// Position(s) (can be multiple)
			[911.21,4532.76,2.62],
			[921.21,4542.76,2.62]
		],
		"M2StaticMG",						// Classname of turret
		"easy",								// Skill level of unit (easy, medium, hard, extreme, Random)
		"Bandit2_DZ",						// Skin classname, use "Random" or classname here
		"Bandit",							// AI Type, "Hero" or "Bandit".
		"Random",							// Primary gun set number. "Random" for random weapon set
		2,									// Number of magazines
		"Random",							// Backpack classname, use "Random" or classname here
		"Random"							// Gearset classname, use "Random" or classname here
	] call spawn_static;

	Place your custom static weapon spawns below
	*/
	[
		[									// Position(s) (can be multiple)
			[5715.0732, 2373.5889, 0],
			[5719.168, 2304.1501, 0],
			[5535.1167, 2328.8301, 0],
			[5618.1807, 2360.4329, 0]
		],
		"BAF_L2A1_Tripod_D",						// Classname of turret
		"extreme",								// Skill level of unit (easy, medium, hard, extreme, Random)
		"Random",						// Skin classname, use "Random" or classname here
		"Bandit",							// AI Type, "Hero" or "Bandit".
		"Random",							// Primary gun set number. "Random" for random weapon set
		5,									// Number of magazines
		"Random",							// Backpack classname, use "Random" or classname here
		"Random"							// Gearset classname, use "Random" or classname here
	] call spawn_static;
	
[
		[									// Position(s) (can be multiple)
			[5705.6221, 2332.9539, 0]
		],
		"Stinger_Pod_US_EP1",						// Classname of turret
		"extreme",								// Skill level of unit (easy, medium, hard, extreme, Random)
		"Random",						// Skin classname, use "Random" or classname here
		"Bandit",							// AI Type, "Hero" or "Bandit".
		"Random",							// Primary gun set number. "Random" for random weapon set
		5,									// Number of magazines
		"Random",							// Backpack classname, use "Random" or classname here
		"Random"							// Gearset classname, use "Random" or classname here
	] call spawn_static;



	/*
	Custom Chopper Patrol spawn Eg.

	[
		[725.391,4526.06,0],				// Position to patrol
		[0,0,0],							// Position to spawn chopper at
		2000,								// Radius of patrol
		10,									// Number of waypoints to give
		"UH1H_DZ",							// Classname of vehicle (make sure it has driver and two gunners)
		"hard",							// Skill level of units (easy, medium, hard, extreme, Random)
		"Random",							// Skin classname, use "Random" or classname here
		"Bandit"							// AI Type, "Hero" or "Bandit".
	] spawn heli_patrol;

	Place your heli patrols below
	
	[
		[5705.6221, 2332.9539,0],				// Position to patrol
		[0,0,0],							// Position to spawn chopper at
		2000,								// Radius of patrol
		10,									// Number of waypoints to give
		"UH1H_DZ",							// Classname of vehicle (make sure it has driver and two gunners)
		"Random",							// Skill level of units (easy, medium, hard, extreme, Random)
		"Random",							// Skin classname, use "Random" or classname here
		"Bandit"							// AI Type, "Hero" or "Bandit".
	] spawn heli_patrol;
*/


	/* 
	Custom Vehicle patrol spawns Eg. (Watch out they are stupid)

	[
		[725.391,4526.06,0],				// Position to patrol
		[725.391,4526.06,0],				// Position to spawn at
		200,								// Radius of patrol
		10,									// Number of waypoints to give
		"HMMWV_Armored",					// Classname of vehicle (make sure it has driver and gunner)
		"Random",							// Skill level of units (easy, medium, hard, extreme, Random)
		"Random",							// Skin classname, use "Random" or classname here
		"Bandit"							// AI Type, "Hero" or "Bandit".
	] spawn vehicle_patrol;

	Place your vehicle patrols below this line
	*/





	/*
	Paradropped unit custom spawn Eg.

	[
		[911.21545,4532.7612,2.6292224],	// Position that units will be dropped by
		[0,0,0],							// Starting position of the heli
		400,								// Radius from drop position a player has to be to spawn chopper
		"UH1H_DZ",							// Classname of chopper (Make sure it has 2 gunner seats!)
		5,									// Number of units to be para dropped
		"Random",							// Skill level of units (easy, medium, hard, extreme, Random)
		"Random",	or ["Random","at"],		// Primary gun set number and rocket launcher. "Random" for random weapon set, "at" for anti-tank, "aa" for anti-air launcher
		4,									// Number of magazines
		"Random",							// Backpack classname, use "Random" or classname here
		"Bandit2_DZ",						// Skin classname, use "Random" or classname here
		"Random",							// Gearset number. "Random" for random gear set.
		"Bandit",							// AI Type, "Hero" or "Bandit".
		true								// true: Aircraft will stay at position and fight. false: Heli will leave if not under fire. 
	] spawn heli_para;

	Place your paradrop spawns under this line
	*/

	diag_log "WAI: Static mission loaded";

};
