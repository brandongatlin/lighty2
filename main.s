    #include <xc.inc>
    CONFIG WDTE=OFF, CP=OFF, MCLRE=OFF
    PSECT MyCode,class=CODE,delta=2
    ORG 0x0000
INIT:
    MOVLW ~(1 << GPIO_GP1_POSITION) ; set GP1 as an output
    TRIS GPIO
    
    MOVLW 11011111
    OPTION
    
    MOVLW 01111111
    MOVWF ADCON0
    
    BSF GPIO, GPIO_GP1_POSITION
LOOP:
    GOTO LOOP
    END INIT
