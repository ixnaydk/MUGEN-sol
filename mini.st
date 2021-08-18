[Statedef 8000]
Type = S
movetype = I
ctrl = 0
sprpriority = -99

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Ishelper(8000)
trigger1 = Selfanimexist (root, anim)
value = root, anim
elem =  root, animelemno(0)
ignorehitpause = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 0, Turn]
type = Turn
trigger1 = facing = (root, facing*-1)
ignorehitpause = 1

[State 0, Offset]
type = Offset
trigger1 = Ishelper(8000)
x = (ifelse(teamside = 1, - screenpos x + 30, - screenpos x + 290))
y = (-screenpos y + 50)

[State 0, DestroySelf]
type = DestroySelf
trigger1 =  !(root, Alive)
ignorehitpause = 1

