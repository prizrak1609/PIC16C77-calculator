
Calculator_check_row0:

;Calculator.c,9 :: 		static void check_row0() {
;Calculator.c,10 :: 		if(Button(&PORTB, 0, 1, 1)) {
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	CLRF       FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row00
;Calculator.c,11 :: 		switch(portb_current_pin) {
	GOTO       L_Calculator_check_row01
;Calculator.c,12 :: 		case 4: current_command = 7; break;
L_Calculator_check_row03:
	MOVLW      7
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row02
;Calculator.c,13 :: 		case 5: current_command = 8; break;
L_Calculator_check_row04:
	MOVLW      8
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row02
;Calculator.c,14 :: 		case 6: current_command = 9; break;
L_Calculator_check_row05:
	MOVLW      9
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row02
;Calculator.c,15 :: 		case 7: current_command = 10; break;
L_Calculator_check_row06:
	MOVLW      10
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row02
;Calculator.c,16 :: 		}
L_Calculator_check_row01:
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row03
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row04
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row05
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row06
L_Calculator_check_row02:
;Calculator.c,17 :: 		}
L_Calculator_check_row00:
;Calculator.c,18 :: 		}
L_end_check_row0:
	RETURN
; end of Calculator_check_row0

Calculator_check_row1:

;Calculator.c,20 :: 		static void check_row1() {
;Calculator.c,21 :: 		if(Button(&PORTB, 1, 1, 1)) {
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      1
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row17
;Calculator.c,22 :: 		switch(portb_current_pin) {
	GOTO       L_Calculator_check_row18
;Calculator.c,23 :: 		case 4: current_command = 4; break;
L_Calculator_check_row110:
	MOVLW      4
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row19
;Calculator.c,24 :: 		case 5: current_command = 5; break;
L_Calculator_check_row111:
	MOVLW      5
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row19
;Calculator.c,25 :: 		case 6: current_command = 6; break;
L_Calculator_check_row112:
	MOVLW      6
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row19
;Calculator.c,26 :: 		case 7: current_command = 11; break;
L_Calculator_check_row113:
	MOVLW      11
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row19
;Calculator.c,27 :: 		}
L_Calculator_check_row18:
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row110
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row111
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row112
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row113
L_Calculator_check_row19:
;Calculator.c,28 :: 		}
L_Calculator_check_row17:
;Calculator.c,29 :: 		}
L_end_check_row1:
	RETURN
; end of Calculator_check_row1

Calculator_check_row2:

;Calculator.c,31 :: 		static void check_row2() {
;Calculator.c,32 :: 		if(Button(&PORTB, 2, 1, 1)) {
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      2
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row214
;Calculator.c,33 :: 		switch(portb_current_pin) {
	GOTO       L_Calculator_check_row215
;Calculator.c,34 :: 		case 4: current_command = 1; break;
L_Calculator_check_row217:
	MOVLW      1
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row216
;Calculator.c,35 :: 		case 5: current_command = 2; break;
L_Calculator_check_row218:
	MOVLW      2
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row216
;Calculator.c,36 :: 		case 6: current_command = 3; break;
L_Calculator_check_row219:
	MOVLW      3
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row216
;Calculator.c,37 :: 		case 7: current_command = 12; break;
L_Calculator_check_row220:
	MOVLW      12
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row216
;Calculator.c,38 :: 		}
L_Calculator_check_row215:
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row217
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row218
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row219
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row220
L_Calculator_check_row216:
;Calculator.c,39 :: 		}
L_Calculator_check_row214:
;Calculator.c,40 :: 		}
L_end_check_row2:
	RETURN
; end of Calculator_check_row2

Calculator_check_row3:

;Calculator.c,42 :: 		static void check_row3() {
;Calculator.c,43 :: 		if(Button(&PORTB, 3, 1, 1)) {
	MOVLW      PORTB+0
	MOVWF      FARG_Button_port+0
	MOVLW      3
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time_ms+0
	MOVLW      1
	MOVWF      FARG_Button_active_state+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row321
;Calculator.c,44 :: 		switch(portb_current_pin) {
	GOTO       L_Calculator_check_row322
;Calculator.c,45 :: 		case 4: current_command = 13; break;
L_Calculator_check_row324:
	MOVLW      13
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row323
;Calculator.c,46 :: 		case 5: current_command = 0; break;
L_Calculator_check_row325:
	CLRF       Calculator_current_command+0
	GOTO       L_Calculator_check_row323
;Calculator.c,47 :: 		case 6: current_command = 14; break;
L_Calculator_check_row326:
	MOVLW      14
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row323
;Calculator.c,48 :: 		case 7: current_command = 15; break;
L_Calculator_check_row327:
	MOVLW      15
	MOVWF      Calculator_current_command+0
	GOTO       L_Calculator_check_row323
;Calculator.c,49 :: 		}
L_Calculator_check_row322:
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row324
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row325
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row326
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_check_row327
L_Calculator_check_row323:
;Calculator.c,50 :: 		}
L_Calculator_check_row321:
;Calculator.c,51 :: 		}
L_end_check_row3:
	RETURN
; end of Calculator_check_row3

Calculator_display:

;Calculator.c,53 :: 		static void display(unsigned short s) {
;Calculator.c,54 :: 		PORTD = s;
	MOVF       FARG_Calculator_display_s+0, 0
	MOVWF      PORTD+0
;Calculator.c,56 :: 		PORTC.B1 = 0;
	BCF        PORTC+0, 1
;Calculator.c,57 :: 		Delay_ms(20);
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_Calculator_display28:
	DECFSZ     R13+0, 1
	GOTO       L_Calculator_display28
	DECFSZ     R12+0, 1
	GOTO       L_Calculator_display28
;Calculator.c,59 :: 		PORTC.B1 = 1;
	BSF        PORTC+0, 1
;Calculator.c,60 :: 		Delay_ms(20);
	MOVLW      7
	MOVWF      R12+0
	MOVLW      125
	MOVWF      R13+0
L_Calculator_display29:
	DECFSZ     R13+0, 1
	GOTO       L_Calculator_display29
	DECFSZ     R12+0, 1
	GOTO       L_Calculator_display29
;Calculator.c,62 :: 		PORTC.B0 = 0;
	BCF        PORTC+0, 0
;Calculator.c,63 :: 		}
L_end_display:
	RETURN
; end of Calculator_display

Calculator_print:

;Calculator.c,65 :: 		static void print(unsigned short s) {
;Calculator.c,67 :: 		PORTC.B0 = 1;
	BSF        PORTC+0, 0
;Calculator.c,69 :: 		PORTC.B1 = 1;
	BSF        PORTC+0, 1
;Calculator.c,70 :: 		display(s);
	MOVF       FARG_Calculator_print_s+0, 0
	MOVWF      FARG_Calculator_display_s+0
	CALL       Calculator_display+0
;Calculator.c,72 :: 		display(0b00110000);
	MOVLW      48
	MOVWF      FARG_Calculator_display_s+0
	CALL       Calculator_display+0
;Calculator.c,74 :: 		display(0b00001110);
	MOVLW      14
	MOVWF      FARG_Calculator_display_s+0
	CALL       Calculator_display+0
;Calculator.c,76 :: 		PORTC.B0 = 1;
	BSF        PORTC+0, 0
;Calculator.c,77 :: 		}
L_end_print:
	RETURN
; end of Calculator_print

Calculator_clear_display:

;Calculator.c,79 :: 		static void clear_display() {
;Calculator.c,81 :: 		display(0b00000001);
	MOVLW      1
	MOVWF      FARG_Calculator_display_s+0
	CALL       Calculator_display+0
;Calculator.c,82 :: 		PORTC = 0;
	CLRF       PORTC+0
;Calculator.c,83 :: 		PORTD = 0;
	CLRF       PORTD+0
;Calculator.c,84 :: 		}
L_end_clear_display:
	RETURN
; end of Calculator_clear_display

Calculator_calculate:

;Calculator.c,86 :: 		static char calculate() {
;Calculator.c,87 :: 		switch(current_operator) {
	GOTO       L_Calculator_calculate30
;Calculator.c,88 :: 		case 10: return (first_value / second_value) + '0'; break;
L_Calculator_calculate32:
	MOVF       Calculator_second_value+0, 0
	MOVWF      R4+0
	MOVF       Calculator_first_value+0, 0
	MOVWF      R0+0
	CALL       _Div_8X8_S+0
	MOVLW      48
	ADDWF      R0+0, 1
	GOTO       L_end_calculate
;Calculator.c,89 :: 		case 11: return (first_value * second_value) + '0'; break;
L_Calculator_calculate33:
	MOVF       Calculator_first_value+0, 0
	MOVWF      R0+0
	MOVF       Calculator_second_value+0, 0
	MOVWF      R4+0
	CALL       _Mul_8X8_U+0
	MOVLW      48
	ADDWF      R0+0, 1
	GOTO       L_end_calculate
;Calculator.c,90 :: 		case 12: return (first_value - second_value) + '0'; break;
L_Calculator_calculate34:
	MOVF       Calculator_second_value+0, 0
	SUBWF      Calculator_first_value+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 1
	GOTO       L_end_calculate
;Calculator.c,91 :: 		case 15: return (first_value + second_value) + '0'; break;
L_Calculator_calculate35:
	MOVF       Calculator_second_value+0, 0
	ADDWF      Calculator_first_value+0, 0
	MOVWF      R0+0
	MOVLW      48
	ADDWF      R0+0, 1
	GOTO       L_end_calculate
;Calculator.c,92 :: 		}
L_Calculator_calculate30:
	MOVF       Calculator_current_operator+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_calculate32
	MOVF       Calculator_current_operator+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_calculate33
	MOVF       Calculator_current_operator+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_calculate34
	MOVF       Calculator_current_operator+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_calculate35
;Calculator.c,93 :: 		return 'X';
	MOVLW      88
	MOVWF      R0+0
;Calculator.c,94 :: 		}
L_end_calculate:
	RETURN
; end of Calculator_calculate

Calculator_clean_data:

;Calculator.c,96 :: 		static void clean_data() {
;Calculator.c,97 :: 		first_value = 0;
	CLRF       Calculator_first_value+0
;Calculator.c,98 :: 		second_value = 0;
	CLRF       Calculator_second_value+0
;Calculator.c,99 :: 		current_operator = 0;
	CLRF       Calculator_current_operator+0
;Calculator.c,100 :: 		current_command = -1;
	MOVLW      255
	MOVWF      Calculator_current_command+0
;Calculator.c,101 :: 		}
L_end_clean_data:
	RETURN
; end of Calculator_clean_data

Calculator_print_or_do_command:

;Calculator.c,103 :: 		static void print_or_do_command() {
;Calculator.c,104 :: 		PORTC = 0;
	CLRF       PORTC+0
;Calculator.c,105 :: 		PORTD = 0;
	CLRF       PORTD+0
;Calculator.c,106 :: 		switch(current_command) {
	GOTO       L_Calculator_print_or_do_command36
;Calculator.c,107 :: 		case 0: print('0'); break;
L_Calculator_print_or_do_command38:
	MOVLW      48
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,108 :: 		case 1: print('1'); break;
L_Calculator_print_or_do_command39:
	MOVLW      49
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,109 :: 		case 2: print('2'); break;
L_Calculator_print_or_do_command40:
	MOVLW      50
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,110 :: 		case 3: print('3'); break;
L_Calculator_print_or_do_command41:
	MOVLW      51
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,111 :: 		case 4: print('4'); break;
L_Calculator_print_or_do_command42:
	MOVLW      52
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,112 :: 		case 5: print('5'); break;
L_Calculator_print_or_do_command43:
	MOVLW      53
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,113 :: 		case 6: print('6'); break;
L_Calculator_print_or_do_command44:
	MOVLW      54
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,114 :: 		case 7: print('7'); break;
L_Calculator_print_or_do_command45:
	MOVLW      55
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,115 :: 		case 8: print('8'); break;
L_Calculator_print_or_do_command46:
	MOVLW      56
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,116 :: 		case 9: print('9'); break;
L_Calculator_print_or_do_command47:
	MOVLW      57
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,117 :: 		case 10: print('/'); break;
L_Calculator_print_or_do_command48:
	MOVLW      47
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,118 :: 		case 11: print('*'); break;
L_Calculator_print_or_do_command49:
	MOVLW      42
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,119 :: 		case 12: print('-'); break;
L_Calculator_print_or_do_command50:
	MOVLW      45
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,120 :: 		case 13: clear_display(); break;
L_Calculator_print_or_do_command51:
	CALL       Calculator_clear_display+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,121 :: 		case 14: print('=');
L_Calculator_print_or_do_command52:
	MOVLW      61
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
;Calculator.c,122 :: 		print(calculate());
	CALL       Calculator_calculate+0
	MOVF       R0+0, 0
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
;Calculator.c,123 :: 		break;
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,124 :: 		case 15: print('+'); break;
L_Calculator_print_or_do_command53:
	MOVLW      43
	MOVWF      FARG_Calculator_print_s+0
	CALL       Calculator_print+0
	GOTO       L_Calculator_print_or_do_command37
;Calculator.c,125 :: 		}
L_Calculator_print_or_do_command36:
	MOVF       Calculator_current_command+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command38
	MOVF       Calculator_current_command+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command39
	MOVF       Calculator_current_command+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command40
	MOVF       Calculator_current_command+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command41
	MOVF       Calculator_current_command+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command42
	MOVF       Calculator_current_command+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command43
	MOVF       Calculator_current_command+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command44
	MOVF       Calculator_current_command+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command45
	MOVF       Calculator_current_command+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command46
	MOVF       Calculator_current_command+0, 0
	XORLW      9
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command47
	MOVF       Calculator_current_command+0, 0
	XORLW      10
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command48
	MOVF       Calculator_current_command+0, 0
	XORLW      11
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command49
	MOVF       Calculator_current_command+0, 0
	XORLW      12
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command50
	MOVF       Calculator_current_command+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command51
	MOVF       Calculator_current_command+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command52
	MOVF       Calculator_current_command+0, 0
	XORLW      15
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command53
L_Calculator_print_or_do_command37:
;Calculator.c,126 :: 		if(current_command >= 0 && current_command <= 9) {
	MOVLW      128
	XORWF      Calculator_current_command+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Calculator_print_or_do_command56
	MOVLW      128
	XORLW      9
	MOVWF      R0+0
	MOVLW      128
	XORWF      Calculator_current_command+0, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Calculator_print_or_do_command56
L_Calculator_print_or_do_command78:
;Calculator.c,128 :: 		if (current_operator == 0) {
	MOVF       Calculator_current_operator+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command57
;Calculator.c,129 :: 		first_value = current_command;
	MOVF       Calculator_current_command+0, 0
	MOVWF      Calculator_first_value+0
;Calculator.c,130 :: 		} else {
	GOTO       L_Calculator_print_or_do_command58
L_Calculator_print_or_do_command57:
;Calculator.c,131 :: 		second_value = current_command;
	MOVF       Calculator_current_command+0, 0
	MOVWF      Calculator_second_value+0
;Calculator.c,132 :: 		}
L_Calculator_print_or_do_command58:
;Calculator.c,133 :: 		} else if(current_command >= 10 && current_command <= 15) {
	GOTO       L_Calculator_print_or_do_command59
L_Calculator_print_or_do_command56:
	MOVLW      128
	XORWF      Calculator_current_command+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      10
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Calculator_print_or_do_command62
	MOVLW      128
	XORLW      15
	MOVWF      R0+0
	MOVLW      128
	XORWF      Calculator_current_command+0, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_Calculator_print_or_do_command62
L_Calculator_print_or_do_command77:
;Calculator.c,134 :: 		current_operator = current_command;
	MOVF       Calculator_current_command+0, 0
	MOVWF      Calculator_current_operator+0
;Calculator.c,135 :: 		}
L_Calculator_print_or_do_command62:
L_Calculator_print_or_do_command59:
;Calculator.c,136 :: 		if(current_command == 14 || current_command == 13) {
	MOVF       Calculator_current_command+0, 0
	XORLW      14
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command76
	MOVF       Calculator_current_command+0, 0
	XORLW      13
	BTFSC      STATUS+0, 2
	GOTO       L_Calculator_print_or_do_command76
	GOTO       L_Calculator_print_or_do_command65
L_Calculator_print_or_do_command76:
;Calculator.c,137 :: 		clean_data();
	CALL       Calculator_clean_data+0
;Calculator.c,138 :: 		}
L_Calculator_print_or_do_command65:
;Calculator.c,139 :: 		current_command = -1;
	MOVLW      255
	MOVWF      Calculator_current_command+0
;Calculator.c,140 :: 		}
L_end_print_or_do_command:
	RETURN
; end of Calculator_print_or_do_command

_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Calculator.c,142 :: 		void interrupt(void) {
;Calculator.c,143 :: 		PORTB = 0;
	CLRF       PORTB+0
;Calculator.c,144 :: 		++portb_current_pin;
	INCF       Calculator_portb_current_pin+0, 0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      Calculator_portb_current_pin+0
;Calculator.c,145 :: 		switch(portb_current_pin) {
	GOTO       L_interrupt66
;Calculator.c,146 :: 		case 4: PORTB.B4 = 1; break;
L_interrupt68:
	BSF        PORTB+0, 4
	GOTO       L_interrupt67
;Calculator.c,147 :: 		case 5: PORTB.B5 = 1; break;
L_interrupt69:
	BSF        PORTB+0, 5
	GOTO       L_interrupt67
;Calculator.c,148 :: 		case 6: PORTB.B6 = 1; break;
L_interrupt70:
	BSF        PORTB+0, 6
	GOTO       L_interrupt67
;Calculator.c,149 :: 		case 7: PORTB.B7 = 1; break;
L_interrupt71:
	BSF        PORTB+0, 7
	GOTO       L_interrupt67
;Calculator.c,150 :: 		default: portb_current_pin = 3; break;
L_interrupt72:
	MOVLW      3
	MOVWF      Calculator_portb_current_pin+0
	GOTO       L_interrupt67
;Calculator.c,151 :: 		}
L_interrupt66:
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_interrupt68
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      5
	BTFSC      STATUS+0, 2
	GOTO       L_interrupt69
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_interrupt70
	MOVF       Calculator_portb_current_pin+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_interrupt71
	GOTO       L_interrupt72
L_interrupt67:
;Calculator.c,152 :: 		check_row0();
	CALL       Calculator_check_row0+0
;Calculator.c,153 :: 		check_row1();
	CALL       Calculator_check_row1+0
;Calculator.c,154 :: 		check_row2();
	CALL       Calculator_check_row2+0
;Calculator.c,155 :: 		check_row3();
	CALL       Calculator_check_row3+0
;Calculator.c,156 :: 		print_or_do_command();
	CALL       Calculator_print_or_do_command+0
;Calculator.c,158 :: 		INTCON.T0IF = 0;
	BCF        INTCON+0, 2
;Calculator.c,159 :: 		}
L_end_interrupt:
L__interrupt90:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

Calculator_set_timer0_prescaler:

;Calculator.c,161 :: 		static void set_timer0_prescaler(bool p0, bool p1, bool p2) {
;Calculator.c,163 :: 		OPTION_REG.PS0 = p0;
	BTFSC      FARG_Calculator_set_timer0_prescaler_p0+0, 0
	GOTO       L_Calculator_set_timer0_prescaler92
	BCF        OPTION_REG+0, 0
	GOTO       L_Calculator_set_timer0_prescaler93
L_Calculator_set_timer0_prescaler92:
	BSF        OPTION_REG+0, 0
L_Calculator_set_timer0_prescaler93:
;Calculator.c,164 :: 		OPTION_REG.PS1 = p1;
	BTFSC      FARG_Calculator_set_timer0_prescaler_p1+0, 0
	GOTO       L_Calculator_set_timer0_prescaler94
	BCF        OPTION_REG+0, 1
	GOTO       L_Calculator_set_timer0_prescaler95
L_Calculator_set_timer0_prescaler94:
	BSF        OPTION_REG+0, 1
L_Calculator_set_timer0_prescaler95:
;Calculator.c,165 :: 		OPTION_REG.PS2 = p2;
	BTFSC      FARG_Calculator_set_timer0_prescaler_p2+0, 0
	GOTO       L_Calculator_set_timer0_prescaler96
	BCF        OPTION_REG+0, 2
	GOTO       L_Calculator_set_timer0_prescaler97
L_Calculator_set_timer0_prescaler96:
	BSF        OPTION_REG+0, 2
L_Calculator_set_timer0_prescaler97:
;Calculator.c,166 :: 		}
L_end_set_timer0_prescaler:
	RETURN
; end of Calculator_set_timer0_prescaler

Calculator_init_timer0:

;Calculator.c,168 :: 		static void init_timer0(void) {
;Calculator.c,170 :: 		OPTION_REG.T0CS = 0;
	BCF        OPTION_REG+0, 5
;Calculator.c,172 :: 		OPTION_REG.T0SE = 0;
	BCF        OPTION_REG+0, 4
;Calculator.c,174 :: 		OPTION_REG.PSA = 0;
	BCF        OPTION_REG+0, 3
;Calculator.c,176 :: 		set_timer0_prescaler(0, 0, 1);
	CLRF       FARG_Calculator_set_timer0_prescaler_p0+0
	CLRF       FARG_Calculator_set_timer0_prescaler_p1+0
	MOVLW      1
	MOVWF      FARG_Calculator_set_timer0_prescaler_p2+0
	CALL       Calculator_set_timer0_prescaler+0
;Calculator.c,178 :: 		INTCON.T0IF = 0;
	BCF        INTCON+0, 2
;Calculator.c,180 :: 		INTCON.T0IE = 1;
	BSF        INTCON+0, 5
;Calculator.c,182 :: 		INTCON.GIE = 1;
	BSF        INTCON+0, 7
;Calculator.c,184 :: 		TMR0 = 0;
	CLRF       TMR0+0
;Calculator.c,185 :: 		}
L_end_init_timer0:
	RETURN
; end of Calculator_init_timer0

_main:

;Calculator.c,187 :: 		void main() {
;Calculator.c,189 :: 		TRISB = 0b00001111;
	MOVLW      15
	MOVWF      TRISB+0
;Calculator.c,190 :: 		TRISD = 0;
	CLRF       TRISD+0
;Calculator.c,191 :: 		TRISC = 0;
	CLRF       TRISC+0
;Calculator.c,193 :: 		PORTB = 0;
	CLRF       PORTB+0
;Calculator.c,194 :: 		PORTD = 0;
	CLRF       PORTD+0
;Calculator.c,195 :: 		PORTC = 0;
	CLRF       PORTC+0
;Calculator.c,196 :: 		init_timer0();
	CALL       Calculator_init_timer0+0
;Calculator.c,197 :: 		first_value = 0;
	CLRF       Calculator_first_value+0
;Calculator.c,198 :: 		second_value = 0;
	CLRF       Calculator_second_value+0
;Calculator.c,199 :: 		current_operator = 0;
	CLRF       Calculator_current_operator+0
;Calculator.c,200 :: 		current_command = -1;
	MOVLW      255
	MOVWF      Calculator_current_command+0
;Calculator.c,201 :: 		portb_current_pin = 3;
	MOVLW      3
	MOVWF      Calculator_portb_current_pin+0
;Calculator.c,202 :: 		for(;;) {
L_main73:
;Calculator.c,203 :: 		}
	GOTO       L_main73
;Calculator.c,204 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
