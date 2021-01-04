; Based off the Wiiware version of the song

Mad_Gear_Header:
smpsHeaderStartSong = 1
;	Voice Pointer	location
	smpsHeaderVoice	Mad_Gear_Voices
;	Channel Setup	FM	PSG
	smpsHeaderChan	$07,	$00
;	Tempo Setup	divider	modifier
	smpsHeaderTempo	$03,	$80

;	DAC Pointer	location
	smpsHeaderDAC	Mad_Gear_DAC
;	FM1 Pointer	location	pitch		volume
	smpsHeaderFM	Mad_Gear_FM1,	smpsPitch01hi,	$00
;	FM2 Pointer	location	pitch		volume
	smpsHeaderFM	Mad_Gear_FM2,	smpsPitch00,	$0A
;	FM3 Pointer	location	pitch		volume
	smpsHeaderFM	Mad_Gear_FM3,	smpsPitch00,	$0A
;	FM4 Pointer	location	pitch		volume
	smpsHeaderFM	Mad_Gear_FM4,	smpsPitch00,	$1B
;	FM5 Pointer	location	pitch		volume
	smpsHeaderFM	Mad_Gear_FM5,	smpsPitch00,	$0A
;	FM6 Pointer	location	pitch		volume
	smpsHeaderFM	Mad_Gear_FM6,	smpsPitch01lo,	$09

; FM1 Data
Mad_Gear_FM1:
;	Set FM Voice	#
	smpsSetvoice	$00
Mad_Gear_Jump01:
	dc.b		nC1,	$04,	nG1,	$02,	nC1,	$04,	nD1,	$02
	dc.b		nEb1,	$02,	nG1,	$02,	nBb1,	$04,	nF1,	$02
	dc.b		nBb1,	$04,	nC2,	$01,	nC3,	$01,	nBb1,	$01
	dc.b		nF2,	$01,	nBb2,	$01,	nF3,	$01,	nAb1,	$04
	dc.b		nEb1,	$02,	nAb1,	$04,	nG1,	$02,	nF1,	$02
	dc.b		nEb1,	$02,	nCs1,	$04,	nAb1,	$02,	nCs1,	$02
	dc.b		nCs2,	$01,	nCs1,	$01,	nF1,	$01,	nAb1,	$01
	dc.b		nCs2,	$01,	nF2,	$01,	nAb2,	$01,	nCs3,	$01
	dc.b		nC1,	$04,	nG1,	$02,	nC1,	$04,	nD1,	$02
	dc.b		nEb1,	$02,	nG1,	$02,	nBb1,	$04,	nF1,	$02
	dc.b		nBb1,	$04,	nC2,	$01,	nC3,	$01,	nBb1,	$01
	dc.b		nF2,	$01,	nBb2,	$01,	nF3,	$01,	nAb1,	$04
	dc.b		nEb1,	$02,	nAb1,	$04,	nG1,	$02,	nF1,	$02
	dc.b		nEb1,	$02,	nCs1,	$04,	nAb1,	$02,	nCs1,	$02
	dc.b		nCs2,	$01,	nCs1,	$01,	nF1,	$01,	nAb1,	$01
	dc.b		nCs2,	$01,	nF2,	$01,	nAb2,	$01,	nCs3,	$01
	dc.b		nC1,	$04,	nG1,	$02,	nC1,	$04,	nD1,	$02
	dc.b		nEb1,	$02,	nG1,	$02,	nBb1,	$04,	nF1,	$02
	dc.b		nBb1,	$04,	nF1,	$02,	nBb1,	$01,	nBb2,	$01
	dc.b		nA1,	$01,	nA2,	$01,	nAb1,	$04,	nEb1,	$02
	dc.b		nAb1,	$04,	nG1,	$01,	nG2,	$01,	nFs1,	$02
	dc.b		nF1,	$02,	nEb1,	$02,	nEb1,	$02,	nRst,	$02
	dc.b		nF1,	$02,	nRst,	$02,	nFs1,	$02,	nG1,	$01
	dc.b		nG2,	$01,	nG3,	$01,	nG2,	$01,	nC1,	$04
	dc.b		nG1,	$02,	nC1,	$04,	nD1,	$02,	nEb1,	$02
	dc.b		nG1,	$02,	nBb1,	$04,	nF1,	$02,	nBb1,	$04
	dc.b		nF1,	$02,	nBb1,	$01,	nBb2,	$01,	nA1,	$01
	dc.b		nA2,	$01,	nAb1,	$04,	nEb1,	$02,	nAb1,	$04
	dc.b		nAb1,	$01,	nAb2,	$01,	nG1,	$02,	nEb1,	$02
	dc.b		nF1,	$02,	nF1,	$02,	nRst,	$02,	nAb1,	$02
	dc.b		nRst,	$02,	nFs1,	$02,	nRst,	$02,	nG1,	$02
	dc.b		nC2,	$02,	nC1,	$02,	nG1,	$02,	nC1,	$04
	dc.b		nD1,	$02,	nEb1,	$02,	nG1,	$02,	nBb1,	$04
	dc.b		nF1,	$02,	nBb1,	$04,	nF1,	$02,	nBb1,	$01
	dc.b		nBb2,	$01,	nA2,	$02,	nAb2,	$04,	nEb2,	$02
	dc.b		nAb1,	$04,	nG1,	$01,	nG2,	$01,	nFs1,	$02
	dc.b		nF1,	$04,	nAb1,	$02,	nRst,	$02,	nG1,	$02
	dc.b		nRst,	$02,	nAb1,	$01,	nAb2,	$01,	nG1,	$02
	dc.b		nBb1,	$01,	nBb2,	$01,	nC1,	$04,	nG1,	$02
	dc.b		nC1,	$04,	nG1,	$02,	nFs1,	$01,	nG2,	$01
	dc.b		nF1,	$02,	nEb1,	$04,	nBb1,	$02,	nEb1,	$04
	dc.b		nBb1,	$02,	nEb2,	$01,	nG2,	$01,	nBb2,	$01
	dc.b		nEb3,	$01,	nAb1,	$02,	nAb1,	$02,	nEb1,	$02
	dc.b		nAb1,	$04,	nEb2,	$02,	nAb1,	$02,	nF1,	$02
	dc.b		nRst,	$02,	nFs1,	$02,	nRst,	$02,	nAb1,	$02
	dc.b		nRst,	$02,	nG1,	$02,	nRst,	$02,	nBb1,	$02
	dc.b		nEb2,	$02,	nBb2,	$02,	nEb2,	$01,	nEb3,	$01
	dc.b		nD3,	$02,	nA2,	$02,	nD2,	$01,	nD3,	$01
	dc.b		nCs2,	$01,	nAb2,	$01,	nCs3,	$01,	nCs2,	$01
;	Jump To	 	location
	smpsJump	Mad_Gear_Jump01

; FM2 Data
Mad_Gear_FM2:
Mad_Gear_Jump02:
;	Set FM Voice	#
	smpsSetvoice	$02
;	Note Fill	duration
	smpsNoteFill	$00
	dc.b		nC5,	$01,	nC5,	$01,	nC5,	$02,	nRst,	$02
	dc.b		nG4,	$03,	nRst,	$03,	nBb4,	$04,	nC5,	$01
	dc.b		nC5,	$01,	nC5,	$02,	nRst,	$02,	nEb5,	$0A
	dc.b		nC5,	$01,	nC5,	$01,	nC5,	$02,	nRst,	$02
	dc.b		nG4,	$06,	nBb4,	$04,	nC5,	$01,	nC5,	$01
	dc.b		nC5,	$02,	nRst,	$02,	nBb4,	$0A,	nC5,	$01
	dc.b		nC5,	$01,	nC5,	$02,	nRst,	$02,	nG4,	$03
	dc.b		nRst,	$03,	nBb4,	$04,	nC5,	$01,	nC5,	$01
	dc.b		nC5,	$02,	nRst,	$02,	nEb5,	$0A,	nC5,	$01
	dc.b		nC5,	$01,	nC5,	$02,	nRst,	$02,	nG4,	$06
	dc.b		nBb4,	$04,	nC5,	$01,	nC5,	$01,	nC5,	$02
	dc.b		nRst,	$02,	nBb4,	$0A
;	Set FM Voice	#
	smpsSetvoice	$01
	dc.b		nRst,	$02,	nG5,	$01,	nRst,	$01,	nD5,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$01,	nRst,	$01,	nD5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nG5,	$01,	nRst,	$01,	nD5,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$01,	nRst,	$01,	nD5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nC5,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nC5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nF5,	$01,	nRst,	$01,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nF5,	$01,	nRst,	$01,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nF5,	$01,	nRst,	$01,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nF5,	$01,	nRst,	$01,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nEb5,	$01,	nRst,	$01,	nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nEb5,	$01,	nRst,	$01,	nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nEb5,	$01,	nRst,	$01,	nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nEb5,	$01,	nRst,	$01,	nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nAb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nAb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nG4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nAb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nAb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nD5,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nD5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nG5,	$01,	nRst,	$01,	nD5,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$01,	nRst,	$01,	nD5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nG5,	$01,	nRst,	$01,	nD5,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nG5,	$01,	nRst,	$01,	nD5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nC5,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nC5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nF5,	$01,	nRst,	$01,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nF5,	$01,	nRst,	$01,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nF5,	$01,	nRst,	$01,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nF5,	$01,	nRst,	$01,	nC5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nEb5,	$01,	nRst,	$01,	nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nEb5,	$01,	nRst,	$01,	nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nEb5,	$01,	nRst,	$01,	nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nEb5,	$01,	nRst,	$01,	nBb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nAb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nAb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nAb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nAb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nAb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nAb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nC5,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nC5,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nD5,	$01,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$07
	dc.b		nC5,	$01,	nF4,	$01,	nG4,	$01,	nC4,	$01
	dc.b		nRst,	$08,	nC4,	$01,	nF4,	$01,	nG4,	$01
	dc.b		nBb4,	$01,	nC5,	$01,	nF5,	$01,	nG5,	$01
	dc.b		nBb4,	$01,	nRst,	$08,	nBb3,	$01,	nF4,	$01
	dc.b		nBb4,	$01,	nF5,	$01,	nEb5,	$01,	nBb4,	$01
	dc.b		nAb4,	$01,	nEb4,	$01,	nRst,	$08,	nAb3,	$01
	dc.b		nEb4,	$01,	nAb4,	$01,	nEb5,	$01,	nRst,	$02
;	Set FM Voice	#
	smpsSetvoice	$01
	dc.b		nC5,	$01,	nRst,	$03,	nAb4,	$01,	nRst,	$03
	dc.b		nBb4,	$01,	nRst,	$03,	nD5,	$01,	nRst,	$01
;	Set FM Voice	#
	smpsSetvoice	$07
	dc.b		nC5,	$01,	nF4,	$01,	nG4,	$01,	nC4,	$01
	dc.b		nRst,	$08,	nC4,	$01,	nF4,	$01,	nG4,	$01
	dc.b		nBb4,	$01,	nC5,	$01,	nF5,	$01,	nG5,	$01
	dc.b		nBb4,	$01,	nRst,	$08,	nBb3,	$01,	nF4,	$01
	dc.b		nBb4,	$01,	nF5,	$01,	nEb5,	$01,	nBb4,	$01
	dc.b		nAb4,	$01,	nEb4,	$01,	nRst,	$08,	nAb3,	$01
	dc.b		nEb4,	$01,	nAb4,	$01,	nEb5,	$01,	nRst,	$02
;	Set FM Voice	#
	smpsSetvoice	$01
	dc.b		nEb5,	$01,	nRst,	$03,	nCs5,	$01,	nRst,	$03
	dc.b		nB4,	$01,	nRst,	$03,	nD5,	$01,	nRst,	$03
;	Note Fill	duration
	smpsNoteFill	$09
	dc.b		nEb5,	$02,	nEb5,	$02,	nRst,	$02,	nD5,	$02
	dc.b		nD5,	$02,	nCs5,	$02,	nCs5,	$02
;	Jump To	 	location
	smpsJump	Mad_Gear_Jump02

; FM3 Data
Mad_Gear_FM3:
Mad_Gear_Jump03:
;	Set FM Voice	#
	smpsSetvoice	$02
;	Note Fill	duration
	smpsNoteFill	$00
	dc.b		nC4,	$01,	nC4,	$01,	nC4,	$02,	nRst,	$02
	dc.b		nC4,	$0A,	nF4,	$01,	nF4,	$01,	nF4,	$02
	dc.b		nRst,	$02,	nF4,	$0A,	nEb4,	$01,	nEb4,	$01
	dc.b		nEb4,	$02,	nRst,	$02,	nEb4,	$0A,	nCs4,	$01
	dc.b		nCs4,	$01,	nCs4,	$02,	nRst,	$02,	nCs4,	$0A
	dc.b		nC4,	$01,	nC4,	$01,	nC4,	$02,	nRst,	$02
	dc.b		nC4,	$0A,	nF4,	$01,	nF4,	$01,	nF4,	$02
	dc.b		nRst,	$02,	nF4,	$0A,	nEb4,	$01,	nEb4,	$01
	dc.b		nEb4,	$02,	nRst,	$02,	nEb4,	$0A,	nCs4,	$01
	dc.b		nCs4,	$01,	nCs4,	$02,	nRst,	$02,	nCs4,	$0A
;	Set FM Voice	#
	smpsSetvoice	$06
	dc.b		nC5,	$06,	nEb5,	$04,	nD5,	$04,	nBb4,	$02
	dc.b		nC5,	$06,	nG4,	$06,	nF4,	$04,	nG4,	$06
	dc.b		nC5,	$0B,	nRst,	$0F,	nC5,	$06,	nEb5,	$04
	dc.b		nD5,	$02,	nBb4,	$04,	nC5,	$06,	nG4,	$06
	dc.b		nBb4,	$04,	nC5,	$06,	nAb4,	$0B,	nRst,	$55
	dc.b		$3C
;	Set FM Voice	#
	smpsSetvoice	$01
;	Note Fill	duration
	smpsNoteFill	$09
	dc.b		nBb4,	$02,	nBb4,	$02,	nRst,	$02,	nA4,	$02
	dc.b		nA4,	$02,	nAb4,	$02,	nAb4,	$02
;	Jump To	 	location
	smpsJump	Mad_Gear_Jump03

; FM4 Data
Mad_Gear_FM4:
Mad_Gear_Jump04:
	smpsModOff
;	Set FM Voice	#
	smpsSetvoice	$02
;	Note Fill	duration
	smpsNoteFill	$00
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nRst,	$03,	nC5,	$01,	nC5,	$01,	nC5,	$02
	dc.b		nRst,	$02,	nG4,	$03,	nRst,	$03,	nBb4,	$04
	dc.b		nC5,	$01,	nC5,	$01,	nC5,	$02,	nRst,	$02
	dc.b		nEb5,	$0A,	nC5,	$01,	nC5,	$01,	nC5,	$02
	dc.b		nRst,	$02,	nG4,	$06,	nBb4,	$04,	nC5,	$01
	dc.b		nC5,	$01,	nC5,	$02,	nRst,	$02,	nBb4,	$0A
	dc.b		nC5,	$01,	nC5,	$01,	nC5,	$02,	nRst,	$02
	dc.b		nG4,	$03,	nRst,	$03,	nBb4,	$04,	nC5,	$01
	dc.b		nC5,	$01,	nC5,	$02,	nRst,	$02,	nEb5,	$0A
	dc.b		nC5,	$01,	nC5,	$01,	nC5,	$02,	nRst,	$02
	dc.b		nG4,	$06,	nBb4,	$04,	nC5,	$01,	nC5,	$01
	dc.b		nC5,	$02,	nRst,	$02,	nBb4,	$09
;	Set FM Voice	#
	smpsSetvoice	$06
	dc.b		smpsNoAttack,	$01,	nC5,	$06,	nEb5,	$04,	nD5,	$04
	dc.b		nBb4,	$02,	nC5,	$06,	nG4,	$06,	nF4,	$04
	dc.b		nG4,	$06,	nC5,	$0B,	nRst,	$0F,	nC5,	$06
	dc.b		nEb5,	$04,	nD5,	$02,	nBb4,	$04,	nC5,	$06
	dc.b		nG4,	$06,	nBb4,	$04,	nC5,	$06,	nAb4,	$0B
	dc.b		nRst,	$0E
;	Set FM Voice	#
	smpsSetvoice	$08
;	Set Modulation	wait	speed	change	step
	smpsModSet	$00,	$01,	$07,	$04
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nG4,	$02,	nC5,	$02,	nD5,	$02,	nEb5,	$02
	dc.b		nF5,	$02,	nRst,	$02,	nG5,	$02,	nRst,	$02
	dc.b		nD5,	$02,	nF5,	$0A,	nRst,	$04,	nG4,	$02
	dc.b		nC5,	$02,	nD5,	$02,	nEb5,	$02,	nF5,	$02
	dc.b		nRst,	$02,	nG5,	$02,	nRst,	$02,	nEb5,	$01
	dc.b		nBb5,	$01,	nA5,	$08,	nF5,	$02,	nRst,	$04
	dc.b		nG4,	$02,	nC5,	$02,	nD5,	$02,	nEb5,	$02
	dc.b		nF5,	$02,	nRst,	$02,	nG5,	$02,	nRst,	$02
	dc.b		nD5,	$02,	nF5,	$0B,	nRst,	$01,	nD5,	$04
	dc.b		nG4,	$02,	nBb4,	$04,	nRst,	$02,	nC5,	$04
	dc.b		nG4,	$08,	nD5,	$02,	nRst,	$02,	nF5,	$02
	dc.b		nRst,	$02
;	Set FM Voice	#
	smpsSetvoice	$01
	dc.b		$02
	smpsModOff
;	Note Fill	duration
	smpsNoteFill	$09
	dc.b		nG5,	$02,	nG5,	$02,	nRst,	$02,	nFs5,	$02
	dc.b		nFs5,	$02,	nF5,	$02,	nF5,	$02
;	Jump To	 	location
	smpsJump	Mad_Gear_Jump04

; FM5 Data
Mad_Gear_FM5:
Mad_Gear_Jump05:
	smpsModOff
;	Set FM Voice	#
	smpsSetvoice	$02
;	Note Fill	duration
	smpsNoteFill	$00
	dc.b		nG4,	$01,	nG4,	$01,	nG4,	$02,	nRst,	$02
	dc.b		nD4,	$03,	nRst,	$03,	nF4,	$04,	nG4,	$01
	dc.b		nG4,	$01,	nG4,	$02,	nRst,	$02,	nBb4,	$0A
	dc.b		nG4,	$01,	nG4,	$01,	nG4,	$02,	nRst,	$02
	dc.b		nC4,	$06,	nF4,	$04,	nG4,	$01,	nG4,	$01
	dc.b		nG4,	$02,	nRst,	$02,	nF4,	$0A,	nG4,	$01
	dc.b		nG4,	$01,	nG4,	$02,	nRst,	$02,	nD4,	$03
	dc.b		nRst,	$03,	nF4,	$04,	nG4,	$01,	nG4,	$01
	dc.b		nG4,	$02,	nRst,	$02,	nBb4,	$0A,	nG4,	$01
	dc.b		nG4,	$01,	nG4,	$02,	nRst,	$02,	nC4,	$06
	dc.b		nF4,	$04,	nG4,	$01,	nG4,	$01,	nG4,	$02
	dc.b		nRst,	$02,	nF4,	$0A
;	Set FM Voice	#
	smpsSetvoice	$01
	dc.b		nRst,	$02,	nC5,	$01,	nRst,	$01,	nG4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nC5,	$01,	nRst,	$01,	nG4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nC5,	$01,	nRst,	$01,	nG4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nC5,	$01,	nRst,	$01,	nG4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nG4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$01,	nF4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01,	nRst,	$01,	nF4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$01,	nF4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01,	nRst,	$01,	nF4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nF4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nF4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$01,	nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01,	nRst,	$01,	nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$01,	nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01,	nRst,	$01,	nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nEb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nC4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nC4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nEb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nF4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nF4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nEb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nC5,	$01,	nRst,	$01,	nG4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nC5,	$01,	nRst,	$01,	nG4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nC5,	$01,	nRst,	$01,	nG4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nC5,	$01,	nRst,	$01,	nG4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nG4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$01,	nF4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01,	nRst,	$01,	nF4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$01,	nF4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01,	nRst,	$01,	nF4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nF4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nF4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$01,	nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01,	nRst,	$01,	nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nBb4,	$01,	nRst,	$01,	nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nBb4,	$01,	nRst,	$01,	nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nEb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nF4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nF4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nEb4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nEb4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nF4,	$01,	nRst,	$02
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nF4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nG4,	$01,	nRst,	$02
;	Set Modulation	wait	speed	change	step
	smpsModSet	$00,	$01,	$07,	$04
;	Alter Volume	value
	smpsAlterVol	$10
	dc.b		nG4,	$01
;	Alter Volume	value
	smpsAlterVol	-$10
	dc.b		nC5,	$02,	nEb5,	$02,	nF5,	$02,	nG5,	$02
	dc.b		nBb5,	$02,	nRst,	$02,	nC6,	$02,	nRst,	$02
	dc.b		nG5,	$02,	nBb5,	$0A,	nRst,	$04,	nC5,	$02
	dc.b		nEb5,	$02,	nF5,	$02,	nG5,	$02,	nBb5,	$02
	dc.b		nRst,	$02,	nC6,	$02,	nRst,	$02,	nAb4,	$01
	dc.b		nEb6,	$01,	nD6,	$02,	nF4,	$01,	nRst,	$03
	dc.b		nF4,	$01,	nRst,	$01,	nBb5,	$02,	nG4,	$01
	dc.b		nRst,	$03,	nC5,	$02,	nEb5,	$02,	nF5,	$02
	dc.b		nG5,	$02,	nBb5,	$02,	nRst,	$02,	nC6,	$02
	dc.b		nRst,	$02,	nG5,	$02,	nBb5,	$0B,	nRst,	$01
	dc.b		nG5,	$04,	nC5,	$02,	nEb5,	$04,	nRst,	$02
	dc.b		nF5,	$04,	nRst,	$02,	nFs4,	$01,	nRst,	$03
	dc.b		nAb4,	$01,	nRst,	$01,	nG5,	$02,	nG4,	$01
	dc.b		nRst,	$01,	nBb5,	$02,	nFs4,	$01,	nRst,	$03
	smpsModOff
;	Note Fill	duration
	smpsNoteFill	$09
	dc.b		nBb5,	$02,	nBb5,	$02,	nRst,	$02,	nA5,	$02
	dc.b		nA5,	$02,	nAb5,	$02,	nAb5,	$02
;	Jump To	 	location
	smpsJump	Mad_Gear_Jump05

; FM6 Data
Mad_Gear_FM6:
Mad_Gear_Jump06:
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01,	nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01,	nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01,	nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01,	nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01,	nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01,	nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$03
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$03
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$03
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$03
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$03
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$03
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$03
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$03
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02,	nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$03
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01,	nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01,	nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01,	nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$02
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$03
	dc.b		nB0,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
;	Set FM Voice	#
	smpsSetvoice	$04
	dc.b		nA5,	$01
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Set FM Voice	#
	smpsSetvoice	$05
	dc.b		nG2,	$01,	nG2,	$01
;	Set FM Voice	#
	smpsSetvoice	$04
;	Jump To	 	location
	smpsJump	Mad_Gear_Jump06

; DAC Data
Mad_Gear_DAC:
	smpsStop

Mad_Gear_Voices:
;	Voice 00
;	$28,$71,$00,$30,$01,$1F,$1F,$1D,$1F,$13,$13,$06,$05,$03,$03,$02,$05,$4F,$4F,$2F,$3F,$0E,$14,$1E,$0A
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$05
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$03,	$00,	$07
	smpsVcCoarseFreq	$01,	$00,	$00,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1D,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$05,	$06,	$13,	$13
	smpsVcDecayRate2	$05,	$02,	$03,	$03
	smpsVcDecayLevel	$03,	$02,	$04,	$04
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$0A,	$1E,	$14,	$0E

;	Voice 01
;	$3A,$01,$07,$31,$71,$8E,$8E,$8D,$53,$0E,$0E,$0E,$06,$00,$00,$00,$00,$1F,$FF,$1F,$2F,$18,$28,$27,$00
;				#
	smpsVcAlgorithm		$02
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$07,	$03,	$00,	$00
	smpsVcCoarseFreq	$01,	$01,	$07,	$01
	smpsVcRateScale		$01,	$02,	$02,	$02
	smpsVcAttackRate	$13,	$0D,	$0E,	$0E
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$06,	$0E,	$0E,	$0E
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$02,	$01,	$0F,	$01
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$27,	$28,	$18

;	Voice 02
;	$3B,$3E,$42,$41,$33,$DE,$14,$1E,$14,$14,$0F,$0F,$00,$01,$00,$00,$00,$36,$25,$26,$29,$1F,$1E,$19,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$04,	$04,	$03
	smpsVcCoarseFreq	$03,	$01,	$02,	$0E
	smpsVcRateScale		$00,	$00,	$00,	$03
	smpsVcAttackRate	$14,	$1E,	$14,	$1E
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$0F,	$0F,	$14
	smpsVcDecayRate2	$00,	$00,	$00,	$01
	smpsVcDecayLevel	$02,	$02,	$02,	$03
	smpsVcReleaseRate	$09,	$06,	$05,	$06
	smpsVcTotalLevel	$00,	$19,	$1E,	$1F

;	Voice 03
;	$0E,$03,$01,$02,$00,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$10,$0A,$0F,$0C,$47,$06,$08,$06,$00,$00,$0C,$00
;				#
	smpsVcAlgorithm		$06
	smpsVcFeedback		$01
;				op1	op2	op3	op4
	smpsVcDetune		$00,	$00,	$00,	$00
	smpsVcCoarseFreq	$00,	$02,	$01,	$03
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$1F,	$1F,	$1F,	$1F
	smpsVcDecayRate2	$0C,	$0F,	$0A,	$10
	smpsVcDecayLevel	$00,	$00,	$00,	$04
	smpsVcReleaseRate	$06,	$08,	$06,	$07
	smpsVcTotalLevel	$00,	$0C,	$00,	$00

;	Voice 04
;	$38,$7B,$5B,$40,$40,$9F,$1F,$1F,$1F,$0F,$0B,$05,$0C,$0F,$19,$0C,$13,$F9,$F5,$F9,$06,$21,$01,$01,$00
;				#
	smpsVcAlgorithm		$00
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$04,	$04,	$05,	$07
	smpsVcCoarseFreq	$00,	$00,	$0B,	$0B
	smpsVcRateScale		$00,	$00,	$00,	$02
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0C,	$05,	$0B,	$0F
	smpsVcDecayRate2	$13,	$0C,	$19,	$0F
	smpsVcDecayLevel	$00,	$0F,	$0F,	$0F
	smpsVcReleaseRate	$06,	$09,	$05,	$09
	smpsVcTotalLevel	$00,	$01,	$01,	$21

;	Voice 05
;	$34,$0F,$7F,$45,$40,$1F,$1F,$1F,$1F,$0C,$0F,$13,$0F,$00,$13,$17,$0B,$F7,$29,$1F,$29,$00,$00,$0D,$00
;				#
	smpsVcAlgorithm		$04
	smpsVcFeedback		$06
;				op1	op2	op3	op4
	smpsVcDetune		$04,	$04,	$07,	$00
	smpsVcCoarseFreq	$00,	$05,	$0F,	$0F
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$1F,	$1F,	$1F,	$1F
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$0F,	$13,	$0F,	$0C
	smpsVcDecayRate2	$0B,	$17,	$13,	$00
	smpsVcDecayLevel	$02,	$01,	$02,	$0F
	smpsVcReleaseRate	$09,	$0F,	$09,	$07
	smpsVcTotalLevel	$00,	$0D,	$00,	$00

;	Voice 06
;	$3B,$51,$71,$61,$41,$51,$16,$18,$1A,$05,$01,$01,$00,$09,$01,$01,$01,$17,$97,$27,$47,$1C,$22,$15,$00
;				#
	smpsVcAlgorithm		$03
	smpsVcFeedback		$07
;				op1	op2	op3	op4
	smpsVcDetune		$04,	$06,	$07,	$05
	smpsVcCoarseFreq	$01,	$01,	$01,	$01
	smpsVcRateScale		$00,	$00,	$00,	$01
	smpsVcAttackRate	$1A,	$18,	$16,	$11
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$01,	$01,	$05
	smpsVcDecayRate2	$01,	$01,	$01,	$09
	smpsVcDecayLevel	$04,	$02,	$09,	$01
	smpsVcReleaseRate	$07,	$07,	$07,	$07
	smpsVcTotalLevel	$00,	$15,	$22,	$1C

;	Voice 07
;	$06,$71,$41,$31,$31,$12,$12,$12,$12,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$0F,$0F,$0F,$23,$00,$23,$00
;				#
	smpsVcAlgorithm		$06
	smpsVcFeedback		$00
;				op1	op2	op3	op4
	smpsVcDetune		$03,	$03,	$04,	$07
	smpsVcCoarseFreq	$01,	$01,	$01,	$01
	smpsVcRateScale		$00,	$00,	$00,	$00
	smpsVcAttackRate	$12,	$12,	$12,	$12
	smpsVcAmpMod		$00,	$00,	$00,	$00
	smpsVcDecayRate1	$00,	$00,	$00,	$00
	smpsVcDecayRate2	$00,	$00,	$00,	$00
	smpsVcDecayLevel	$00,	$00,	$00,	$00
	smpsVcReleaseRate	$0F,	$0F,	$0F,	$0F
	smpsVcTotalLevel	$00,	$23,	$00,	$23

;	Voice $08
;	$3D
;	$01, $02, $02, $02, 	$1F, $08, $8A, $0A, 	$08, $08, $08, $08
;	$00, $01, $00, $00, 	$0F, $1F, $1F, $1F, 	$1F, $88, $88, $87
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0A, $0A, $08, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $08
	smpsVcDecayRate2    $00, $00, $01, $00
	smpsVcDecayLevel    $01, $01, $01, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $07, $08, $08, $1F
	even
