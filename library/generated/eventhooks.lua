---@meta

--- Run code every in-game tick (frame), use in combination with other events to turn logic on and off in your code that runs every tick
---@param eventId 1 --[[@as Defines.InternalEvents.ON_TICK]]
---@param callback fun() Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Run code when the main menu opens
---@param eventId 2 --[[@as Defines.InternalEvents.MAIN_MENU]]
---@param callback fun() Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Can be used to change the state of the environment, affecting music and ability to upgrade
---@param eventId 3 --[[@as Defines.InternalEvents.DANGEROUS_ENVIRONMENT]]
---@param callback fun(danger?: boolean): danger: boolean Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- If a value is returned, can be used to mark a beacon as a hazard with an icon and tooltip on the beacon map
---@param eventId 4 --[[@as Defines.InternalEvents.GET_BEACON_HAZARD]]
---@param callback fun(loc?: Hyperspace.Location): hazardText: string Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Can be used to alter the opacity and color of the flash used for suns and pulsars
---@param eventId 5 --[[@as Defines.InternalEvents.GET_HAZARD_FLASH]]
---@param callback fun(alpha?: number): red: number, green: number, blue: number, alpha: number Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Run code when the seed for the run is set
---@param eventId 6 --[[@as Defines.InternalEvents.GET_RUN_SEED]]
---@param callback fun(isCustomSeed?: boolean, seed?: integer): isCustomSeed: boolean, seed: integer Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Detect keyboard key is pressed
---@param eventId 7 --[[@as Defines.InternalEvents.ON_KEY_DOWN]]
---@param callback fun(Key?: Defines.SDL): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Detect keyboard key is unpressed
---@param eventId 8 --[[@as Defines.InternalEvents.ON_KEY_UP]]
---@param callback fun(Key?: Defines.SDL): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Detect mouse movement
---@param eventId 9 --[[@as Defines.InternalEvents.ON_MOUSE_MOVE]]
---@param callback fun(x?: integer, y?: integer, xdiff?: integer, ydiff?: integer, holdingLMB?: boolean, holdingRMB?: boolean, holdingMMB?: boolean): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Detect left mouse button is pressed
---@param eventId 10 --[[@as Defines.InternalEvents.ON_MOUSE_L_BUTTON_DOWN]]
---@param callback fun(x?: integer, y?: integer): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Detect left mouse button is unpressed
---@param eventId 11 --[[@as Defines.InternalEvents.ON_MOUSE_L_BUTTON_UP]]
---@param callback fun(x?: integer, y?: integer): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Detect right mouse button is pressed
---@param eventId 12 --[[@as Defines.InternalEvents.ON_MOUSE_R_BUTTON_DOWN]]
---@param callback fun(x?: integer, y?: integer): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Detect right mouse button is unpressed
---@param eventId 13 --[[@as Defines.InternalEvents.ON_MOUSE_R_BUTTON_UP]]
---@param callback fun(x?: integer, y?: integer): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Detect middle mouse button is pressed
---@param eventId 14 --[[@as Defines.InternalEvents.ON_MOUSE_M_BUTTON_DOWN]]
---@param callback fun(x?: integer, y?: integer): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Detect mouse scrolling. `direction` will be 1.0 when scrolling down, -1.0 when scrolling up.
---@param eventId 15 --[[@as Defines.InternalEvents.ON_MOUSE_SCROLL]]
---@param callback fun(direction?: number): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Detect mouse movement (to be used for `GenericButton`'s `MouseMove` method)
---@param eventId 16 --[[@as Defines.InternalEvents.GUI_MOUSE_MOVE]]
---@param callback fun(x?: integer, y?: integer): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- While unpaused, run code every in-game tick for each crew member
---@param eventId 17 --[[@as Defines.InternalEvents.CREW_LOOP]]
---@param callback fun(crew?: Hyperspace.CrewMember) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called at the start of creating a `CrewMember` after the cloning process
---@param eventId 18 --[[@as Defines.InternalEvents.CREW_CLONE]]
---@param callback fun(crew?: Hyperspace.CrewMember) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- While unpaused, run code every in-game tick for each ship
---@param eventId 19 --[[@as Defines.InternalEvents.SHIP_LOOP]]
---@param callback fun(ship?: Hyperspace.ShipManager) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Run every hasEquipment check
---@param eventId 20 --[[@as Defines.InternalEvents.HAS_EQUIPMENT]]
---@param callback fun(ship?: Hyperspace.ShipManager, equipment?: string, value?: integer): chain: Defines.Chain, value: integer Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Run every hasAugmentation check
---@param eventId 21 --[[@as Defines.InternalEvents.HAS_AUGMENTATION]]
---@param callback fun(ship?: Hyperspace.ShipManager, augment?: string, value?: integer): chain: Defines.Chain, value: integer Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when checking an augmentation's value
---@param eventId 22 --[[@as Defines.InternalEvents.GET_AUGMENTATION_VALUE]]
---@param callback fun(ship?: Hyperspace.ShipManager, augment?: string, value?: number): chain: Defines.Chain, value: number Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Can be used to alter the dodge factor for the given ship
---@param eventId 23 --[[@as Defines.InternalEvents.GET_DODGE_FACTOR]]
---@param callback fun(ship?: Hyperspace.ShipManager, value?: integer): chain: Defines.Chain, value: integer Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Can be used to alter the bonus power for the given system
---@param eventId 24 --[[@as Defines.InternalEvents.SET_BONUS_POWER]]
---@param callback fun(system?: Hyperspace.ShipSystem, amount?: integer): chain: Defines.Chain, amount: integer Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Triggered when selecting a weapon to fire, can be used to alter or block the selected weapon
---@param eventId 25 --[[@as Defines.InternalEvents.SELECT_ARMAMENT_PRE]]
---@param callback fun(armamentSlot?: uint): chain: Defines.Chain, armamentSlot: uint Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Triggered after selecting a weapon to fire
---@param eventId 26 --[[@as Defines.InternalEvents.SELECT_ARMAMENT_POST]]
---@param callback fun(armamentSlot?: uint): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when a projectile is initialized
---@param eventId 27 --[[@as Defines.InternalEvents.PROJECTILE_INITIALIZE]]
---@param callback fun(projectile?: Hyperspace.Projectile, bp?: Hyperspace.WeaponBlueprint) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when a projectile is fired
---@param eventId 28 --[[@as Defines.InternalEvents.PROJECTILE_FIRE]]
---@param callback fun(projectile?: Hyperspace.Projectile, weapon?: Hyperspace.ProjectileFactory) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called before projectile processing
---@param eventId 29 --[[@as Defines.InternalEvents.PROJECTILE_PRE]]
---@param callback fun(projectile?: Hyperspace.Projectile): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called after projectile processing
---@param eventId 30 --[[@as Defines.InternalEvents.PROJECTILE_POST]]
---@param callback fun(projectile?: Hyperspace.Projectile, preempted?: boolean): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called before projectile update
---@param eventId 31 --[[@as Defines.InternalEvents.PROJECTILE_UPDATE_PRE]]
---@param callback fun(projectile?: Hyperspace.Projectile): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called after projectile update
---@param eventId 32 --[[@as Defines.InternalEvents.PROJECTILE_UPDATE_POST]]
---@param callback fun(projectile?: Hyperspace.Projectile, preempted?: boolean): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Check and possibly alter the cooldown modifier being applied to a weapon. Return value cannot be greater than 1 for non-artillery weapons.
---@param eventId 33 --[[@as Defines.InternalEvents.WEAPON_COOLDOWN_MOD]]
---@param callback fun(weapon?: Hyperspace.ProjectileFactory, cooldownMod?: number, isArtillery?: boolean): chain: Defines.Chain, cooldownMod: number Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Change the text displayed for the player weapon stats (only works if `redesignedWeaponTooltips` is enabled)
---@param eventId 34 --[[@as Defines.InternalEvents.WEAPON_STATBOX]]
---@param callback fun(bp?: Hyperspace.WeaponBlueprint, stats?: string): chain: Defines.Chain, stats: string Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Change the text displayed for the player weapon description
---@param eventId 35 --[[@as Defines.InternalEvents.WEAPON_DESCBOX]]
---@param callback fun(bp?: Hyperspace.WeaponBlueprint, desc?: string): chain: Defines.Chain, desc: string Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Change the text displayed for the player weapon cooldown timers
---@param eventId 36 --[[@as Defines.InternalEvents.WEAPON_RENDERBOX]]
---@param callback fun(weapon?: Hyperspace.ProjectileFactory, cooldown?: integer, maxCooldown?: integer, firstLine?: string, secondLine?: string, thirdLine?: string): chain: Defines.Chain, firstLine: string, secondLine: string, thirdLine: string Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when a drone fires
---@param eventId 37 --[[@as Defines.InternalEvents.DRONE_FIRE]]
---@param callback fun(projectile?: Hyperspace.Projectile, spacedrone?: Hyperspace.SpaceDrone): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when a drone collides with a projectile
---@param eventId 38 --[[@as Defines.InternalEvents.DRONE_COLLISION]]
---@param callback fun(drone?: Hyperspace.SpaceDrone, projectile?: Hyperspace.Projectile, damage?: Hyperspace.Damage, response?: Hyperspace.CollisionResponse): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when projectiles collide
---@param eventId 39 --[[@as Defines.InternalEvents.PROJECTILE_COLLISION]]
---@param callback fun(thisProjectile?: Hyperspace.Projectile, otherProjectile?: Hyperspace.Projectile, damage?: Hyperspace.Damage, response?: Hyperspace.CollisionResponse): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called before shield collision logic
---@param eventId 40 --[[@as Defines.InternalEvents.SHIELD_COLLISION_PRE]]
---@param callback fun(ship?: Hyperspace.ShipManager, projectile?: Hyperspace.Projectile, damage?: Hyperspace.Damage, response?: Hyperspace.CollisionResponse): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called after shield collision
---@param eventId 41 --[[@as Defines.InternalEvents.SHIELD_COLLISION]]
---@param callback fun(ship?: Hyperspace.ShipManager, projectile?: Hyperspace.Projectile, damage?: Hyperspace.Damage, response?: Hyperspace.CollisionResponse): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when an is about to be hit by a projectile
---@param eventId 42 --[[@as Defines.InternalEvents.DAMAGE_AREA]]
---@param callback fun(ship?: Hyperspace.ShipManager, projectile?: Hyperspace.Projectile, location?: Hyperspace.Pointf, damage?: Hyperspace.Damage, forceHit?: Defines.Evasion, shipFriendlyFire?: boolean): chain: Defines.Chain, forceHit: Defines.Evasion, shipFriendlyFire: boolean Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when an area is hit by a projectile
---@param eventId 43 --[[@as Defines.InternalEvents.DAMAGE_AREA_HIT]]
---@param callback fun(ship?: Hyperspace.ShipManager, projectile?: Hyperspace.Projectile, location?: Hyperspace.Pointf, damage?: Hyperspace.Damage, shipFriendlyFire?: boolean): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when a beam deals damage
---@param eventId 44 --[[@as Defines.InternalEvents.DAMAGE_BEAM]]
---@param callback fun(ship?: Hyperspace.ShipManager, projectile?: Hyperspace.Projectile, location?: Hyperspace.Pointf, damage?: Hyperspace.Damage, newTile?: boolean, beamHit?: Defines.BeamHit): chain: Defines.Chain, beamHit: Defines.BeamHit Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when a system takes damage
---@param eventId 45 --[[@as Defines.InternalEvents.DAMAGE_SYSTEM]]
---@param callback fun(ship?: Hyperspace.ShipManager, projectile?: Hyperspace.Projectile, roomId?: integer, damage?: Hyperspace.Damage): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when damage is added to a system, occurs after all resist calculations
---@param eventId 46 --[[@as Defines.InternalEvents.SYSTEM_ADD_DAMAGE]]
---@param callback fun(sys?: Hyperspace.ShipSystem, projectile?: Hyperspace.Projectile, amount?: integer): chain: Defines.Chain, amount: integer Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when a crew activates a power
---@param eventId 47 --[[@as Defines.InternalEvents.ACTIVATE_POWER]]
---@param callback fun(power?: Hyperspace.ActivatedPower, ship?: Hyperspace.ShipManager): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when preparing a power activation
---@param eventId 48 --[[@as Defines.InternalEvents.PREPARE_POWER]]
---@param callback fun(power?: Hyperspace.ActivatedPower): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when canceling a power
---@param eventId 49 --[[@as Defines.InternalEvents.CANCEL_POWER]]
---@param callback fun(power?: Hyperspace.ActivatedPower, clearAnim?: boolean): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when updating a power
---@param eventId 50 --[[@as Defines.InternalEvents.POWER_ON_UPDATE]]
---@param callback fun(power?: Hyperspace.ActivatedPower): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when updating a resource power
---@param eventId 51 --[[@as Defines.InternalEvents.POWER_RESOURCE_ON_UPDATE]]
---@param callback fun(power?: Hyperspace.ActivatedPowerResource): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when initializing power enable state
---@param eventId 52 --[[@as Defines.InternalEvents.POWER_ENABLE_INIT]]
---@param callback fun(power?: Hyperspace.ActivatedPower): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when initializing resource power enable state
---@param eventId 53 --[[@as Defines.InternalEvents.POWER_RESOURCE_ENABLE_INIT]]
---@param callback fun(power?: Hyperspace.ActivatedPowerResource): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when checking power requirements
---@param eventId 54 --[[@as Defines.InternalEvents.POWER_REQ]]
---@param callback fun(power?: Hyperspace.ActivatedPower, req?: Hyperspace.ActivatedPowerRequirements, result?: PowerReadyState): chain: Defines.Chain, result: PowerReadyState Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when checking if power is ready
---@param eventId 55 --[[@as Defines.InternalEvents.POWER_READY]]
---@param callback fun(power?: Hyperspace.ActivatedPower, result?: PowerReadyState): chain: Defines.Chain, result: PowerReadyState Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when rendering power tooltip
---@param eventId 56 --[[@as Defines.InternalEvents.POWER_TOOLTIP]]
---@param callback fun(power?: Hyperspace.ActivatedPower, state?: PowerReadyState): tooltip: string, skipAppend: boolean Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when generating a new ship from an event
---@param eventId 57 --[[@as Defines.InternalEvents.GENERATOR_CREATE_SHIP]]
---@param callback fun(name?: string, sector?: integer, event?: ShipEvent, bp?: Hyperspace.ShipBlueprint, ret?: Hyperspace.ShipManager): chain: Defines.Chain, sector: integer, event: ShipEvent, bp: Hyperspace.ShipBlueprint, ret: Hyperspace.ShipManager Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called after generating a new ship from an event
---@param eventId 58 --[[@as Defines.InternalEvents.GENERATOR_CREATE_SHIP_POST]]
---@param callback fun(name?: string, sector?: integer, event?: ShipEvent, bp?: Hyperspace.ShipBlueprint, ret?: Hyperspace.ShipManager): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called before the creation of a `ChoiceBox` by a `LocationEvent`
---@param eventId 59 --[[@as Defines.InternalEvents.PRE_CREATE_CHOICEBOX]]
---@param callback fun(event?: Hyperspace.LocationEvent) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called after the creation of a `ChoiceBox` by a `LocationEvent`
---@param eventId 60 --[[@as Defines.InternalEvents.POST_CREATE_CHOICEBOX]]
---@param callback fun(choiceBox?: Hyperspace.ChoiceBox, event?: Hyperspace.LocationEvent) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called for every event that closes the current tab in the upgrade menu
---@param eventId 61 --[[@as Defines.InternalEvents.TABBED_WINDOW_CONFIRM]]
---@param callback fun(currentTabName?: string) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when the UNDO button is activated in the upgrade menu
---@param eventId 62 --[[@as Defines.InternalEvents.TABBED_WINDOW_UNDO]]
---@param callback fun(currentTabName?: string) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when a ship arrives at a beacon
---@param eventId 63 --[[@as Defines.InternalEvents.JUMP_ARRIVE]]
---@param callback fun(ship?: Hyperspace.ShipManager) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when a ship leaves a beacon
---@param eventId 64 --[[@as Defines.InternalEvents.JUMP_LEAVE]]
---@param callback fun(ship?: Hyperspace.ShipManager) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Run code every time the ship waits (Spending a jump cycle without moving beacons, either when out of fuel or at last stand)
---@param eventId 65 --[[@as Defines.InternalEvents.ON_WAIT]]
---@param callback fun(ship?: Hyperspace.ShipManager) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when the mouse is moved at coordinates (`x`, `y`). Coordinates are relative to the SystemBox in question.
---@param eventId 66 --[[@as Defines.InternalEvents.SYSTEM_BOX_MOUSE_MOVE]]
---@param callback fun(systemBox?: Hyperspace.SystemBox, x?: integer, y?: integer): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when the mouse is clicked. `shift` indicates whether the shift key is held on click.
---@param eventId 67 --[[@as Defines.InternalEvents.SYSTEM_BOX_MOUSE_CLICK]]
---@param callback fun(systemBox?: Hyperspace.SystemBox, shift?: boolean): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when a key is pressed. `Key` argument indicates the specific key pressed, and `shift` argument indicates whether the shift key is held on click.
---@param eventId 68 --[[@as Defines.InternalEvents.SYSTEM_BOX_KEY_DOWN]]
---@param callback fun(systemBox?: Hyperspace.SystemBox, Key?: Defines.SDL, shift?: boolean): chain: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called to get the description of what a system does at a certain level. `systemId` indicates the ID of the system, `level` indicates the power level, and `tooltip` indicates whether the string being generated is in the context of a mouseover tooltip.
---@param eventId 69 --[[@as Defines.InternalEvents.GET_LEVEL_DESCRIPTION]]
---@param callback fun(systemId?: integer, level?: integer, tooltip?: boolean): level_description: string Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called once per ship every game tick to calculate a multiplier to the rate at which airlocks and breaches drain oxygen.
---@param eventId 70 --[[@as Defines.InternalEvents.CALCULATE_LEAK_MODIFIER]]
---@param callback fun(ship?: Hyperspace.ShipManager, modifier?: number): modifier: Defines.Chain? Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when constructing a crew member
---@param eventId 71 --[[@as Defines.InternalEvents.CONSTRUCT_CREWMEMBER]]
---@param callback fun(crew?: Hyperspace.CrewMember) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when constructing a space drone
---@param eventId 72 --[[@as Defines.InternalEvents.CONSTRUCT_SPACEDRONE]]
---@param callback fun(drone?: Hyperspace.SpaceDrone) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when constructing a weapon
---@param eventId 73 --[[@as Defines.InternalEvents.CONSTRUCT_PROJECTILE_FACTORY]]
---@param callback fun(weapon?: Hyperspace.ProjectileFactory) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when constructing a projectile
---@param eventId 74 --[[@as Defines.InternalEvents.CONSTRUCT_PROJECTILE]]
---@param callback fun(projectile?: Hyperspace.Projectile) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when constructing a room
---@param eventId 75 --[[@as Defines.InternalEvents.CONSTRUCT_ROOM]]
---@param callback fun(room?: Hyperspace.Room) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when constructing a ShipManager
---@param eventId 76 --[[@as Defines.InternalEvents.CONSTRUCT_SHIP_MANAGER]]
---@param callback fun(ship?: Hyperspace.ShipManager) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when constructing a ship system
---@param eventId 77 --[[@as Defines.InternalEvents.CONSTRUCT_SHIP_SYSTEM]]
---@param callback fun(system?: Hyperspace.ShipSystem) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- Called when constructing a GUI system box
---@param eventId 78 --[[@as Defines.InternalEvents.CONSTRUCT_SYSTEM_BOX]]
---@param callback fun(systemBox?: Hyperspace.SystemBox) Callback to be called when the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_internal_event(eventId, callback, priority) end

--- On rendering the main menu
---@param eventId 1 --[[@as Defines.RenderEvents.MAIN_MENU]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- On rendering the main game, this is a wrapper around the entire game UI
---@param eventId 2 --[[@as Defines.RenderEvents.GUI_CONTAINER]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- The space background layer
---@param eventId 3 --[[@as Defines.RenderEvents.LAYER_BACKGROUND]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- The space foreground layer, includes the planet/solar flare/ion storm/nebula but not asteroids
---@param eventId 4 --[[@as Defines.RenderEvents.LAYER_FOREGROUND]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- The space asteroids layer, in front of the the space foreground
---@param eventId 5 --[[@as Defines.RenderEvents.LAYER_ASTEROIDS]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- The player ship, you can render things on top the player ship by using the after method of the callbacks
---@param eventId 6 --[[@as Defines.RenderEvents.LAYER_PLAYER]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- Any active ship, you can render things on top the ship by using the after method of the callbacks
---@param eventId 7 --[[@as Defines.RenderEvents.SHIP]]
---@param preCallback fun(ship?: Hyperspace.Ship): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(ship?: Hyperspace.Ship) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- `before_function` is equivalent to `roomAnim` layer 3, `after_function` is equivalent to `roomAnim` layer 4
---@param eventId 8 --[[@as Defines.RenderEvents.SHIP_MANAGER]]
---@param preCallback fun(ship?: Hyperspace.ShipManager, showInterior?: boolean, doorControlMode?: boolean): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(ship?: Hyperspace.ShipManager, showInterior?: boolean, doorControlMode?: boolean) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- Any active ship that is jumping, you can render things on top the ship by using the after method of the callbacks
---@param eventId 9 --[[@as Defines.RenderEvents.SHIP_JUMP]]
---@param preCallback fun(ship?: Hyperspace.Ship, animationProgress?: number): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(ship?: Hyperspace.Ship, animationProgress?: number) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- On rendering the ship hull, cloak and thruster animations
---@param eventId 10 --[[@as Defines.RenderEvents.SHIP_HULL]]
---@param preCallback fun(ship?: Hyperspace.Ship, alphaCloak?: number): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(ship?: Hyperspace.Ship, alphaCloak?: number) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- Thruster animations
---@param eventId 11 --[[@as Defines.RenderEvents.SHIP_ENGINES]]
---@param preCallback fun(ship?: Hyperspace.Ship, showEngines?: boolean, alpha?: number): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(ship?: Hyperspace.Ship, showEngines?: boolean, alpha?: number) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- Equivalent to `roomAnim` layer 0
---@param eventId 12 --[[@as Defines.RenderEvents.SHIP_FLOOR]]
---@param preCallback fun(ship?: Hyperspace.Ship, experimental?: boolean): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(ship?: Hyperspace.Ship, experimental?: boolean) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- Equivalent to `roomAnim` layer 1
---@param eventId 13 --[[@as Defines.RenderEvents.SHIP_BREACHES]]
---@param preCallback fun(ship?: Hyperspace.Ship): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(ship?: Hyperspace.Ship) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- Equivalent to `roomAnim` layer 2
---@param eventId 14 --[[@as Defines.RenderEvents.SHIP_SPARKS]]
---@param preCallback fun(ship?: Hyperspace.Ship): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(ship?: Hyperspace.Ship) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- Runs for each `CrewMember` regardless of whether their health bar is visible
---@param eventId 15 --[[@as Defines.RenderEvents.CREW_MEMBER_HEALTH]]
---@param preCallback fun(crew?: Hyperspace.CrewMember): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(crew?: Hyperspace.CrewMember) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- In front of player ship, where asteroids above the ship are rendered but you can draw whatever you want
---@param eventId 16 --[[@as Defines.RenderEvents.LAYER_FRONT]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- Same layer as the FTL jump button and most of the player UI
---@param eventId 17 --[[@as Defines.RenderEvents.FTL_BUTTON]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- Called for each individual SystemBox, passed under the `systemBox` arg. Render coordinates are in the reference frame of the SystemBox. Unsure what `ignoreStatus` does.
---@param eventId 18 --[[@as Defines.RenderEvents.SYSTEM_BOX]]
---@param preCallback fun(systemBox?: Hyperspace.SystemBox, ignoreStatus?: boolean): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(systemBox?: Hyperspace.SystemBox, ignoreStatus?: boolean) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- On rendering hazard environment icons
---@param eventId 19 --[[@as Defines.RenderEvents.SPACE_STATUS]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- On rendering player element like hull and ressources
---@param eventId 20 --[[@as Defines.RenderEvents.SHIP_STATUS]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- When any choiceBox related window is on screen
---@param eventId 21 --[[@as Defines.RenderEvents.CHOICE_BOX]]
---@param preCallback fun(choiceBox?: Hyperspace.ChoiceBox): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(choiceBox?: Hyperspace.ChoiceBox) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- On rendering a tab in the upgrade interface
---@param eventId 22 --[[@as Defines.RenderEvents.TABBED_WINDOW]]
---@param preCallback fun(currentTab?: integer): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun(currentTab?: integer) Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end

--- Rendering at the highest layer above everything else where the mouse cursor is finally drawn
---@param eventId 23 --[[@as Defines.RenderEvents.MOUSE_CONTROL]]
---@param preCallback fun(): chain: Defines.Chain? Callback to be called just before the event occurs.
---@param postCallback fun() Callback to be called just after the event occurs.
---@param priority? integer = 0. Determines the order of calling the callbacks. Priority with a greater number will be called first.
function script.on_render_event(eventId, preCallback, postCallback, priority) end