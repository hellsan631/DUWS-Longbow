private["_mouseWheelTurns","_return","_z"];

// ------------------ Parse Arguments -----------------

_mouseWheelTurns = _this select 1;

_return = false;

#define FACTOR 25

// ----------------------- Main Function ---------------------

_z = (_mouseWheelTurns * (-64));
if ((_z / (abs _z)) < 0) then
{
	if ((PXS_SatelliteZoom + (0.08 * FACTOR)) <= 47) then
	{
		PXS_SatelliteFOV = PXS_SatelliteFOV - (0.0020 * FACTOR);
		PXS_SatelliteZoom = PXS_SatelliteZoom + (0.08 * FACTOR);
		call PXS_updateCamera;
	};
}
else
{
	if ((PXS_SatelliteZoom - (0.08 * FACTOR)) >= 0.1) then
	{
		PXS_SatelliteFOV = PXS_SatelliteFOV + (0.0020 * FACTOR);
		PXS_SatelliteZoom = PXS_SatelliteZoom - (0.08 * FACTOR);
		call PXS_updateCamera;
	};
};
_return;