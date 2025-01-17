[XCX_FPS++_Overdrive_General] ; ########################################################
moduleMatches = 0xF882D5CF, 0x30B6E091, 0x7672271D ; 1.0.1E, 1.0.2U, 1.0.2J

.origin = codecave

_over:
	fmr f31, f1
	lis r31, averageFPS1Inv@ha
	lfs f1, averageFPS1Inv@l(r31)
	fmuls f1, f31, f1
	blr

[XCX_FPS++_Overdrive_V101E] ; ########################################################
moduleMatches = 0xF882D5CF ; 1.0.1E

0x021BC904 = bla _over ; Gear::CGear::update((float))
0x021E2020 = bla _over ; Gear::CMode::Update((float))

[XCX_FPS++_Overdrive_V102U] ; ########################################################
moduleMatches = 0x30B6E091 ; 1.0.2U

0x021BC904 = bla _over ; Gear::CGear::update((float))
0x021E2020 = bla _over ; Gear::CMode::Update((float))

[XCX_FPS++_Overdrive_V102J] ; ########################################################
moduleMatches = 0x7672271D ; 1.0.2J

0x021BC3D0 = bla _over ; Gear::CGear::update((float))
0x021E1AEC = bla _over ; Gear::CMode::Update((float))