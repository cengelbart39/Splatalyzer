# ``Splatalyzer/StatHelper``

## Topics

### Main Statistics

- ``shotSpreadAir(ap:mainInfo:)``
- ``shotAutofireSpreadAir(ap:mainInfo:)``

### Sub Statistics
- ``subInkConsumptionPercentage(ap:mainInfo:subInfo:)``
- ``subVelocity(ap:subInfo:)``
- ``subPhaseDuration(ap:subInfo:first:)``
- ``subMarkingSeconds(ap:subInfo:)``
- ``subMarkingRadius(ap:subInfo:)``
- ``subExplosionRadius(ap:subInfo:)``
- ``subHp(ap:subInfo:)``
- ``quickSuperJumpBoost(ap:subInfo:)``

### Special Statistics
- ``specialPoint(ap:mainInfo:)``
- ``specialLost(ap:gearBuild:mainInfo:splattedByRP:)``
- ``specialDuration(ap:specialInfo:)``
- ``specialDamageDistance(ap:specialInfo:)``
- ``specialPaintRadius(ap:specialInfo:)``
- ``specialFieldHp(ap:specialInfo:)``
- ``specialDeviceHp(ap:specialInfo:)``
- ``specialHookInkConsumption(ap:specialInfo:)``
- ``specialHookInkConsumptionPerSecond(ap:specialInfo:)``
- ``specialReticleRadius(ap:specialInfo:)``
- ``specialThrowDistance(ap:specialInfo:)``
- ``specialMoveSpeed(ap:specialInfo:)``
- ``specialAutoChargeRate(ap:specialInfo:)``
- ``specialMaxRadius(ap:specialInfo:)``
- ``specialRadiusRange(ap:specialInfo:)``
- ``specialPowerUpDuration(ap:specialInfo:)``

### Sub Defense Statistics
- ``toxicMistMovementReduction(ap:mainInfo:)``
- ``subMarkedSeconds(ap:mainInfo:subInfo:)``
- ``inkMineMarkedSeconds(ap:mainInfo:inkMine:)``

### Movement Statistics
- ``swimSpeed(ap:gearBuild:mainInfo:)``
- ``swimSpeedWithRainmaker(ap:gearBuild:mainInfo:)``
- ``runSpeed(ap:mainInfo:)``
- ``shootingRunSpeed(for:ap:mainInfo:)``
- ``squidSurgeChargeFrames(ap:mainInfo:)``
- ``runSpeedInEnemyInk(ap:mainInfo:)``
- ``framesBeforeDamageInEnemyInk(ap:mainInfo:)``
- ``damageInEnemyInkPerSecond(ap:mainInfo:)``
- ``enemyInkDamageLimit(ap:mainInfo:)``

### Miscellaneous Statistics
- ``inkRecoverySeconds(effectKey:ap:mainInfo:)``
- ``respawnTime(ap:gearBuild:mainInfo:splatedByRP:hasTacticooler:)``
- ``superJumpGroundFrames(ap:mainInfo:)``
- ``superJumpTimeTotal(ap:mainInfo:)``

### Uncategorized Statistics
- ``multiShotDict``
- ``fullInkTankOptions(ap:mainInfo:subInfo:)``
- ``mainDamages(mainInfo:)``
- ``specialDamages(specialInfo:)``
- ``subDefenseDamages(ap:subData:)``

### Helper Functions
- ``abilityValues(for:weapon:)``
- ``lerpN(_:_:)``
- ``shotsToSplat(for:of:with:)``
- ``subDamageValue(ap:baseValue:subInfo:)``
- ``specialSavedAfterDeath(_:)``
- ``quickSuperJumpValue(for:with:)``
- ``superJumpTotalFrames(ap:mainInfo:)``
