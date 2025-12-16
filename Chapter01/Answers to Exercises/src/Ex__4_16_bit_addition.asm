; Ex__4_16_bit_addition.asm: Answer to Ch 1 Ex 4.

; Try running this code at
; https://skilldrick.github.io/easy6502/

; Set up the values to be added. Remove the appropriate
; semicolons to select the bytes to add:
; ($0000 + $0001) or ($00FF + $0001) or ($1234 + $5678)

LDA #$00
;LDA #$FF
;LDA #$34
STA $200

LDA #$00
;LDA #$00
;LDA #$12
STA $201

LDA #$01
;LDA #$01
;LDA #$78
STA $202

LDA #$00
;LDA #$00
;LDA #$56
STA $203

; Add the two 16-bit values
CLC
LDA $200
ADC $202
STA $204

LDA $201
ADC $203
STA $205
