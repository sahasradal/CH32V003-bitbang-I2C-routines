#riscv32-unknown-elf-as -g i2c.S -o i2c.o
#riscv32-unknown-elf-ld -T CH32V003.ld -Map=final.map i2c.O
#riscv32-unknown-elf-objcopy -O ihex a.out i2c.hex

.equ SRAM_start, 0x20000000
.equ SRAM_end, 0x20000800
.equ STACK, 0x20000800
.equ TIM2_BASE, 0x40000000
.equ W_WDG_BASE, 0x40002C00
.equ I_WDG_BASE, 0x40003000
.equ I2C_BASE, 0x40005400
.equ PWR_BASE, 0x40007000
.equ AFIO_BASE, 0x40010000
.equ EXTI_BASE, 0x40010400
.equ PORTA_BASE, 0x40010800
.equ PORTC_BASE, 0x40011000
.equ PORTD_BASE, 0x40011400
.equ ADC_BASE, 0x40012400
.equ TIM1_BASE, 0x40012C00
.equ SPI_BASE, 0x40013000
.equ USART_BASE, 0x40013800
.equ DMA_BASE, 0x40020000
.equ RCC_BASE, 0x40021000
.equ FLASH_INTERFACE_BASE, 0x40022000
.equ EXTENDED_MEM_BASE, 0x40023800
.equ CORE_PRIVATE_BASE, 0xE0000000
.equ FLASH_BASE, 0x08000000
.equ R32_RCC_CTLR, 0x40021000 #Clock control register 0x0000xx83
.equ R32_RCC_CFGR0, 0x40021004 #Clock configuration register 0 0x00000000
.equ R32_RCC_INTR, 0x40021008 #Clock interrupt register 0x00000000
.equ R32_RCC_APB2PRSTR, 0x4002100C #APB2 peripheral reset register 0x00000000
.equ R32_RCC_APB1PRSTR, 0x40021010 # APB1 peripheral reset register 0x00000000
.equ R32_RCC_AHBPCENR, 0x40021014 #AHB peripheral clock enable register 0x00000014
.equ R32_RCC_APB2PCENR, 0x40021018 #APB2 peripheral clock enable register 0x00000000
.equ R32_RCC_APB1PCENR, 0x4002101C #APB1 peripheral clock enable register 0x00000000
.equ R32_GPIOC_CFGLR, 0x40011000 #PC port configuration register low 0x44444444
.equ R32_GPIOD_CFGLR, 0x40011400 #PD port configuration register low 0x44444444
.equ R32_GPIOC_INDR, 0x40011008 #PC port input data register 0x0000XXXX
.equ R32_GPIOD_INDR, 0x40011408 #PD port input data register 0x0000XXXX
.equ R32_GPIOC_OUTDR, 0x4001100C #PC port output data register 0x00000000
.equ R32_GPIOD_OUTDR, 0x4001140C #PD port output data register 0x00000000
.equ R32_GPIOC_BSHR, 0x40011010 #PC port set/reset register 0x00000000
.equ R32_GPIOD_BSHR, 0x40011410 #PD port set/reset register 0x00000000
.equ R32_GPIOC_BCR, 0x40011014 #PC port reset register
.equ R32_GPIOD_BCR, 0x40011414 #PD port reset register 0x00000000
.equ R32_GPIOC_LCKR, 0x40011018 #PC port configuration lock register 0x00000000
.equ R32_GPIOD_LCKR, 0x40011418 #PD port configuration lock register 
.equ R32_AFIO_PCFR1, 0x40010004 #AFIO Remap Register 1
.equ R32_AFIO_EXTICR, 0x40010008 #External interrupt configuration register 1
.equ R32_USART_STATR, 0x40013800 #UASRT status register 0x000000C0
.equ R32_USART_DATAR, 0x40013804 #UASRT data register 0x000000XX
.equ R32_USART_BRR, 0x40013808 #UASRT baud rate register 0x00000000
.equ R32_USART_CTLR1, 0x4001380C #UASRT control register 1 0x00000000
.equ R32_USART_CTLR2, 0x40013810 #UASRT control register 2 0x00000000
.equ R32_USART_CTLR3, 0x40013814 #UASRT control register 3 0x00000000
.equ R32_USART_GPR, 0x40013818 #UASRT protection time and prescaler register
.equ R16_I2C_CTLR1, 0x40005400 #I2C control register 1 0x0000
.equ R16_I2C_CTLR2, 0x40005404 #I2C control register 2 0x0000
.equ R16_I2C_OADDR1, 0x40005408 #I2C address register 1 0x0000
.equ R16_I2C_OADDR2, 0x4000540C #I2C address register 2 0x0000
.equ R16_I2C_DATAR,  0x40005410 #I2C data register 0x0000
.equ R16_I2C_STAR1,  0x40005414 #I2C status register 1 0x0000
.equ R16_I2C_STAR2,  0x40005418 #I2C status register 2 0x0000
.equ R16_I2C_CKCFGR, 0x4000541C #I2C clock register
.equ R16_SPI_CTLR1, 0x40013000 #SPI Control register1 0x0000
.equ R16_SPI_CTLR2, 0x40013004 #SPI Control register2 0x0000
.equ R16_SPI_STATR, 0x40013008 #SPI Status register 0x0002
.equ R16_SPI_DATAR, 0x4001300C #SPI Data register 0x0000
.equ R16_SPI_CRCR,  0x40013010 #SPI Polynomial register 0x0007
.equ R16_SPI_RCRCR, 0x40013014 #SPI Receive CRC register 0x0000
.equ R16_SPI_TCRCR, 0x40013018 #SPI Transmit CRC register 0x0000
.equ R16_SPI_HSCR,  0x40013024 #SPI High-speed control register
.equ R32_GPIOA_OUTDR, 0x4001080C 	#PA port output data register 0x00000000
.equ R32_GPIOA_INDR, 0x40010808 	#PA port input data register 0x0000XXXX
.equ R32_GPIOA_CFGLR, 0x40010800 	#PA port configuration register low 0x44444444
.equ R32_GPIOA_BSHR, 0x40010810 	#PA port set/reset register 0x00000000
.equ R32_GPIOA_BCR, 0x40010814 	#PA port reset register 0x00000000



fclk 		= 24000000   		# 24Mhz RCO internal , AHB =8Mhz by default
state 		= 0x2000000C 		# located in SRAM
result1 	= 0x20000010 		# 0x20000010 to 0x20000018 is used for storing result in decimal format
result2 	= 0x20000014
fraction 	= 0x20000018
fraction2  	= 0x2000001C
result_lo 	= 0x20000020
result_hi 	= 0x20000024
modulo 		= 0x20000028
scratch 	= 0x2000002C
XYC 		= 0x20000030
XYCOLOUR 	= 0x20000034
dividend 	= 0x20000038 
divisor 	= 0x2000003C
scratchpad 	= 0x20000040
mem 		= 0x20000044
FONTCOLOR       = 0x20000058		#b3b2 = font colour, b1b0 = background color
counter		= 0x2000005C
counter1        = 0x20000060
buffer1		= 0x20000064
buffer2		= 0x20000068
.equ buffer,   	0x2000006C
.equ buffer01,  0x20000070
.equ buffer02,  0x20000074
.equ buffer03,  0x20000078
.equ clock_display,   0x2000007C
.equ clock_display1,  0x20000080 # stores 1 second measure window overflow for slow signals
.equ clock_display2,  0x20000084
.equ clock_display3,  0x20000088
.equ result1,  	0x2000008C
.equ result2,  	0x20000090 
.equ result3,  	0x20000094
.equ week   ,  	0x20000098
.equ mem,  	0x2000009C # 10 bytes used by print function from 0(mem)
.equ mem1,  	0x200000A0 # till 9(mem) , 2 bytes in mem1

.equ fclk,  	24000000
.equ DS1307WAD , 0xD0
.equ DS1307RAD , 0xD1
.equ read_data_len , 7
.eqv sda ,	0x00000002
.eqv scl ,	0x00000004

.align 4
.text
.global start
start:
sp_init:
    	la sp, STACK			# initialize stack pointer
		
#Enable GPIO clocks & AFIO in APB2 clock register
        
    	la x10,R32_RCC_APB2PCENR	# load address of APB2PCENR register to x10 ,for enabling GPIO A,D,C peripherals
	lw x11,0(x10)			# load contents from peripheral register R32_RCC_APB2PCENR pointed by x10
	li x7,((1<<2)|(1<<4)|(1<<5)|(1<<0)|(1<<11)|(1<<12)|(1<<14))	# 1<<IOPA_EN,1<<IOPC_EN,1<<IOPD_EN,1<<AFIOEN,1<<SPI enable port A,C,D and AFIO functions
	or x11,x11,x7			# or values 
	sw x11,0(x10)			# store modified enable values in R32_RCC_APB2PCENR


#configure GPIO A for I2c
	la x10,R32_GPIOA_CFGLR		# load pointer x10 with address of R32_GPIOD_CFGLR , GPIO configuration register
	lw x11,0(x10)			# load contents from register pointed by x10
	li x7,~((0xf<<4)|(0xf<<8))	# clear pa1,pa2,
	and x11,x11,x7			# clear pa1,pa2
	li x7,((5<<4)|(5<<8))		# set output opendrain for PA1 and PA2
	or x11,x11,x7			# OR value to register
	sw x11,0(x10)			# store in R32_GPIOA_CFGLR

	call delay1ms			# 1 ms delay
	
#####	
	call I2C_START			# call subroutine to send start condiion on bus
	li x7,DS1307WAD			# load slave write address in x7 (data register for write operations)
	call I2C_WRITE			# call subroutine to transmit a byte on bus
	li x7,0x00			# load register number of slave from where data is to be read
	call I2C_WRITE			# call subroutine to transmit a byte on bus
	call clock_read			# call clock read subroutine to read 7 bytes from DS1307 RTC, stores in buffer....buffer+6
	
here:
	j here				# end
	












#I2C SUBROUTINES____________________________________#

##########################
SDA_HI:
	addi sp,sp,-12
	sw ra,0(sp)
	sw a0,4(sp)
	sw x7,8(sp)
	la a0,R32_GPIOA_BSHR			# load address of GPIOA port bit set register
	li x7,sda				# set PA1, bit1 ,0x00000002
	sw x7,0(a0)				# store in port register, resistor pulls sda high , opendrain
	lw x7,8(sp)
	lw a0,4(sp)
	lw ra,0(sp)
	addi sp,sp,12
	ret
#########################
SDA_LO:
	addi sp,sp,-12
	sw ra,0(sp)
	sw a0,4(sp)
	sw x7,8(sp)
	la a0,R32_GPIOA_BCR			# address of port bit clear register
	li x7,sda				# 0x00000002 will clear and port pulls sda to low to ground
	sw x7,0(a0)
	lw x7,8(sp)
	lw a0,4(sp)
	lw ra,0(sp)
	addi sp,sp,12
	ret
#######################
SCL_HI:
	addi sp,sp,-12
	sw ra,0(sp)
	sw a0,4(sp)
	sw x7,8(sp)
	la a0,R32_GPIOA_BSHR			# bit set register for porta
	li x7,scl				# 0x00000004 , sets PA2, bit2
	sw x7,0(a0)				# resistor pulls up SCL opendrain line
	lw x7,8(sp)
	lw a0,4(sp)
	lw ra,0(sp)
	addi sp,sp,12
	ret
########################
SCL_LO:
	addi sp,sp,-12
	sw ra,0(sp)
	sw a0,4(sp)
	sw x7,8(sp)
	la a0,R32_GPIOA_BCR			# bit clear register for porta
	li x7,scl				# clear bit when 1 is written, 0x00000004
	sw x7,0(a0)				# pulls SCL low to ground
	lw x7,8(sp)
	lw a0,4(sp)
	lw ra,0(sp)
	addi sp,sp,12
	ret
##########################
I2C_START:
	addi sp,sp,-4
	sw ra,0(sp)
	call SDA_HI				# SDA high , bus in released condition
	call SCL_HI				# SCL high , bus in released condition
	call SDA_LO				# SDA low while SCL high
	call SCL_LO				# follow SDA then SCL low
	lw ra,0(sp)
	addi sp,sp,4
	ret
#########################
I2C_STOP:
	addi sp,sp,-4
	sw ra,0(sp)
	call SDA_LO				# make SDA low before SCL is high
	call SCL_HI				# SCL high while SDA is low for stop
	call SDA_HI				# release SDA for nuetral condition on bus
	lw ra,0(sp)
	addi sp,sp,4
	ret
###################
SEND_ACK:
	addi sp,sp,-4
	sw ra,0(sp)
	call SDA_LO			# while SDA low cycle clock
	call SCL_HI			# cycle clock
	call SCL_LO			# cycle clock
	call SDA_HI			# SDA high after cycling clock
	lw ra,0(sp)
	addi sp,sp,4
	ret
########################
SEND_NACK:
	addi sp,sp,-4
	sw ra,0(sp)
	call SDA_HI			# while SDA high cycle clock
	call SCL_HI			# cycle clock
	call SCL_LO			# cycle clock
	lw ra,0(sp)
	addi sp,sp,4
	ret
###############

I2C_WRITE:				# load data byte in x7 and call I2C_WRITE
	addi sp,sp,-12
	sw ra,0(sp)
	sw x3,4(sp)
	sw x5,8(sp)
	li x3,8				# bit counter
trx_loop:
	call SDA_LO			# start with sda low
	mv x5,x7			# data in x7 is moved to x5 working register
	andi x5,x5,0x80			# extract msb
	beqz x5,bit0			# if 0 branch to bit0
	call SDA_HI			# if 1 call SDA_HI
bit0:
	call SCL_HI			# call SCL_HI , cycle clock to transmit data
	slli x7,x7,1			# shift x7 1 bit left
	call SCL_LO			# call SCL_LO to finisg 1 clock
	addi x3,x3,-1			# decrease bit counter
	bnez x3,trx_loop		# loop till all bits are transmitted
	call SDA_HI           		# for ACK
	call SCL_HI			# ack start
	call SCL_LO			# ack finished
	call SDA_LO			# SDA-LO
	lw x5,8(sp)
	lw x3,4(sp)
	lw ra,0(sp)
	addi sp,sp,12
	ret
##################################
I2C_READ_BYTE:
    	addi sp,sp,-16
    	sw ra,0(sp)
	sw x7,4(sp)
	sw x3,8(sp)
	sw x5,12(sp)
    	li x7,0			# clear result register
    	li x3,8  		# Initialize bit counter
rx_loop:
    	call SDA_HI		# release SDA for data receive
    	call SCL_HI		# begine clocking cycle
    	la a0,R32_GPIOA_INDR	# point a0 to port A input register
    	lw x5,0(a0)		# load word for input register
    	andi x5,x5,2		# extract bit 1 to know data line value
    	slli x7,x7,1       	# Shift left to make room for the next bit
    	or x7,x7,x5        	# Store the bit into the byte
    	call SCL_LO		# finsh clock cycling for the bit
    	addi x3,x3,-1		# decrease bit counter
    	bnez x3,rx_loop    	# Repeat for next bit until all 8 bits are received
	sb x7,0(a1) 		# Store received byte in buffer , routine called with a1 pointing buffer      
    	lw x5,12(sp)
	lw x3,8(sp)
	lw x7,4(sp)
	lw ra,0(sp)
    	addi sp,sp,16
    	ret
##################################

I2C_MULTI_READ:                        # call with number of bytes to be read in x6
	addi sp,sp,-12
	sw ra,0(sp)
	sw a1,4(sp)
	sw x6,8(sp)
	la a1,buffer			# a1 points to buffer
	call I2C_START			# send start on bus
	li x7,DS1307RAD 		# load read address of slave, to be defined
	call I2C_WRITE			# write the address on bus with I2C_WRITE routine
byte_read_loop:
	call I2C_READ_BYTE		# reads 1 byte into buffer
	addi a1,a1,1			# increase buffer address by 1 byte
	addi x6,x6,-1			# decrease receive byte count
	bnez x6,need_ack		# if byte counter is above 0, branch to need_ack label to send ACK
	call SEND_NACK			# if byte counter is 0 send NACK to terminate read
	j send_stop			# jump to label stop to send i2c stop
need_ack:
	call SEND_ACK			# call routine to send ACK if byte counter is not 0
	j byte_read_loop		# jump to byte_read_loop to exhaust byte counter
send_stop:
	call I2C_STOP			# call routine to stop i2c transmission and release bus
	lw x6,8(sp)
	lw a1,4(sp)
	lw ra,0(sp)
	addi sp,sp,12
	ret



################################################################################
# delay routines
#==========================================
delay10S: 
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp)
	li t1,20100101 			# load an arbitarary value 20000000 to t1 register 
loop10S:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop10S 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA
	ret 

delay1S: 
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp)
	li t1,2010010 			# load an arbitarary value 20000000 to t1 register 
loop1s:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop1s 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA
	ret 

delay1ms:
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp) 
	li t1,2010 			# load an arbitarary value 20000000 to t1 register 
loop1ms:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop1ms 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA 
	ret 

delay10ms:
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp) 
	li t1,20100 			# load an arbitarary value 20000000 to t1 register 
loop10ms:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop10ms 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA
	ret

delay50ms:
	addi sp,sp,-8 			# push RA
	sw ra,0(sp) 			# push RA
	sw t1,4(sp) 
	li t1,100500 			# load an arbitrary value 20000000 to t1 register 
loop50ms:
	addi t1,t1,-1 			# subtract 1 from t1
	bne t1,zero,loop50ms 		# if t1 not equal to 0 branch to label loop
	lw t1,4(sp)
	lw ra,0(sp) 			# POP RA
	addi sp,sp,8 			# pop RA
	ret 
#################################################################################
###################################################################################
#   clock_read ,,,  num of bytes in x6 
###################################################################################


clock_read:          		# store address in t1, num of bytes in t0 ,
	addi sp,sp,-4 		# push RA
	sw ra,0(sp) 		# push RA
	li x6,7 		# number of bytes to be received (sec,min,hour,day,date,month,year)
	call I2C_MULTI_READ 	# reads 7 bytes from RDA5807 and stores in buffer in litteendian format
	lw ra,0(sp) 		# POP RA
	addi sp,sp,4 		# pop RA
	ret







