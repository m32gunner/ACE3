/*
 * Author: KoffeinFlummi
 * Callback for a successfull treatment.
 *
 * Arguments:
 * 0: The medic <OBJECT>
 * 1: The patient <OBJECT>
 * 2: Treatment type/item <STRING>
 * 3+: Additional parameters <ANY>
 *
 * Return Value:
 * nil
 *
 * Public: Yes
 */

#include "script_component.hpp"

_medic = _this select 0;
_patient = _this select 1;
_type = _this select 2;

_params = + _this;
_params deleteAt 0;
_params deleteAt 0;
_params deleteAt 0;

if (GVAR(level) == 0) then {
    _this call FUNC(treatmentCallback_basic);
} else {
    _this call FUNC(treatmentCallback_advanced);
};
