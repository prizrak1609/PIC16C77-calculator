#line 1 "E:/Proteus/Projects/Calculator/MikroC/Calculator.c"
#line 1 "e:/mikroc pro for pic/include/stdbool.h"



 typedef char _Bool;
#line 3 "E:/Proteus/Projects/Calculator/MikroC/Calculator.c"
static volatile unsigned short portb_current_pin = 3;
static volatile short current_command = -1;
static volatile short first_value = 0;
static volatile short second_value = 0;
static volatile unsigned short current_operator = 0;

static void check_row0() {
 if(Button(&PORTB, 0, 1, 1)) {
 switch(portb_current_pin) {
 case 4: current_command = 7; break;
 case 5: current_command = 8; break;
 case 6: current_command = 9; break;
 case 7: current_command = 10; break;
 }
 }
}

static void check_row1() {
 if(Button(&PORTB, 1, 1, 1)) {
 switch(portb_current_pin) {
 case 4: current_command = 4; break;
 case 5: current_command = 5; break;
 case 6: current_command = 6; break;
 case 7: current_command = 11; break;
 }
 }
}

static void check_row2() {
 if(Button(&PORTB, 2, 1, 1)) {
 switch(portb_current_pin) {
 case 4: current_command = 1; break;
 case 5: current_command = 2; break;
 case 6: current_command = 3; break;
 case 7: current_command = 12; break;
 }
 }
}

static void check_row3() {
 if(Button(&PORTB, 3, 1, 1)) {
 switch(portb_current_pin) {
 case 4: current_command = 13; break;
 case 5: current_command = 0; break;
 case 6: current_command = 14; break;
 case 7: current_command = 15; break;
 }
 }
}

static void display(unsigned short s) {
 PORTD = s;

 PORTC.B1 = 0;
 Delay_ms(20);

 PORTC.B1 = 1;
 Delay_ms(20);

 PORTC.B0 = 0;
}

static void print(unsigned short s) {

 PORTC.B0 = 1;

 PORTC.B1 = 1;
 display(s);

 display(0b00110000);

 display(0b00001110);

 PORTC.B0 = 1;
}

static void clear_display() {

 display(0b00000001);
 PORTC = 0;
 PORTD = 0;
}

static char calculate() {
 switch(current_operator) {
 case 10: return (first_value / second_value) + '0'; break;
 case 11: return (first_value * second_value) + '0'; break;
 case 12: return (first_value - second_value) + '0'; break;
 case 15: return (first_value + second_value) + '0'; break;
 }
 return 'X';
}

static void clean_data() {
 first_value = 0;
 second_value = 0;
 current_operator = 0;
 current_command = -1;
}

static void print_or_do_command() {
 PORTC = 0;
 PORTD = 0;
 switch(current_command) {
 case 0: print('0'); break;
 case 1: print('1'); break;
 case 2: print('2'); break;
 case 3: print('3'); break;
 case 4: print('4'); break;
 case 5: print('5'); break;
 case 6: print('6'); break;
 case 7: print('7'); break;
 case 8: print('8'); break;
 case 9: print('9'); break;
 case 10: print('/'); break;
 case 11: print('*'); break;
 case 12: print('-'); break;
 case 13: clear_display(); break;
 case 14: print('=');
 print(calculate());
 break;
 case 15: print('+'); break;
 }
 if(current_command >= 0 && current_command <= 9) {

 if (current_operator == 0) {
 first_value = current_command;
 } else {
 second_value = current_command;
 }
 } else if(current_command >= 10 && current_command <= 15) {
 current_operator = current_command;
 }
 if(current_command == 14 || current_command == 13) {
 clean_data();
 }
 current_command = -1;
}

void interrupt(void) {
 PORTB = 0;
 ++portb_current_pin;
 switch(portb_current_pin) {
 case 4: PORTB.B4 = 1; break;
 case 5: PORTB.B5 = 1; break;
 case 6: PORTB.B6 = 1; break;
 case 7: PORTB.B7 = 1; break;
 default: portb_current_pin = 3; break;
 }
 check_row0();
 check_row1();
 check_row2();
 check_row3();
 print_or_do_command();

 INTCON.T0IF = 0;
}

static void set_timer0_prescaler( _Bool  p0,  _Bool  p1,  _Bool  p2) {

 OPTION_REG.PS0 = p0;
 OPTION_REG.PS1 = p1;
 OPTION_REG.PS2 = p2;
}

static void init_timer0(void) {

 OPTION_REG.T0CS = 0;

 OPTION_REG.T0SE = 0;

 OPTION_REG.PSA = 0;

 set_timer0_prescaler(0, 0, 1);

 INTCON.T0IF = 0;

 INTCON.T0IE = 1;

 INTCON.GIE = 1;

 TMR0 = 0;
}

void main() {

 TRISB = 0b00001111;
 TRISD = 0;
 TRISC = 0;

 PORTB = 0;
 PORTD = 0;
 PORTC = 0;
 init_timer0();
 first_value = 0;
 second_value = 0;
 current_operator = 0;
 current_command = -1;
 portb_current_pin = 3;
 for(;;) {
 }
}
