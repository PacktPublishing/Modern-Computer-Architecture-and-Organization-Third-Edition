; Ex__6_32_bit_addition.asm: Answer to Ch 1 Ex 6.

; Try running this code at
; https://skilldrick.github.io/easy6502/

; Set up the values to be added
; Remove the appropriate semicolons to select the bytes to
; add:
; ($00000001 + $00000001) or ($0000FFFF + $00000001) or
; ($FFFFFFFE + $00000001) or ($FFFFFFFF + $00000001) 

LDA #$01
;LDA #$FF
;LDA #$FE
;LDA #$FF
STA $200

LDA #$00
;LDA #$FF
;LDA #$FF
;LDA #$FF
STA $201

LDA #$00
;LDA #$00
;LDA #$FF
;LDA #$FF
STA $202

LDA #$00
;LDA #$00
;LDA #$FF
;LDA #$FF
STA $203

LDA #$01
STA $204

LDA #$00
STA $205
STA $206
STA $207

; Add the two 32-bit values using absolute indexed
; addressing mode
LDX #$00
LDY #$04
CLC

ADD_LOOP:
LDA $200, X
ADC $204, X
STA $208, X
INX
DEY
BNE ADD_LOOP
