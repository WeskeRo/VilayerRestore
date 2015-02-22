//{
if (_object isKindof "AH6J_EP1") then 
	{
	
         _object magazinesTurret [-1];
		 _object removeMagazinesTurret ["14Rnd_FFAR",[-1]];
		 _object WeaponsTurret [-1];
		 _object removeWeapon "FFARLauncher_14";
	};
	
if (_object isKindof "M1128_MGS_EP1") then 
	{
        _mag = _object magazinesTurret [0];
        cpt = 0;
        {
            _object removeMagazinesTurret [_mag select cpt,[0]];  
            cpt = cpt + 1;
        } forEach _mag;
		//You still need to remove the weapon
		// _object WeaponsTurret [-1];
		//_object removeWeapon "FFARLauncher_14";
    };
	
if (_object isKindof "AH64D_EP1") then 
	{
        _mag = _object magazinesTurret [0];
        cpt = 0;
        {
            _object removeMagazinesTurret [_mag select cpt,[0]];  
            cpt = cpt + 1;
        } forEach _mag;
		_mag = _object magazinesTurret [-1];
        cpt = 0;
        {
            _object removeMagazinesTurret [_mag select cpt,[0]];  
            cpt = cpt + 1;
        } forEach _mag;
		//You still need to remove the weapon
		// _object WeaponsTurret [-1];
		//_object removeWeapon "FFARLauncher_14";
    };	
//} forEach vehicles; //Not completly necessary, it just makes sure no vehicle is left out during the process (e.g. high server load)
