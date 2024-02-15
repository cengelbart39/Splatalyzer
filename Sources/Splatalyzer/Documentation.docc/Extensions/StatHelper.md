# ``Splatalyzer/StatHelper``

## Topics

### Main Statistics

- ``shotSpreadAir(ap:values:mainInfo:)``
- ``shotAutofireSpreadAir(ap:values:mainInfo:)``

### Sub Statistics
- ``subInkConsumptionPercentage(ap:abilities:mainInfo:subInfo:)``
- ``subVelocity(ap:values:subInfo:)``
- ``subPhaseDuration(ap:values:subInfo:first:)``
- ``subMarkingSeconds(ap:values:subInfo:)``
- ``subMarkingRadius(ap:values:subInfo:)``
- ``subExplosionRadius(ap:values:subInfo:)``
- ``subHp(ap:values:subInfo:)``
- ``quickSuperJumpBoost(ap:values:subInfo:)``

### Special Statistics
- ``specialPoint(ap:values:mainInfo:)``
- ``specialLost(ap:abilities:gearBuild:mainInfo:splattedByRP:)``
- ``specialDuration(ap:values:specialInfo:)``
- ``specialDamageDistance(ap:values:specialInfo:)``
- ``specialPaintRadius(ap:values:specialInfo:)``
- ``specialFieldHp(ap:values:specialInfo:)``
- ``specialDeviceHp(ap:values:specialInfo:)``
- ``specialHookInkConsumption(ap:values:specialInfo:)``
- ``specialHookInkConsumptionPerSecond(ap:values:specialInfo:)``
- ``specialReticleRadius(ap:values:specialInfo:)``
- ``specialThrowDistance(ap:values:specialInfo:)``
- ``specialMoveSpeed(ap:values:specialInfo:)``
- ``specialAutoChargeRate(ap:values:specialInfo:)``
- ``specialMaxRadius(ap:values:specialInfo:)``
- ``specialRadiusRange(ap:values:specialInfo:)``
- ``specialPowerUpDuration(ap:values:specialInfo:)``

### Sub Defense Statistics
- ``toxicMistMovementReduction(ap:values:mainInfo:)``
- ``subMarkedSeconds(ap:values:mainInfo:subInfo:)``
- ``inkMineMarkedSeconds(ap:values:mainInfo:inkMine:)``

### Movement Statistics
- ``swimSpeed(ap:values:gearBuild:mainInfo:)``
- ``swimSpeedWithRainmaker(ap:values:gearBuild:mainInfo:)``
- ``runSpeed(ap:abilities:mainInfo:)``
- ``shootingRunSpeed(for:ap:abilities:mainInfo:)``
- ``squidSurgeChargeFrames(ap:values:mainInfo:)``
- ``runSpeedInEnemyInk(ap:values:mainInfo:)``
- ``framesBeforeDamageInEnemyInk(ap:values:mainInfo:)``
- ``damageInEnemyInkPerSecond(ap:values:mainInfo:)``
- ``enemyInkDamageLimit(ap:values:mainInfo:)``

### Miscellaneous Statistics
- ``inkRecoverySeconds(effectKey:ap:abilities:mainInfo:)``
- ``respawnTime(ap:values:gearBuild:mainInfo:splatedByRP:hasTacticooler:)``
- ``superJumpGroundFrames(ap:values:mainInfo:)``
- ``superJumpTimeTotal(ap:values:mainInfo:)``

### Uncategorized Statistics
- ``multiShotDict``
- ``fullInkTankOptions(ap:abilities:mainInfo:subInfo:)``
- ``mainDamages(mainInfo:)``
- ``specialDamages(specialInfo:)``
- ``subDefenseDamages(ap:abilities:subData:)``

### Helper Functions
- ``abilityValues(for:in:weapon:)``
- ``lerpN(_:_:)``
- ``shotsToSplat(for:of:with:)``
- ``subDamageValue(ap:abilities:baseValue:subInfo:)``
- ``specialSavedAfterDeath(_:)``
- ``quickSuperJumpValue(for:with:)``
- ``superJumpTotalFrames(ap:values:mainInfo:)``
