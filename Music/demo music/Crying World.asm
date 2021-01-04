; =============================================================================================
; Project Name:		CryingWorld
; Created:		23rd December 2020
; ---------------------------------------------------------------------------------------------
; ASM'd using S1SMPS2ASM version 1.1 by Marc Gordon (AKA Cinossu)
; =============================================================================================

CryingWorld_Header:
;	Voice Pointer	location
	smpsHeaderVoice	CryingWorld_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$06,	$03
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$01,	$50

;	DAC Pointer	location
	smpsHeaderDAC	CryingWorld_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	CryingWorld_FM1,	smpsPitch00,	$0C
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	CryingWorld_FM2,	smpsPitch00,	$14
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	CryingWorld_FM3,	smpsPitch00,	$14
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	CryingWorld_FM4,	smpsPitch00,	$0C
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	CryingWorld_FM5,	smpsPitch00,	$14
;	PSG1 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	CryingWorld_PSG1,	smpsPitch00,	$06,	$00,	$00
;	PSG2 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	CryingWorld_PSG2,	smpsPitch00,	$06,	$00,	$00
;	PSG3 Pointer	location	pitch		volume	instrument
	smpsHeaderPSG	CryingWorld_PSG3,	smpsPitch00,	$07,	$00,	$00

; FM1 Data
CryingWorld_FM1:
	dc.b		nRst,	$18
CryingWorld_Loop01:
;	Call At	 	location
	smpsCall	CryingWorld_Call01
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$08,	CryingWorld_Loop01
CryingWorld_Loop02:
;	Call At	 	location
	smpsCall	CryingWorld_Call01
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$10,	CryingWorld_Loop02
CryingWorld_Loop03:
;	Call At	 	location
	smpsCall	CryingWorld_Call02
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$08,	CryingWorld_Loop03
CryingWorld_Loop04:
;	Call At	 	location
	smpsCall	CryingWorld_Call03
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$06,	CryingWorld_Loop04
;	Set FM Voice	#
	smpsSetvoice	$01
;	Call At	 	location
	smpsCall	CryingWorld_Call04
;	Jump To	 	location
	smpsJump	CryingWorld_Loop01
	smpsStop

CryingWorld_Call01:
;	Set FM Voice	#
	smpsSetvoice	$00
	dc.b		nFs3,	$14,	nF3,	$10,	nE3,	$14,	nCs3,	$10
	dc.b		nC3,	$0C,	nCs3
	smpsReturn

CryingWorld_Call02:
;	Set FM Voice	#
	smpsSetvoice	$00
	dc.b		nC3,	$14,	nCs3,	$10,	nE3,	$14,	nF3,	$10
	dc.b		nFs3,	$0C,	nG3
	smpsReturn

CryingWorld_Call03:
;	Set FM Voice	#
	smpsSetvoice	$00
	dc.b		nFs3,	$14,	nCs3,	$10,	nG3,	$14,	nFs3,	$10
	dc.b		nE3,	$0C,	nCs3
	smpsReturn

CryingWorld_Call04:
	dc.b		nFs2,	$07,	nRst,	$01,	nFs2,	$03,	nRst,	$01
;	Alter Volume	value
	smpsAlterVol	$01
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$08,	CryingWorld_Call04
CryingWorld_Loop05:
;	Alter Volume	value
	smpsAlterVol	$FF
	dc.b		nFs2,	$07,	nRst,	$01,	nFs2,	$03,	nRst,	$01
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$08,	CryingWorld_Loop05
	smpsReturn

; FM2 Data
CryingWorld_FM2:
	dc.b		nRst,	$18
CryingWorld_Loop06:
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set Modulation	wait	speed	change	step
	smpsModSet	$02,	$01,	$06,	$FE
	dc.b		nC2,	$60
;	Set Modulation	wait	speed	change	step
	smpsModSet	$00,	$00,	$00,	$00
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$07,	CryingWorld_Loop06
	dc.b		nRst,	$60
;	Call At	 	location
	smpsCall	CryingWorld_Call05
;	Call At	 	location
	smpsCall	CryingWorld_Call06
;	Call At	 	location
	smpsCall	CryingWorld_Call05
;	Call At	 	location
	smpsCall	CryingWorld_Call06
;	Call At	 	location
	smpsCall	CryingWorld_Call07
;	Alter Pitch	value
	smpsAlterPitch	$F4
;	Call At	 	location
	smpsCall	CryingWorld_Call07
;	Alter Pitch	value
	smpsAlterPitch	$0C
;	Call At	 	location
	smpsCall	CryingWorld_Call07
;	Alter Pitch	value
	smpsAlterPitch	$0C
;	Call At	 	location
	smpsCall	CryingWorld_Call07
;	Alter Pitch	value
	smpsAlterPitch	$F4
;	Call At	 	location
	smpsCall	CryingWorld_Call08
;	Call At	 	location
	smpsCall	CryingWorld_Call09
;	Call At	 	location
	smpsCall	CryingWorld_Call08
;	Call At	 	location
	smpsCall	CryingWorld_Call0A
;	Call At	 	location
	smpsCall	CryingWorld_Call08
;	Call At	 	location
	smpsCall	CryingWorld_Call09
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set Modulation	wait	speed	change	step
	smpsModSet	$02,	$01,	$06,	$FE
	dc.b		nC2,	$60,	smpsNoAttack,	$60
;	Set Modulation	wait	speed	change	step
	smpsModSet	$00,	$00,	$00,	$00
;	Jump To	 	location
	smpsJump	CryingWorld_Loop06
	smpsStop

CryingWorld_Call05:
;	Set FM Voice	#
	smpsSetvoice	$02
	dc.b		nCs3,	$14,	nFs3,	$10,	nCs4,	$0C,	nG3,	$30
	dc.b		nB3,	$24,	nA3,	$0C,	nG3,	$14,	nFs3,	$10
	dc.b		nE3,	$0C,	nFs3,	$14,	nE3,	$10,	nCs3,	$0C
	dc.b		smpsNoAttack,	$30,	nRst,	$60
	smpsReturn

CryingWorld_Call06:
	dc.b		nCs3,	$14,	nFs3,	$10,	nCs4,	$0C,	nFs4,	$30
	dc.b		nE4,	$24,	nD4,	$0C,	nE4,	$14,	nD4,	$10
	dc.b		nCs4,	$08,	nB3,	$04,	nCs4,	$14,	nBb3,	$10
	dc.b		nFs3,	$0C,	smpsNoAttack,	$30,	nRst,	$60
	smpsReturn

CryingWorld_Call07:
;	Set FM Voice	#
	smpsSetvoice	$07
;	Note Fill	duration
	smpsNoteFill	$08
	dc.b		nC3,	$0C,	nC3,	nC3,	nC3,	nC3,	nC3,	nC3
	dc.b		nC3
;	Note Fill	duration
	smpsNoteFill	$00
	dc.b		nC3,	$08,	nFs3,	$04
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC3,	$08,	nFs3,	$04
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC3,	$08,	nFs3,	$04
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC3,	$08,	nFs3,	$04
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC3,	$08,	nFs3,	$04
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC3,	$08,	nFs3,	$04
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nC3,	$08,	nFs3,	$04
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nC3,	$08,	nFs3,	$04
;	Alter Volume	value
	smpsAlterVol	$E4
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	smpsReturn

CryingWorld_Call08:
;	Set FM Voice	#
	smpsSetvoice	$08
;	Note Fill	duration
	smpsNoteFill	$0E
	dc.b		nFs3,	$14,	nCs3,	$10,	nG3,	$14,	nFs3,	$10
;	Note Fill	duration
	smpsNoteFill	$0C
	dc.b		nE3,	$0C,	nCs3
;	Note Fill	duration
	smpsNoteFill	$00
	smpsReturn

CryingWorld_Call09:
;	Set FM Voice	#
	smpsSetvoice	$08
;	Note Fill	duration
	smpsNoteFill	$0E
	dc.b		nFs3,	$14,	nCs3,	$10,	nG3,	$14,	nFs3,	$10
;	Note Fill	duration
	smpsNoteFill	$0C
	dc.b		nE3,	$0C,	nAb3
;	Note Fill	duration
	smpsNoteFill	$00
	smpsReturn

CryingWorld_Call0A:
;	Set FM Voice	#
	smpsSetvoice	$08
;	Note Fill	duration
	smpsNoteFill	$0E
	dc.b		nFs3,	$14,	nCs3,	$10,	nG3,	$14,	nFs3,	$10
;	Note Fill	duration
	smpsNoteFill	$0C
	dc.b		nE3,	$0C,	nE4
;	Note Fill	duration
	smpsNoteFill	$00
	smpsReturn

; FM5 Data
CryingWorld_FM5:
;	Alter Notes	value
	smpsAlterNote	$FE
;	Alter Volume	value
	smpsAlterVol	$09
	dc.b		nRst,	$0C
;	Jump To	 	location
	smpsJump	CryingWorld_FM2
	smpsStop

; FM4 Data
CryingWorld_FM4:
	dc.b		nRst,	$18
CryingWorld_Loop07:
;	Call At	 	location
	smpsCall	CryingWorld_Call0B
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$07,	CryingWorld_Loop07
	dc.b		nRst,	$60
CryingWorld_Loop08:
;	Call At	 	location
	smpsCall	CryingWorld_Call0B
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$20,	CryingWorld_Loop08
;	Jump To	 	location
	smpsJump	CryingWorld_Loop07
	smpsStop

CryingWorld_Call0B:
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nFs3,	$0C,	nCs3,	nD3,	nEb3,	nE3,	$08,	nEb3
	dc.b		$0C,	nD3,	$10,	nCs3,	$0C
	smpsReturn

; FM3 Data
CryingWorld_FM3:
	dc.b		nRst,	$18
CryingWorld_Loop09:
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
;	Call At	 	location
	smpsCall	CryingWorld_Call0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
;	Call At	 	location
	smpsCall	CryingWorld_Call0C
;	Loop To	 	index	loops	location
	smpsLoop	$01,	$03,	CryingWorld_Loop09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
;	Call At	 	location
	smpsCall	CryingWorld_Call0C
;	Call At	 	location
	smpsCall	CryingWorld_Call0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
CryingWorld_Loop0A:
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
;	Call At	 	location
	smpsCall	CryingWorld_Call0C
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
;	Call At	 	location
	smpsCall	CryingWorld_Call0C
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Loop To	 	index	loops	location
	smpsLoop	$01,	$08,	CryingWorld_Loop0A
CryingWorld_Loop0B:
;	Call At	 	location
	smpsCall	CryingWorld_Call0D
;	Loop To	 	index	loops	location
	smpsLoop	$01,	$08,	CryingWorld_Loop0B
CryingWorld_Loop0C:
;	Call At	 	location
	smpsCall	CryingWorld_Call0E
;	Loop To	 	index	loops	location
	smpsLoop	$01,	$07,	CryingWorld_Loop0C
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set Modulation	wait	speed	change	step
	smpsModSet	$02,	$01,	$06,	$FE
	dc.b		nC2,	$60
;	Set Modulation	wait	speed	change	step
	smpsModSet	$00,	$00,	$00,	$00
;	Jump To	 	location
	smpsJump	CryingWorld_Loop09
	smpsStop

CryingWorld_Call0C:
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nCs1,	$04,	nFs1,	nCs2
;	Alter Pitch	value
	smpsAlterPitch	$0C
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$04,	CryingWorld_Call0C
CryingWorld_Loop0D:
	dc.b		nFs2,	$06,	nRst
;	Alter Volume	value
	smpsAlterVol	$0A
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$03,	CryingWorld_Loop0D
;	Alter Volume	value
	smpsAlterVol	$E2
;	Alter Pitch	value
	smpsAlterPitch	$D0
;	Set FM Voice	#
	smpsSetvoice	$06
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
;	Alter Volume	value
	smpsAlterVol	$04
;	Set Modulation	wait	speed	change	step
	smpsModSet	$01,	$01,	$0A,	$0A
	dc.b		nC4,	$0B,	nRst,	$01
;	Set Modulation	wait	speed	change	step
	smpsModSet	$00,	$00,	$00,	$00
;	Alter Volume	value
	smpsAlterVol	$FC
	smpsReturn

CryingWorld_Call0D:
;	Set FM Voice	#
	smpsSetvoice	$09
;	Panning	 	direction	amsfms
	smpsPan		panLeft,	$00
	dc.b		nG3,	$0C
;	Alter Pitch	value
	smpsAlterPitch	$FF
;	Alter Volume	value
	smpsAlterVol	$04
;	Panning	 	direction	amsfms
	smpsPan		panRight,	$00
	dc.b		nG3,	$0C
;	Alter Pitch	value
	smpsAlterPitch	$FF
;	Alter Volume	value
	smpsAlterVol	$04
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$04,	CryingWorld_Call0D
;	Alter Volume	value
	smpsAlterVol	$E0
;	Alter Pitch	value
	smpsAlterPitch	$08
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
	smpsReturn

CryingWorld_Call0E:
;	Panning	 	direction	amsfms
	smpsPan		panCentre,	$00
CryingWorld_Loop0E:
;	Set FM Voice	#
	smpsSetvoice	$0A
	dc.b		nRst,	$0C
;	Alter Volume	value
	smpsAlterVol	$04
;	Set Modulation	wait	speed	change	step
	smpsModSet	$01,	$01,	$0A,	$F6
	dc.b		nC4,	$0C
;	Set Modulation	wait	speed	change	step
	smpsModSet	$00,	$00,	$00,	$00
;	Alter Volume	value
	smpsAlterVol	$FC
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$04,	CryingWorld_Loop0E
	smpsReturn

; PSG1 Data
CryingWorld_PSG1:
	dc.b		nRst,	$18
CryingWorld_Jump01:
;	Call At	 	location
	smpsCall	CryingWorld_Call0F
;	Call At	 	location
	smpsCall	CryingWorld_Call0F
;	Call At	 	location
	smpsCall	CryingWorld_Call0F
;	Call At	 	location
	smpsCall	CryingWorld_Call10
;	Jump To	 	location
	smpsJump	CryingWorld_Jump01

CryingWorld_Call0F:
;	Set PSG Voice	#
	smpsPSGvoice	$05
	dc.b		nRst,	$0C,	nG4,	nRst,	nG4
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$02,	CryingWorld_Call0F
	smpsReturn

CryingWorld_Call10:
;	Set PSG Voice	#
	smpsPSGvoice	$00
;	Alter Volume	value
	smpsAlterVol	$02
;	Alter Notes	value
	smpsAlterNote	$00
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nFs3,	$05,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nFs3,	$02,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$09
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$00
;	Alter Volume	value
	smpsAlterVol	$FE
	smpsReturn

; PSG2 Data
CryingWorld_PSG2:
	dc.b		nRst,	$18
CryingWorld_Jump02:
;	Alter Volume	value
	smpsAlterVol	$02
;	Alter Notes	value
	smpsAlterNote	$FF
;	Call At	 	location
	smpsCall	CryingWorld_Call0F
;	Call At	 	location
	smpsCall	CryingWorld_Call0F
;	Alter Volume	value
	smpsAlterVol	$FC
;	Alter Pitch	value
	smpsAlterPitch	$0C
;	Call At	 	location
	smpsCall	CryingWorld_Call11
;	Alter Pitch	value
	smpsAlterPitch	$F4
;	Alter Volume	value
	smpsAlterVol	$02
;	Call At	 	location
	smpsCall	CryingWorld_Call11
;	Jump To	 	location
	smpsJump	CryingWorld_Jump02
	smpsStop

CryingWorld_Call11:
;	Alter Notes	value
	smpsAlterNote	$FF
;	Alter Volume	value
	smpsAlterVol	$02
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$01
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$02
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$03
	dc.b		nFs3,	$05,	nRst,	$03
;	Alter Notes	value
	smpsAlterNote	$04
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$05
	dc.b		nFs3,	$02,	nRst,	$02
;	Alter Notes	value
	smpsAlterNote	$06
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$07
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Notes	value
	smpsAlterNote	$08
	dc.b		nFs3,	$08,	nRst,	$04
;	Alter Volume	value
	smpsAlterVol	$FE
;	Alter Notes	value
	smpsAlterNote	$FF
	smpsReturn

; PSG3 Data
CryingWorld_PSG3:
	dc.b		nRst,	$18
CryingWorld_Jump03:
;	Call At	 	location
	smpsCall	CryingWorld_Call12
;	Call At	 	location
	smpsCall	CryingWorld_Call12
;	Call At	 	location
	smpsCall	CryingWorld_Call13
;	Call At	 	location
	smpsCall	CryingWorld_Call12
;	Jump To	 	location
	smpsJump	CryingWorld_Jump03
	smpsStop

CryingWorld_Call12:
;	Set PSG Voice	#
	smpsPSGvoice	$00
;	Alter Notes	value
	smpsAlterNote	$02
;	Alter Volume	value
	smpsAlterVol	$FC
	dc.b		nRst,	$48,	nD4,	$05,	nRst,	$07
;	Alter Volume	value
	smpsAlterVol	$04
	dc.b		nD4,	$05,	nRst,	$07
;	Alter Notes	value
	smpsAlterNote	$00
	smpsReturn

CryingWorld_Call13:
;	Set PSG Voice	#
	smpsPSGvoice	$00
	dc.b		nC5,	$02,	nF3,	nG4,	nEb3,	nAb4,	nFs3,	nD2
	dc.b		nBb4,	nEb3,	nAb3,	nBb4,	nF2,	nC5,	nG3,	nE4
	dc.b		nEb3,	nAb4,	nFs3,	nD2,	nBb4,	nF3,	nB2,	nEb4
	dc.b		nB2,	nD5,	nE3,	nF4,	nBb3,	nBb4,	nB2,	nB2
	dc.b		nBb4,	nCs3,	nAb3,	nBb4,	nF2,	nC5,	nF3,	nG4
	dc.b		nB2,	nAb4,	nFs3,	nE2,	nAb4,	nBb3,	nAb3,	nEb4
	dc.b		nC2
	smpsReturn

; DAC Data
CryingWorld_DAC:
;	Call At	 	location
	smpsCall	CryingWorld_Call14
CryingWorld_Loop0F:
;	Call At	 	location
	smpsCall	CryingWorld_Call15
;	Call At	 	location
	smpsCall	CryingWorld_Call16
;	Loop To	 	index	loops	location
	smpsLoop	$00,	$03,	CryingWorld_Loop0F
;	Call At	 	location
	smpsCall	CryingWorld_Call15
;	Call At	 	location
	smpsCall	CryingWorld_Call17
;	Jump To	 	location
	smpsJump	CryingWorld_Loop0F
	smpsStop

CryingWorld_Call15:
	dc.b		dKick,	$0C,	dKick,	dSnare,	dKick,	$08,	dSnare,	$0C
	dc.b		dSnare,	$04,	dKick,	$0C,	dSnare,	$14,	dSnare,	$04
	smpsReturn

CryingWorld_Call16:
	dc.b		dKick,	$0C,	dKick,	dSnare,	dKick,	$08,	dSnare,	$0C
	dc.b		dSnare,	$04,	dKick,	$0C,	dSnare,	$0C,	dSnare,	$04
	dc.b		dSnare,	dSnare
	smpsReturn

CryingWorld_Call17:
	dc.b		dKick,	$0C,	dSnare,	dSnare,	dKick,	$08,	dSnare,	$0C
	dc.b		dSnare,	$04,	dKick,	$0C,	dSnare,	$08,	dSnare,	$04
	dc.b		dSnare,	$04,	dSnare,	dSnare
	smpsReturn

CryingWorld_Call14:
	dc.b		dSnare,	$08,	dSnare,	$04,	dSnare,	$04,	dSnare,	dSnare
	smpsReturn
	dc.b		nRst,	$0C,	dSnare
CryingWorld_Jump04:
	dc.b		dSnare,	$08,	$04,	dSnare,	$08,	dSnare,	$04
;	Jump To	 	location
	smpsJump	CryingWorld_Jump04
	smpsStop

CryingWorld_Voices:
;	Voice 00
;	$34,$01,$00,$00,$00,$1F,$1F,$1F,$1F,$0C,$10,$14,$01,$1C,$07,$10,$10,$1F,$1F,$1F,$1F,$11,$81,$0F,$81
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$06
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$01,	$14,	$10,	$0C
	smpsVcDecayRate2	$10,	$10,	$07,	$1C
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$81,	$0F,	$81,	$11

;	Voice 01
;	$34,$01,$00,$00,$00,$1F,$1F,$1F,$1F,$0C,$0F,$0C,$0E,$09,$07,$0D,$0C,$1F,$1F,$1F,$1F,$8C,$01,$84,$01
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$06
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$00,	$00,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0E,	$0C,	$0F,	$0C
	smpsVcDecayRate2	$0C,	$0D,	$07,	$09
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$01,	$84,	$01,	$8C

;	Voice 02
;	$04,$07,$05,$08,$07,$1F,$1F,$1F,$1F,$0D,$1E,$0B,$06,$1D,$07,$00,$09,$1F,$1F,$1F,$1F,$0C,$88,$20,$82
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$07,	$08,	$05,	$07
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$06,	$0B,	$1E,	$0D
	smpsVcDecayRate2	$09,	$00,	$07,	$1D
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$82,	$20,	$88,	$0C

;	Voice 03
;	$04,$00,$02,$09,$08,$1F,$1F,$1F,$1F,$16,$12,$0D,$14,$16,$12,$0F,$14,$1F,$1F,$1F,$1F,$08,$85,$24,$82
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$08,	$09,	$02,	$00
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$14,	$0D,	$12,	$16
	smpsVcDecayRate2	$14,	$0F,	$12,	$16
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$82,	$24,	$85,	$08

;	Voice 04
;	$04,$05,$03,$08,$04,$1F,$1F,$1F,$1F,$0C,$00,$06,$00,$09,$00,$06,$00,$1F,$1F,$1F,$1F,$13,$87,$13,$87
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$04,	$08,	$03,	$05
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$06,	$00,	$0C
	smpsVcDecayRate2	$00,	$06,	$00,	$09
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$87,	$13,	$87,	$13

;	Voice 05
;	$05,$08,$08,$06,$03,$1F,$0F,$0F,$0F,$10,$10,$11,$0F,$10,$15,$12,$0F,$1F,$1F,$1F,$1F,$32,$85,$85,$85
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$03,	$06,	$08,	$08
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$0F,	$0F,	$0F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0F,	$11,	$10,	$10
	smpsVcDecayRate2	$0F,	$12,	$15,	$10
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$85,	$85,	$85,	$32

;	Voice 06
;	$25,$08,$04,$06,$07,$1F,$0F,$0F,$0F,$10,$04,$04,$0F,$10,$15,$12,$0F,$1F,$1F,$1F,$1F,$12,$83,$85,$85
;				#
	smpsVcAlgorithm		$05
	smpsVcFeedback		$04
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$07,	$06,	$04,	$08
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$0F,	$0F,	$0F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0F,	$04,	$04,	$10
	smpsVcDecayRate2	$0F,	$12,	$15,	$10
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$85,	$85,	$83,	$12

;	Voice 07
;	$0F,$0F,$0C,$05,$04,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00,$00,$1F,$1F,$1F,$1F,$84,$84,$84,$84
;				#
	smpsVcAlgorithm		$07
	smpsVcFeedback		$01
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$04,	$05,	$0C,	$0F
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$00,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$84,	$84,	$84,	$84

;	Voice 08
;	$0F,$0F,$0C,$05,$04,$1F,$1F,$1F,$1F,$00,$00,$00,$00,$00,$00,$00,$00,$1F,$1F,$1F,$1F,$84,$84,$84,$84
;				#
	smpsVcAlgorithm		$07
	smpsVcFeedback		$01
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$04,	$05,	$0C,	$0F
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$00,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$84,	$84,	$84,	$84

;	Voice 09
;	$0F,$03,$06,$05,$0D,$0F,$0F,$0F,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$1F,$1F,$1F,$1F,$8A,$8A,$8A,$8A
;				#
	smpsVcAlgorithm		$07
	smpsVcFeedback		$01
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$0D,	$05,	$06,	$03
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$0F,	$0F,	$0F,	$0F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$00,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$8A,	$8A,	$8A,	$8A

;	Voice 0A
;	$04,$08,$08,$08,$08,$1F,$1F,$1F,$0F,$08,$08,$08,$00,$08,$08,$08,$00,$1F,$1F,$1F,$1F,$27,$86,$2A,$87
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$08,	$08,	$08,	$08
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$0F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$08,	$08,	$08
	smpsVcDecayRate2	$00,	$08,	$08,	$08
	smpsVcDecayLevel	$01,	$01,	$01,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$87,	$2A,	$86,	$27
	even
