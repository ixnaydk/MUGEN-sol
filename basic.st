

;---------------------------------------------------------------------------
; Format:
; [Statedef STATENO]
; type = ?      S/C/A/L  stand/crouch/air/liedown
; movetype = ?  I/A/H    idle/attack/gethit
; physics = ?   S/C/A/N  stand/crouch/air/none
; juggle = ?             air juggle points move requires
;
; [State STATENO, ?]     ? - any number you choose
; type = ?
; ...

;---------------------------------------------------------------------------
; Lose by Time Over
; CNS difficulty: basic
[Statedef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Win state decider
; CNS difficulty: basic
[Statedef 180]
type = S

[State 180, 1]
type = ChangeState
trigger1 = Time = 0
value = 181

;---------------------------------------------------------------------------
; Win pose 1
; CNS difficulty: basic
[Statedef 181]
type = S
ctrl = 0
anim = 180
velset = 0,0

[State 181, 1]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;---------------------------------------------------------------------------
; Introduction
; CNS difficulty: basic
[Statedef 190]
type = S
ctrl = 0
anim = 190
velset = 0,0

[State 190, 1] ;Freeze animation until PreIntro is over
type = ChangeAnim
trigger1 = RoundState = 0
value = 190

[State 190, 2] ;Assert this until you want "round 1, fight" to begin
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, 4] ;Change to stand state
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;---------------------------------------------------------------------------
; Taunt
; CNS difficulty: easy
[Statedef 195]
type = S
ctrl = 0
anim = ifelse(Random>500,195,196)
velset = 0,0
movetype = I
physics = S
sprpriority = 2

[State 195, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------|
;Hilt Strike |
;------------|
[Statedef 200]
type    = S
movetype= A
physics = S
juggle  = 1

velset = 0,0
ctrl = 0
anim = 200
poweradd = 20
sprpriority = 2

[State 200, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 8,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3,Hit
pausetime = 8,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------|
;Cross Slash |
;------------|
[Statedef 210]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 210

[State 210, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 29,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3,Hit
pausetime = 8,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 210, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------|
;Dust Attack |
;------------|
[Statedef 220]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 65
ctrl = 0
velset = 0,0
anim = 220

[State 220, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 29,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3,Hit
pausetime = 8,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 220, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------|
;Double Kick |
;------------|
[Statedef 230]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 22
ctrl = 0
velset = 0,0
anim = 230

[State 230, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 22,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3,Hit
pausetime = 8,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 230, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------|
;Slash Up |
;---------|
[Statedef 240]
type    = S
movetype= A
physics = S
juggle  = 5
poweradd= 65
ctrl = 0
velset = 0,0
anim = 240

[State 240, 1]
type = HitDef
trigger1 = Time = 0
attr = S, NA
damage = 38,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3,Hit
pausetime = 8,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 240, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------|
;Knee Cap |
;---------|
[Statedef 400]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 15
ctrl = 0
anim = 400

[State 400, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 6,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3,Hit
pausetime = 8,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 400, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;-----------|
;Whip Cross |
;-----------|
[Statedef 410]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 410

[State 410, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 22,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3,Hit
pausetime = 8,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 410, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;------|
;Sweep |
;------|
[Statedef 420]
type    = C
movetype= A
physics = C
juggle  = 6
poweradd= 50
ctrl = 0
anim = 420

[State 420, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 23,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3,Hit
pausetime = 8,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 420, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------|
;Kick Out |
;---------|
[Statedef 430]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 430

[State 430, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 10,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3,Hit
pausetime = 8,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 430, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------|
;Uppercut |
;---------|
[Statedef 440]
type    = C
movetype= A
physics = C
juggle  = 5
poweradd= 22
ctrl = 0
anim = 440

[State 440, 1]
type = HitDef
trigger1 = Time = 0
attr = C, NA
damage = 36,0
animtype = Light
guardflag = MA
hitflag = MAF
priority = 3,Hit
pausetime = 8,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 12
ground.velocity = -4
airguard.velocity = -1.9,-.8
air.type = High
air.velocity = -1.4,-3
air.hittime = 12

[State 440, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;----|
;Jab |
;----|
[Statedef 600]
type    = A
movetype= A
physics = A
juggle  = 2
poweradd= 11
ctrl = 0
anim = 600

[State 600, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 11,0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 600, 5]
type = CtrlSet
trigger1 = Time = 20
value = 1

;----------|
;Big Slash |
;----------|
[Statedef 610]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 610

[State 610, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 27,0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 610, 5]
type = CtrlSet
trigger1 = Time = 20
value = 1

;----------|
;Side Kick |
;----------|
[Statedef 630]
type    = A
movetype= A
physics = A
juggle  = 3
poweradd= 20
ctrl = 0
anim = 630

[State 630, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 19,0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 630, 5]
type = CtrlSet
trigger1 = Time = 20
value = 1

;-----------|
;Sword Ride |
;-----------|
[Statedef 640]
type    = A
movetype= A
physics = A
juggle  = 4
poweradd= 65
ctrl = 0
anim = 640

[State 640, 2]
type = HitDef
trigger1 = Time = 0
attr = A, NA
damage = 45,0
guardflag = HA
priority = 3
pausetime = 7,8
sparkno = -1
hitsound = 5,0
guardsound = 6,0
ground.type = High
ground.slidetime = 5
ground.hittime  = 5
ground.velocity = -4
air.velocity = -1.3,-3

[State 640, 5]
type = CtrlSet
trigger1 = Time = 20
value = 1

;---------------------------------------------------------------------------
; Throw - Attempt
[Statedef 800]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
ctrl = 0
anim = 800

; Notes: The '-' symbol in the hitflag field means that it only affects
;   players who are not in a hit state. This prevents the player from combo-ing
;   into the throw. The priority should be set to a low number, such as
;   1 or 2, so that the throw does not take precedence over normal attacks.
;   The type of priority must always be set to "Miss" or "Dodge" for throws,
;   otherwise strange behavior can result.
[State 800, 1]
type = HitDef
Trigger1 = Time = 0
attr = S, NT          ;Attributes: Standing, Normal Throw
hitflag = M-          ;Affect only ground people who are not being hit
priority = 1, Miss    ;Throw has low priority, must be miss or dodge type.
sparkno = -1          ;No spark
sprpriority = 1       ;Draw in front of p2
p1facing = ifelse (command = "holdfwd", -1, 1) ;Turn if holding forwards
p2facing = 1          ;Force p2 to face player
p1stateno = 810       ;On success, player changes to state 810
p2stateno = 820       ;If hit, p2 changes to state 820 in player's cns
fall = 1              ;Force p2 into falling down

[State 800, 2]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Throwing the opponent
[Statedef 810]
type    = S
movetype= A
physics = N
anim = 810
poweradd = 60

[State 810, Bind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0
pos = 28, 0

[State 810, Width 2-11]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
edge = 60,0

[State 810, Bind 2-4]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
pos = 58, 0

[State 810, Bind 5]
type = TargetBind
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
pos = 47, 0

[State 810, Bind 6]
type = TargetBind
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
pos = 41, -60

[State 810, Bind 7]
type = TargetBind
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
pos = 25, -75

[State 810, Bind 8]
type = TargetBind
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
pos = 15, -90

[State 810, Bind 9]
type = TargetBind
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
pos = -5, -96

[State 810, Bind 10]
type = TargetBind
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
pos = -14, -90

[State 810, Bind 11]
type = TargetBind
trigger1 = AnimElem = 11
pos = -50, -50

[State 810, Hurt 11]
type = TargetLifeAdd
trigger1 = AnimElem = 11
value = -78

[State 810, Throw 11]
type = TargetState
trigger1 = AnimElem = 11
value = 821

[State 810, Turn 12]
type = Turn
trigger1 = AnimElem = 12

[State 810, Pos 15]
type = PosAdd
trigger1 = AnimElem = 15
x = -10

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Opponent Thrown
[Statedef 820]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 820

;---------------------------------------------------------------------------
; Opponent thrown into the air
[Statedef 821]
type    = A
movetype= H
physics = N
velset = 2.8,-7
poweradd = 40

[State 821, 1] ;Gravity
type = VelAdd
Trigger1 = 1
y = .4

[State 821, 2] ; Recover near ground (use ChangeState)
type = ChangeState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 821, 3] ; Recover in mid air (use SelfState)
type = SelfState
triggerall = Vel Y > 0
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5210 ;HITFALL_AIRRECOVER

[State 821, 4] ;Hit ground
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100 ;Hit ground

;---------------------------------------------------------------------------
; Override common states (use same number to override) :
;---------------------------------------------------------------------------

;---------------------------------------------------------------------------
; States that are always executed (use statedef -2)
;---------------------------------------------------------------------------
[Statedef -2]

;MINI CHARACTER (ONLY IN SINGLE MODE)
[State -2, Helper]
type = Helper
trigger1 = teammode = single
trigger1 = !Numhelper(8000)
helpertype = normal
name = "Mini Character"
ID = 8000
stateno = 8000
postype = p1
ownpal = 0
size.xscale = .5
size.yscale = .5

[State -2, DefenceMulSet]
type = DefenceMulSet
trigger1 = 1
value = ifelse(Life<=LifeMax&&Life>310,1,ifelse(Life<=310&&Life>210,0.94,ifelse(Life<=210&&Life>150,0.88,ifelse(Life<=150&&Life>90,0.69,ifelse(Life<=90&&Life>40,0.56,ifelse(Life<=40,0.47,0.39))))))

[State -2, AttackMulSet]
type = AttackMulSet
trigger1 = 1
value = ifelse(Life<=LifeMax&&Life>310,1,ifelse(Life<=310&&Life>210,1.06,ifelse(Life<=210&&Life>150,1.12,ifelse(Life<=150&&Life>90,1.31,ifelse(Life<=90&&Life>40,1.44,ifelse(Life<=40,1.53,1.61))))))
;---------------------------------------------------------------------------
; States that are executed when in self's state file (use statedef -3)
;---------------------------------------------------------------------------

[Statedef -3]

;This controller plays a sound everytime the player lands from a jump, or
;from a back-dash.
[State -3, Landing Sound]
type = PlaySnd
triggerall = Time = 1
trigger1 = stateno = 52 ;Jump land
trigger2 = stateno = 106 ;Run-back land
value = 40, 0
