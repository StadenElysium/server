-- C'Thun portals aren't targettable
UPDATE creature_template SET unit_flags = unit_flags | 33554432 WHERE entry IN (15896, 15904, 15910);

-- Correct eye tentacle model
UPDATE creature_template SET modelid_1 = 15788 WHERE entry = 15726;

-- Correct giant eye tentacle scale
UPDATE creature_template SET scale = 5 WHERE entry = 15334;

-- Correct giant claw tentacle scale
UPDATE creature_template SET scale = 5 WHERE entry = 15728;

-- Setting correct scale of claw tentacle
UPDATE creature_template SET `scale`='2' WHERE `entry`='15725';

-- Setting correct scale of Eye Tentacle
UPDATE creature_template SET `scale`='1' WHERE `entry`='15726';


-- cmangos unit flags C'Thun tentacles TOD : search flags name
UPDATE creature_template SET unit_flags = unit_flags | 32768 WHERE entry IN (15334, 15725, 15726, 15728, 15802);

  -- Bigger melee range for c'thun in p1
  UPDATE creature_model_info set `combat_reach` = 15, `bounding_radius` = 15  where `modelid` = 15556;
  
  
  -- flesh tentacle fix melee range
  UPDATE creature_model_info set `combat_reach` = 10, `bounding_radius` = 1.2  where `modelid` = 15793;	
  
  -- Giant claw tentacle fix melee range
  UPDATE creature_model_info set `combat_reach` = 10, `bounding_radius` = 1.2  where `modelid` = 15790;	
  
  -- Claw tentacle fix melee range
  UPDATE creature_model_info set `combat_reach` = 10, `bounding_radius` = 1.89  where `modelid` = 15789;	
  
  -- Eye tentacle fix melee range
  UPDATE creature_model_info set `combat_reach` = 3.5, `bounding_radius` = 1.2  where `modelid` = 15788;	
  
  -- Giant Eye tentacle fix melee range
  UPDATE creature_model_info set `combat_reach` = 3.5, `bounding_radius` = 1.2  where `modelid` = 15788;	
  
  
  -- moved c'thun eye and body slightly towards entrance
UPDATE creature SET `position_x`='-8577.270', `position_y`='1986.942' WHERE `guid`='87560';

UPDATE creature SET `position_x`='-8577.270', `position_y`='1986.942' WHERE `guid`='87559';


-- Set Giant claw dmg to around 2500 dmg per hit on a full t2 geared tank, with demo shout up. ~3200 without demo shout.
UPDATE creature_template SET `mindmg`='8500', `maxdmg`='9500' WHERE `entry`='15728';

-- Set Giant eye dmg to around 2500 dmg per hit on a full t2 geared tank, with demo shout up. ~3200 without demo shout.
UPDATE creature_template SET `mindmg`='8500', `maxdmg`='9500', `baseattacktime`='2000' WHERE `entry`='15334';

-- Set eye tentacle dmg to around 650-750 dmg per hit on 40% armor
UPDATE creature_template SET `mindmg`='1000', `maxdmg`='1600', `baseattacktime`='2000' WHERE `entry`='15726';

