; Ex__5_16_bit_subtraction.asm: Answer to Ch 1 Ex 5.

; Try running this code at
; https://skilldrick.github.io/easy6502/

; Set up the values to be subtracted
; Remove the appropriate semicolons to select the bytes to
; subtract:
; ($0001 - $0000) or ($0001 - $0001) or ($0001 - $00FF) or
; ($0000 - $0001)

LDA #$01
;LDA #$01
;LDA #$01
;LDA #$00
STA $200

LDA #$00
;LDA #$00
;LDA #$00
;LDA #$00
STA $201

LDA #$00
;LDA #$01
;LDA #$FF
;LDA #$01
STA $202

LDA #$00
;LDA #$00
;LDA #$00
;LDA #$00
STA $203

; Subtract the two 16-bit values
SEC
LDA $200
SBC $202
STA $204

LDA $201
SBC $203
STA $205
