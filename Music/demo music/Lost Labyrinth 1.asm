; Based off the Wiiware version of the song

LostLabyrinth1_Header:
smpsHeaderStartSong = 1
	smpsHeaderVoice     LostLabyrinth1_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $02, $0F

	smpsHeaderDAC       LostLabyrinth1_DAC
	smpsHeaderFM        LostLabyrinth1_FM1,	0+12, $09
	smpsHeaderFM        LostLabyrinth1_FM2,	$00, $06
	smpsHeaderFM        LostLabyrinth1_FM3,	$00-12, $14
	smpsHeaderFM        LostLabyrinth1_FM4,	$00-12, $14
	smpsHeaderFM        LostLabyrinth1_FM5,	$00-12, $14
	smpsHeaderPSG       LostLabyrinth1_PSG1,	$00, $00, $00, $00
	smpsHeaderPSG       LostLabyrinth1_PSG2,	$00, $00, $00, $00
	smpsHeaderPSG       LostLabyrinth1_PSG3,	$00, $00, $00, fTone_02

; DAC Data
LostLabyrinth1_DAC:
LostLabyrinth1_Loop00:
	dc.b	dKick, $0C, dSnare, $06, dKick, $0C, $06, dSnare, $12, dKick, $06, dSnare
	dc.b	$0C, dKick, $06, $06, dSnare, $0C, dKick, dSnare, $12, dKick, $06, dSnare
	dc.b	dKick, $0C, $06, dSnare, $0C, dKick, $06, $06, dSnare, $0C
	smpsLoop            $00, $02, LostLabyrinth1_Loop00
	dc.b	dKick

LostLabyrinth1_Loop01:
	dc.b	dSnare, $06, dKick, $0C, $06, dSnare, dSnare, dKick, $0C
	smpsLoop            $00, $03, LostLabyrinth1_Loop01
	dc.b	dSnare, $06, dKick, $0C, dSnare, $06, $06, $06
	smpsLoop            $01, $02, LostLabyrinth1_Loop00
	dc.b	dKick, dKick, dSnare, dSnare, $0C, dKick, $06, dSnare, $12, dKick, $06, dSnare
	dc.b	$0C, dKick, $06, $06, dSnare, $0C, dKick, $06, $06, dSnare, dSnare, $0C
	dc.b	dKick, $06, dSnare, dKick, dKick, $0C, dSnare, $12, dKick
	smpsJump            LostLabyrinth1_Loop00

; FM1 Data
LostLabyrinth1_FM1:
	smpsSetvoice        $00
LostLabyrinth1_Loop03:
	dc.b	nA2, $06, nD2, nA2, nD2, $09, nRst, $03
	smpsLoop            $00, $02, LostLabyrinth1_Loop03
	dc.b	nA2, $06, nD2, nG2, nC2, $12, nBb2, $06, nBb1, nBb2, nBb1, $09
	dc.b	nRst, $03, nBb2, $06, nBb1, nG2, nBb1, $09, nRst, $03, nA2, $06
	dc.b	nBb1, nG2, nG1, $12
	smpsLoop            $01, $02, LostLabyrinth1_Loop03
	dc.b	nBb1, $06, nF2, nBb1, nBb2, nF3, nBb3, nF2, nBb2, nBb1, nF2, nBb1
	dc.b	nBb2, nBb3, nF3, nBb2, nF2, nG1, nD2, nG1, nG2, nD3, nG3, nD2
	dc.b	nG2, nG1, nD2, nG2, nD3, nC4, nG3, nE3, nC3
	smpsLoop            $02, $02, LostLabyrinth1_Loop03
	dc.b	nA2

LostLabyrinth1_Loop04:
	dc.b	nD2, nA2, nD2, $09, nRst, $03, nA2, $06
	smpsLoop            $00, $02, LostLabyrinth1_Loop04
	dc.b	nD2, nG2, nC2, $0C, nE2, $06, nA2, nD2, nA2, nD2, $0C, nA1
	dc.b	$06, nC2, nE2, nD2, nD1, nF1, nG1, nAb1, nA1, nC2, nE2
	smpsJump            LostLabyrinth1_Loop03

; FM2 Data
LostLabyrinth1_FM2:
LostLabyrinth1_Jump03:
	smpsSetvoice        $02
	dc.b	nRst, $0C, nD5, $06, nA4, nC5, nG4, $12, nA4, nF4, nG4, $0C
	dc.b	nD4, $12, nF4, nG4, nC4, $27, nRst, $0F, nD5, $06, nA4, nC5
	dc.b	nG4, $12, nA4, nF4, nG4, $0C, nD4, $12, nF4, nG4, nC5, $2A
	smpsSetvoice        $01
	dc.b	nBb2, $60, nG2, $48, nC3, $18, nRst, $0C
	smpsSetvoice        $02
	dc.b	nD5, nA4, $06, nC5, $0C, nG4, $06, nA4, $0C, nF4, $06, nG4
	dc.b	$0C, nA4, $06, nG4, nF4, nD4, nRst, nD4, nF4, nRst, nF4, nG4
	dc.b	nRst, nG4, nC5, $27, nRst, $0F, nD5, $0C, nA4, $06, nC5, $0C
	dc.b	nG4, $06, nA4, $0C, nF4, $06, nG4, $0C, nA4, $06, nG4, nF4
	dc.b	nD4, nRst, nD4, nF4, nRst, nF4, nG4, nRst, nG4, nC5, $2A
	smpsSetvoice        $01
	dc.b	nBb2, $60, nG2, $48, nC3, $18, nRst, $7F, $41
	smpsJump            LostLabyrinth1_Jump03

; FM3 Data
LostLabyrinth1_FM3:
	smpsPan             panCenter, $00
	smpsSetvoice        $03

LostLabyrinth1_Jump02:
	dc.b	nD6, $06, nRst, nD6, nRst, $0C, nE6, $12, nF6, $06, nD6, nRst
	dc.b	nE6, $0C, nD6, $12, $06, nRst, nD6, nRst, $0C, nD6, $06, nRst
	dc.b	nF6, $0C, $06
	smpsSetvoice        $04
	dc.b	nD6, nF6, nG6, nC6, $12
	smpsSetvoice        $03
	dc.b	nD6, $06, nRst, nD6, nRst, $0C, nE6, $12, nF6, $06, nD6, nRst
	dc.b	nE6, $0C, nD6, $12, $06, nRst, nD6, nRst, $0C, nD6, $06, nRst
	dc.b	nF6, $0C, $06
	smpsSetvoice        $04
	dc.b	nD6, nF6, nG6, nD6, nF6, nG6
	smpsSetvoice        $03
	dc.b	nA4, nA4, nAb4, nA4, nRst, nD4, nF4, nG4, nA4, nA4, nAb4, nA4
	dc.b	nRst, nD4, nC5, nG4, nA4, nA4, nAb4, nA4, nRst, nD4, nF4, nG4
	dc.b	nA4, $0C, nG4, nC5, nF4, nD6, $06, nRst, nD6, nRst, $0C, nE6
	dc.b	$12, nF6, $06, nD6, nRst, nE6, $0C, nD6, $12, $06, nRst, nD6
	dc.b	nRst, $0C, nD6, $06, nRst, nF6, $0C, $06
	smpsSetvoice        $04
	dc.b	nD6, nF6, nG6, nC6, $12
	smpsSetvoice        $03
	dc.b	nD6, $06, nRst, nD6, nRst, $0C, nE6, $12, nF6, $06, nD6, nRst
	dc.b	nE6, $0C, nD6, $12, $06, nRst, nD6, nRst, $0C, nD6, $06, nRst
	dc.b	nF6, $0C, $06
	smpsSetvoice        $04
	dc.b	nD6, nF6, nG6, nD6, nF6, nG6
	smpsSetvoice        $03
	dc.b	nA4, $0C, nAb4, $06, nA4, $0C, nD4, $06, nF4, nG4, nA4, $0C
	dc.b	nC5, nA4, $06, nG4, nF4, $0C, nG4, $06, nA4, $0C, nC5, nA4
	dc.b	nD5, nC5, $06, nA4, nF5, nE5, nD5, nC5, nA4, nD5, $60, nRst
	smpsJump            LostLabyrinth1_Jump02

; FM4 Data
LostLabyrinth1_FM4:
	smpsPan             panCenter, $00
	smpsSetvoice        $03

LostLabyrinth1_Jump01:
	dc.b	nA5, $06
	smpsSetvoice        $03
	dc.b	nRst, nA5, nRst, $0C, nA5, $12, nRst, $0C, nA5, $06, nC6, $0C
	dc.b	nA5, $12, nBb5, $06, nRst, nBb5, nRst, $0C, nBb5, $06, nRst, nBb5
	dc.b	$0C, nA5, $06, nRst
	smpsSetvoice        $04
	smpsAlterVol        $0E
	smpsAlterNote       -1
	smpsPan             panLeft, $00
	dc.b	nD6, nF6, nG6, nC6, $0C
	smpsSetvoice        $03
	smpsAlterVol        $F2
	smpsAlterNote       0
	smpsPan             panCenter, $00
	dc.b	nA5, $06, nRst, nA5, nRst, $0C, nA5, $12, nRst, $0C, nA5, $06
	dc.b	nRst, $0C, nA5, $12, nBb5, $06, nRst, nBb5, nRst, $0C, nBb5, $06
	dc.b	nRst, nBb5, $0C, nA5, $06, nRst
	smpsSetvoice        $04
	smpsAlterVol        $0E
	smpsAlterNote       -1
	smpsPan             panLeft, $00
	dc.b	nD6, nF6, nG6, nD6, nF6, nG6
	smpsSetvoice        $03
	dc.b	nA4, nA4, nAb4, nA4, nRst, nD4, nF4, nG4, nA4, nA4, nAb4, nA4
	dc.b	nRst, nD4, nC5, nG4, nA4, nA4, nAb4, nA4, nRst, nD4, nF4, nG4
	dc.b	nA4, $0C, nG4, nC5, nF4, $06
	smpsAlterVol        $F2
	smpsAlterNote       0
	smpsPan             panCenter, $00
	dc.b	nA5, nRst, nA5, nRst, $0C, nA5, $12, nRst, $0C, nA5, $06, nC6
	dc.b	$0C, nA5, $12, nBb5, $06, nRst, nBb5, nRst, $0C, nBb5, $06, nRst
	dc.b	nBb5, $0C, nA5, $06, nG6
	smpsSetvoice        $04
	smpsAlterVol        $0E
	smpsAlterNote       -1
	dc.b	nD6, nF6, nG6, nC6, $0C
	smpsSetvoice        $03
	smpsAlterVol        $F2
	smpsAlterNote       0
	dc.b	nA5, $06, nRst, nA5, nRst, $0C, nA5, $12, nRst, $0C, nA5, $06
	dc.b	nRst, $0C, nA5, $12, nBb5, $06, nRst, nBb5, nRst, $0C, nBb5, $06
	dc.b	nRst, nBb5, $0C, nA5, $06, nRst
	smpsSetvoice        $04
	smpsAlterVol        $0E
	smpsAlterNote       -1
	dc.b	nD6, nF6, nG6, nD6, nF6, nG6
	smpsSetvoice        $03
	dc.b	nA4, $0C, nAb4, $06, nA4, $0C, nD4, $06, nF4, nG4, nA4, $0C
	dc.b	nC5, nA4, $06, nG4, nF4, $0C, nG4, $06, nA4, $0C, nC5, nA4
	dc.b	nD5, nC5, $06, nA4, nF5, nE5, nD5, nC5, nA4, nD5, $60, nRst
	dc.b	$5A
	smpsAlterVol        $F2
	smpsAlterNote       0
	smpsJump            LostLabyrinth1_Jump01

; FM5 Data
LostLabyrinth1_FM5:
	smpsPan             panCenter, $00
	smpsSetvoice        $03

LostLabyrinth1_Jump00:
	dc.b	nD5, $06, nRst, nD5, nRst, $0C, nD5, $12, $06, nF5, nD5, nG5
	dc.b	$0C, nF5, $12, nD5, $06, nRst, nD5, nRst, $0C, nD5, $06, nRst
	dc.b	nD5, $0C, $06, nE5, nF5, nG5, nF5, nE5, nF5, nD5, nRst, nD5
	dc.b	nRst, $0C, nD5, $12, $06, nF5, nD5, nG5, $0C, nF5, $12, nD5
	dc.b	$06, nRst, nD5, nRst, $0C, nD5, $06, nRst, nD5, $0C, $06, nE5
	dc.b	nF5, nG5, nA5, nC6, nD6, nRst, $0C, nF6, $06, $06, nRst, nF6
	dc.b	nRst, $0C, nF6, $06, nRst, nF6, nRst, nE6, nF6, nE6, nD6, nRst
	dc.b	$0C, nF6, $06, $06, nRst, nF6, nRst, nA5, nF6, nRst, nF6, nRst
	dc.b	nE6, nF6, nE6, nD6, nD5, nRst, nD5, nRst, $0C, nD5, $12, $06
	dc.b	nF5, nD5, nG5, $0C, nF5, $12, nD5, $06, nRst, nD5, nRst, $0C
	dc.b	nD5, $06, nRst, nD5, $0C, $06, nE5, nF5, nG5, nF5, nE5, nF5
	dc.b	nD5, nRst, nD5, nRst, $0C, nD5, $12, $06, nF5, nD5, nG5, $0C
	dc.b	nF5, $12, nD5, $06, nRst, nD5, nRst, $0C, nD5, $06, nRst, nD5
	dc.b	$0C, $06, nE5, nF5, nG5, nA5, nC6

LostLabyrinth1_Loop02:
	dc.b	nD6, nRst, $0C, nF6, $06, $06, nRst, nF6, nRst, nA5, nF6, nRst
	dc.b	nF6, nRst, nE6, nF6, nE6
	smpsLoop            $00, $02, LostLabyrinth1_Loop02
	dc.b	nD6, nRst, nF6, nRst, nF6, nE6, nF6, nE6, nRst, nF6, nRst, nF6
	dc.b	nRst, nG6, nF6, nE6, nC6, nF6, nD6, nA5, nE6, $0C, nC6, $06
	dc.b	nG5, nF5, nD6, $0C, nRst, $24
	smpsJump            LostLabyrinth1_Jump00

; PSG3 Data
LostLabyrinth1_PSG3:
	smpsPSGform         $E7

LostLabyrinth1_Jump04:
	dc.b	nA5

LostLabyrinth1_Loop05:
	dc.b	$0C, $06, $0C, $06, $12, $06, $0C, $06, $06, $0C
	smpsLoop            $00, $0B, LostLabyrinth1_Loop05
	dc.b	$0C, $06, $0C, $06, $12, $06, $0C, $06, $06, $12, $06, $0C
	dc.b	$06, $06, $06, $0C, $06, $0C, $0C, $12, $06, $0C, $0C, $06
	dc.b	$06, $0C, $0C, $06, $06, $0C
	smpsJump            LostLabyrinth1_Jump04

; PSG1 Data
LostLabyrinth1_PSG1:
; PSG2 Data
LostLabyrinth1_PSG2:
	smpsStop

LostLabyrinth1_Voices:
;	Voice $00
;	$06
;	$00, $00, $50, $60, 	$1F, $5A, $9F, $5F, 	$09, $09, $1F, $1F
;	$07, $00, $1F, $1F, 	$08, $F8, $EF, $FF, 	$1A, $00, $7F, $7F
	smpsVcAlgorithm     $06
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $05, $00, $00
	smpsVcCoarseFreq    $00, $00, $00, $00
	smpsVcRateScale     $01, $02, $01, $00
	smpsVcAttackRate    $1F, $1F, $1A, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $09, $09
	smpsVcDecayRate2    $1F, $1F, $00, $07
	smpsVcDecayLevel    $0F, $0E, $0F, $00
	smpsVcReleaseRate   $0F, $0F, $08, $08
	smpsVcTotalLevel    $7F, $7F, $00, $1A

;	Voice $01
;	$33
;	$0C, $01, $01, $01, 	$1F, $1F, $1F, $1F, 	$00, $00, $05, $00
;	$00, $00, $00, $07, 	$00, $00, $30, $05, 	$28, $1D, $0C, $00
	smpsVcAlgorithm     $03
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $0C
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $05, $00, $00
	smpsVcDecayRate2    $07, $00, $00, $00
	smpsVcDecayLevel    $00, $03, $00, $00
	smpsVcReleaseRate   $05, $00, $00, $00
	smpsVcTotalLevel    $00, $0C, $1D, $28

;	Voice $02
;	$3B
;	$04, $32, $03, $01, 	$14, $0E, $12, $4E, 	$00, $10, $12, $0C
;	$00, $00, $00, $00, 	$0F, $5F, $9F, $2F, 	$00, $3E, $26, $05
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $00
	smpsVcCoarseFreq    $01, $03, $02, $04
	smpsVcRateScale     $01, $00, $00, $00
	smpsVcAttackRate    $0E, $12, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $12, $10, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $02, $09, $05, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $05, $26, $3E, $00

;	Voice $03
;	$3C
;	$01, $02, $0F, $04, 	$8D, $52, $9F, $1F, 	$09, $00, $00, $0D
;	$00, $00, $00, $00, 	$23, $08, $02, $F7, 	$15, $80, $1D, $87
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $0F, $02, $01
	smpsVcRateScale     $00, $02, $01, $02
	smpsVcAttackRate    $1F, $1F, $12, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $00, $00, $09
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $0F, $00, $00, $02
	smpsVcReleaseRate   $07, $02, $08, $03
	smpsVcTotalLevel    $07, $1D, $00, $15

;	Voice $04
;	$2A
;	$01, $08, $06, $04, 	$53, $1F, $1F, $50, 	$12, $14, $11, $1F
;	$00, $00, $00, $00, 	$29, $15, $36, $0B, 	$17, $33, $1C, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $04, $06, $08, $01
	smpsVcRateScale     $01, $00, $00, $01
	smpsVcAttackRate    $10, $1F, $1F, $13
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $11, $14, $12
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $03, $01, $02
	smpsVcReleaseRate   $0B, $06, $05, $09
	smpsVcTotalLevel    $00, $1C, $33, $17

