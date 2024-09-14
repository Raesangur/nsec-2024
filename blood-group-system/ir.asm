
IR.HEX:     file format ihex


Disassembly of section .sec1:

00000000 <.sec1>:
   0:	1e c0       	rjmp	.+60     	;  0x3e
   2:	42 c0       	rjmp	.+132    	;  0x88
   4:	41 c0       	rjmp	.+130    	;  0x88
   6:	40 c0       	rjmp	.+128    	;  0x88
   8:	3f c0       	rjmp	.+126    	;  0x88
   a:	1d c1       	rjmp	.+570    	;  0x246
   c:	3d c0       	rjmp	.+122    	;  0x88
   e:	3c c0       	rjmp	.+120    	;  0x88
  10:	3b c0       	rjmp	.+118    	;  0x88
  12:	3a c0       	rjmp	.+116    	;  0x88
  14:	39 c0       	rjmp	.+114    	;  0x88
  16:	38 c0       	rjmp	.+112    	;  0x88
  18:	37 c0       	rjmp	.+110    	;  0x88
  1a:	36 c0       	rjmp	.+108    	;  0x88
  1c:	35 c0       	rjmp	.+106    	;  0x88
  1e:	00 00       	nop
  20:	00 00       	nop
  22:	38 00       	.word	0x0038	; ????
  24:	00 00       	nop
  26:	00 00       	nop
  28:	37 00       	.word	0x0037	; ????
  2a:	00 00       	nop
  2c:	00 00       	nop
  2e:	36 00       	.word	0x0036	; ????
  30:	02 02       	muls	r16, r18
  32:	02 02       	muls	r16, r18
  34:	02 02       	muls	r16, r18
  36:	01 02       	muls	r16, r17
  38:	04 08       	sbc	r0, r4
  3a:	10 20       	and	r1, r0
  3c:	68 02       	muls	r22, r24
  3e:	11 24       	eor	r1, r1
  40:	1f be       	out	0x3f, r1	; 63
  42:	cf e5       	ldi	r28, 0x5F	; 95
  44:	d2 e0       	ldi	r29, 0x02	; 2
  46:	de bf       	out	0x3e, r29	; 62
  48:	cd bf       	out	0x3d, r28	; 61
  4a:	10 e0       	ldi	r17, 0x00	; 0
  4c:	a0 e6       	ldi	r26, 0x60	; 96
  4e:	b0 e0       	ldi	r27, 0x00	; 0
  50:	ee ee       	ldi	r30, 0xEE	; 238
  52:	f4 e0       	ldi	r31, 0x04	; 4
  54:	02 c0       	rjmp	.+4      	;  0x5a
  56:	05 90       	lpm	r0, Z+
  58:	0d 92       	st	X+, r0
  5a:	a2 36       	cpi	r26, 0x62	; 98
  5c:	b1 07       	cpc	r27, r17
  5e:	d9 f7       	brne	.-10     	;  0x56
  60:	20 e0       	ldi	r18, 0x00	; 0
  62:	a2 e6       	ldi	r26, 0x62	; 98
  64:	b0 e0       	ldi	r27, 0x00	; 0
  66:	01 c0       	rjmp	.+2      	;  0x6a
  68:	1d 92       	st	X+, r1
  6a:	a2 37       	cpi	r26, 0x72	; 114
  6c:	b2 07       	cpc	r27, r18
  6e:	e1 f7       	brne	.-8      	;  0x68
  70:	10 e0       	ldi	r17, 0x00	; 0
  72:	cf e1       	ldi	r28, 0x1F	; 31
  74:	d0 e0       	ldi	r29, 0x00	; 0
  76:	03 c0       	rjmp	.+6      	;  0x7e
  78:	21 97       	sbiw	r28, 0x01	; 1
  7a:	fe 01       	movw	r30, r28
  7c:	30 d2       	rcall	.+1120   	;  0x4de
  7e:	ce 31       	cpi	r28, 0x1E	; 30
  80:	d1 07       	cpc	r29, r17
  82:	d1 f7       	brne	.-12     	;  0x78
  84:	2a d1       	rcall	.+596    	;  0x2da
  86:	31 c2       	rjmp	.+1122   	;  0x4ea
  88:	bb cf       	rjmp	.-138    	;  0x0
  8a:	3f b7       	in	r19, 0x3f	; 63
  8c:	f8 94       	cli
  8e:	80 91 6a 00 	lds	r24, 0x006A	;  0x80006a
  92:	90 91 6b 00 	lds	r25, 0x006B	;  0x80006b
  96:	a0 91 6c 00 	lds	r26, 0x006C	;  0x80006c
  9a:	b0 91 6d 00 	lds	r27, 0x006D	;  0x80006d
  9e:	22 b7       	in	r18, 0x32	; 50
  a0:	08 b6       	in	r0, 0x38	; 56
  a2:	01 fe       	sbrs	r0, 1
  a4:	05 c0       	rjmp	.+10     	;  0xb0
  a6:	2f 3f       	cpi	r18, 0xFF	; 255
  a8:	19 f0       	breq	.+6      	;  0xb0
  aa:	01 96       	adiw	r24, 0x01	; 1
  ac:	a1 1d       	adc	r26, r1
  ae:	b1 1d       	adc	r27, r1
  b0:	3f bf       	out	0x3f, r19	; 63
  b2:	ba 2f       	mov	r27, r26
  b4:	a9 2f       	mov	r26, r25
  b6:	98 2f       	mov	r25, r24
  b8:	88 27       	eor	r24, r24
  ba:	bc 01       	movw	r22, r24
  bc:	cd 01       	movw	r24, r26
  be:	62 0f       	add	r22, r18
  c0:	71 1d       	adc	r23, r1
  c2:	81 1d       	adc	r24, r1
  c4:	91 1d       	adc	r25, r1
  c6:	43 e0       	ldi	r20, 0x03	; 3
  c8:	66 0f       	add	r22, r22
  ca:	77 1f       	adc	r23, r23
  cc:	88 1f       	adc	r24, r24
  ce:	99 1f       	adc	r25, r25
  d0:	4a 95       	dec	r20
  d2:	d1 f7       	brne	.-12     	;  0xc8
  d4:	08 95       	ret
  d6:	cf 92       	push	r12
  d8:	df 92       	push	r13
  da:	ef 92       	push	r14
  dc:	ff 92       	push	r15
  de:	cf 93       	push	r28
  e0:	df 93       	push	r29
  e2:	6b 01       	movw	r12, r22
  e4:	7c 01       	movw	r14, r24
  e6:	d1 df       	rcall	.-94     	;  0x8a
  e8:	eb 01       	movw	r28, r22
  ea:	cf df       	rcall	.-98     	;  0x8a
  ec:	6c 1b       	sub	r22, r28
  ee:	7d 0b       	sbc	r23, r29
  f0:	68 3e       	cpi	r22, 0xE8	; 232
  f2:	73 40       	sbci	r23, 0x03	; 3
  f4:	a0 f0       	brcs	.+40     	;  0x11e
  f6:	c1 14       	cp	r12, r1
  f8:	d1 04       	cpc	r13, r1
  fa:	e1 04       	cpc	r14, r1
  fc:	f1 04       	cpc	r15, r1
  fe:	39 f4       	brne	.+14     	;  0x10e
 100:	df 91       	pop	r29
 102:	cf 91       	pop	r28
 104:	ff 90       	pop	r15
 106:	ef 90       	pop	r14
 108:	df 90       	pop	r13
 10a:	cf 90       	pop	r12
 10c:	08 95       	ret
 10e:	81 e0       	ldi	r24, 0x01	; 1
 110:	c8 1a       	sub	r12, r24
 112:	d1 08       	sbc	r13, r1
 114:	e1 08       	sbc	r14, r1
 116:	f1 08       	sbc	r15, r1
 118:	c8 51       	subi	r28, 0x18	; 24
 11a:	dc 4f       	sbci	r29, 0xFC	; 252
 11c:	e6 cf       	rjmp	.-52     	;  0xea
 11e:	c1 14       	cp	r12, r1
 120:	d1 04       	cpc	r13, r1
 122:	e1 04       	cpc	r14, r1
 124:	f1 04       	cpc	r15, r1
 126:	09 f7       	brne	.-62     	;  0xea
 128:	eb cf       	rjmp	.-42     	;  0x100
 12a:	4f 92       	push	r4
 12c:	5f 92       	push	r5
 12e:	6f 92       	push	r6
 130:	7f 92       	push	r7
 132:	8f 92       	push	r8
 134:	9f 92       	push	r9
 136:	af 92       	push	r10
 138:	bf 92       	push	r11
 13a:	cf 92       	push	r12
 13c:	df 92       	push	r13
 13e:	ef 92       	push	r14
 140:	ff 92       	push	r15
 142:	0f 93       	push	r16
 144:	1f 93       	push	r17
 146:	cf 93       	push	r28
 148:	df 93       	push	r29
 14a:	6c 01       	movw	r12, r24
 14c:	9e df       	rcall	.-196    	;  0x8a
 14e:	2b 01       	movw	r4, r22
 150:	5c 01       	movw	r10, r24
 152:	4b 01       	movw	r8, r22
 154:	cc e0       	ldi	r28, 0x0C	; 12
 156:	d0 e0       	ldi	r29, 0x00	; 0
 158:	f1 2c       	mov	r15, r1
 15a:	e1 2c       	mov	r14, r1
 15c:	8e e0       	ldi	r24, 0x0E	; 14
 15e:	c8 1a       	sub	r12, r24
 160:	d1 08       	sbc	r13, r1
 162:	e1 08       	sbc	r14, r1
 164:	f1 08       	sbc	r15, r1
 166:	f8 94       	cli
 168:	c1 9a       	sbi	0x18, 1	; 24
 16a:	ce 01       	movw	r24, r28
 16c:	01 97       	sbiw	r24, 0x01	; 1
 16e:	f1 f7       	brne	.-4      	;  0x16c
 170:	c1 98       	cbi	0x18, 1	; 24
 172:	78 94       	sei
 174:	8a e1       	ldi	r24, 0x1A	; 26
 176:	88 0e       	add	r8, r24
 178:	91 1c       	adc	r9, r1
 17a:	a1 1c       	adc	r10, r1
 17c:	b1 1c       	adc	r11, r1
 17e:	85 df       	rcall	.-246    	;  0x8a
 180:	9b 01       	movw	r18, r22
 182:	24 19       	sub	r18, r4
 184:	35 09       	sbc	r19, r5
 186:	89 01       	movw	r16, r18
 188:	30 e0       	ldi	r19, 0x00	; 0
 18a:	20 e0       	ldi	r18, 0x00	; 0
 18c:	0c 15       	cp	r16, r12
 18e:	1d 05       	cpc	r17, r13
 190:	2e 05       	cpc	r18, r14
 192:	3f 05       	cpc	r19, r15
 194:	34 f4       	brge	.+12     	;  0x1a2
 196:	68 15       	cp	r22, r8
 198:	79 05       	cpc	r23, r9
 19a:	8a 05       	cpc	r24, r10
 19c:	9b 05       	cpc	r25, r11
 19e:	78 f3       	brcs	.-34     	;  0x17e
 1a0:	e2 cf       	rjmp	.-60     	;  0x166
 1a2:	df 91       	pop	r29
 1a4:	cf 91       	pop	r28
 1a6:	1f 91       	pop	r17
 1a8:	0f 91       	pop	r16
 1aa:	ff 90       	pop	r15
 1ac:	ef 90       	pop	r14
 1ae:	df 90       	pop	r13
 1b0:	cf 90       	pop	r12
 1b2:	bf 90       	pop	r11
 1b4:	af 90       	pop	r10
 1b6:	9f 90       	pop	r9
 1b8:	8f 90       	pop	r8
 1ba:	7f 90       	pop	r7
 1bc:	6f 90       	pop	r6
 1be:	5f 90       	pop	r5
 1c0:	4f 90       	pop	r4
 1c2:	08 95       	ret
 1c4:	af 92       	push	r10
 1c6:	bf 92       	push	r11
 1c8:	cf 92       	push	r12
 1ca:	df 92       	push	r13
 1cc:	ef 92       	push	r14
 1ce:	ff 92       	push	r15
 1d0:	0f 93       	push	r16
 1d2:	1f 93       	push	r17
 1d4:	cf 93       	push	r28
 1d6:	5c 01       	movw	r10, r24
 1d8:	8b 01       	movw	r16, r22
 1da:	b9 9a       	sbi	0x17, 1	; 23
 1dc:	8f b7       	in	r24, 0x3f	; 63
 1de:	f8 94       	cli
 1e0:	40 91 6e 00 	lds	r20, 0x006E	;  0x80006e
 1e4:	50 91 6f 00 	lds	r21, 0x006F	;  0x80006f
 1e8:	60 91 70 00 	lds	r22, 0x0070	;  0x800070
 1ec:	70 91 71 00 	lds	r23, 0x0071	;  0x800071
 1f0:	8f bf       	out	0x3f, r24	; 63
 1f2:	80 e0       	ldi	r24, 0x00	; 0
 1f4:	93 e2       	ldi	r25, 0x23	; 35
 1f6:	99 df       	rcall	.-206    	;  0x12a
 1f8:	8c ef       	ldi	r24, 0xFC	; 252
 1fa:	92 e2       	ldi	r25, 0x22	; 34
 1fc:	01 97       	sbiw	r24, 0x01	; 1
 1fe:	f1 f7       	brne	.-4      	;  0x1fc
 200:	65 01       	movw	r12, r10
 202:	78 01       	movw	r14, r16
 204:	c0 e2       	ldi	r28, 0x20	; 32
 206:	0c e1       	ldi	r16, 0x1C	; 28
 208:	1d e0       	ldi	r17, 0x0D	; 13
 20a:	9c e5       	ldi	r25, 0x5C	; 92
 20c:	a9 2e       	mov	r10, r25
 20e:	94 e0       	ldi	r25, 0x04	; 4
 210:	b9 2e       	mov	r11, r25
 212:	80 e3       	ldi	r24, 0x30	; 48
 214:	92 e0       	ldi	r25, 0x02	; 2
 216:	89 df       	rcall	.-238    	;  0x12a
 218:	c8 01       	movw	r24, r16
 21a:	c0 fe       	sbrs	r12, 0
 21c:	c5 01       	movw	r24, r10
 21e:	01 97       	sbiw	r24, 0x01	; 1
 220:	f1 f7       	brne	.-4      	;  0x21e
 222:	f6 94       	lsr	r15
 224:	e7 94       	ror	r14
 226:	d7 94       	ror	r13
 228:	c7 94       	ror	r12
 22a:	c1 50       	subi	r28, 0x01	; 1
 22c:	91 f7       	brne	.-28     	;  0x212
 22e:	80 e3       	ldi	r24, 0x30	; 48
 230:	92 e0       	ldi	r25, 0x02	; 2
 232:	cf 91       	pop	r28
 234:	1f 91       	pop	r17
 236:	0f 91       	pop	r16
 238:	ff 90       	pop	r15
 23a:	ef 90       	pop	r14
 23c:	df 90       	pop	r13
 23e:	cf 90       	pop	r12
 240:	bf 90       	pop	r11
 242:	af 90       	pop	r10
 244:	72 cf       	rjmp	.-284    	;  0x12a
 246:	1f 92       	push	r1
 248:	0f 92       	push	r0
 24a:	0f b6       	in	r0, 0x3f	; 63
 24c:	0f 92       	push	r0
 24e:	11 24       	eor	r1, r1
 250:	2f 93       	push	r18
 252:	3f 93       	push	r19
 254:	8f 93       	push	r24
 256:	9f 93       	push	r25
 258:	af 93       	push	r26
 25a:	bf 93       	push	r27
 25c:	80 91 6e 00 	lds	r24, 0x006E	;  0x80006e
 260:	90 91 6f 00 	lds	r25, 0x006F	;  0x80006f
 264:	a0 91 70 00 	lds	r26, 0x0070	;  0x800070
 268:	b0 91 71 00 	lds	r27, 0x0071	;  0x800071
 26c:	30 91 69 00 	lds	r19, 0x0069	;  0x800069
 270:	26 e0       	ldi	r18, 0x06	; 6
 272:	23 0f       	add	r18, r19
 274:	2d 37       	cpi	r18, 0x7D	; 125
 276:	68 f1       	brcs	.+90     	;  0x2d2
 278:	29 e8       	ldi	r18, 0x89	; 137
 27a:	23 0f       	add	r18, r19
 27c:	03 96       	adiw	r24, 0x03	; 3
 27e:	a1 1d       	adc	r26, r1
 280:	b1 1d       	adc	r27, r1
 282:	20 93 69 00 	sts	0x0069, r18	;  0x800069
 286:	80 93 6e 00 	sts	0x006E, r24	;  0x80006e
 28a:	90 93 6f 00 	sts	0x006F, r25	;  0x80006f
 28e:	a0 93 70 00 	sts	0x0070, r26	;  0x800070
 292:	b0 93 71 00 	sts	0x0071, r27	;  0x800071
 296:	80 91 6a 00 	lds	r24, 0x006A	;  0x80006a
 29a:	90 91 6b 00 	lds	r25, 0x006B	;  0x80006b
 29e:	a0 91 6c 00 	lds	r26, 0x006C	;  0x80006c
 2a2:	b0 91 6d 00 	lds	r27, 0x006D	;  0x80006d
 2a6:	01 96       	adiw	r24, 0x01	; 1
 2a8:	a1 1d       	adc	r26, r1
 2aa:	b1 1d       	adc	r27, r1
 2ac:	80 93 6a 00 	sts	0x006A, r24	;  0x80006a
 2b0:	90 93 6b 00 	sts	0x006B, r25	;  0x80006b
 2b4:	a0 93 6c 00 	sts	0x006C, r26	;  0x80006c
 2b8:	b0 93 6d 00 	sts	0x006D, r27	;  0x80006d
 2bc:	bf 91       	pop	r27
 2be:	af 91       	pop	r26
 2c0:	9f 91       	pop	r25
 2c2:	8f 91       	pop	r24
 2c4:	3f 91       	pop	r19
 2c6:	2f 91       	pop	r18
 2c8:	0f 90       	pop	r0
 2ca:	0f be       	out	0x3f, r0	; 63
 2cc:	0f 90       	pop	r0
 2ce:	1f 90       	pop	r1
 2d0:	18 95       	reti
 2d2:	02 96       	adiw	r24, 0x02	; 2
 2d4:	a1 1d       	adc	r26, r1
 2d6:	b1 1d       	adc	r27, r1
 2d8:	d4 cf       	rjmp	.-88     	;  0x282
 2da:	83 e0       	ldi	r24, 0x03	; 3
 2dc:	8a bd       	out	0x2a, r24	; 42
 2de:	83 bf       	out	0x33, r24	; 51
 2e0:	78 94       	sei
 2e2:	89 b7       	in	r24, 0x39	; 57
 2e4:	82 60       	ori	r24, 0x02	; 2
 2e6:	89 bf       	out	0x39, r24	; 57
 2e8:	80 e4       	ldi	r24, 0x40	; 64
 2ea:	8c bd       	out	0x2c, r24	; 44
 2ec:	8f ef       	ldi	r24, 0xFF	; 255
 2ee:	8d bd       	out	0x2d, r24	; 45
 2f0:	87 ec       	ldi	r24, 0xC7	; 199
 2f2:	80 bf       	out	0x30, r24	; 48
 2f4:	86 e8       	ldi	r24, 0x86	; 134
 2f6:	86 b9       	out	0x06, r24	; 6
 2f8:	80 91 62 00 	lds	r24, 0x0062	;  0x800062
 2fc:	87 ff       	sbrs	r24, 7
 2fe:	0d c0       	rjmp	.+26     	;  0x31a
 300:	8f 77       	andi	r24, 0x7F	; 127
 302:	09 f4       	brne	.+2      	;  0x306
 304:	b2 c0       	rjmp	.+356    	;  0x46a
 306:	81 30       	cpi	r24, 0x01	; 1
 308:	09 f4       	brne	.+2      	;  0x30c
 30a:	b1 c0       	rjmp	.+354    	;  0x46e
 30c:	82 30       	cpi	r24, 0x02	; 2
 30e:	09 f4       	brne	.+2      	;  0x312
 310:	b0 c0       	rjmp	.+352    	;  0x472
 312:	83 30       	cpi	r24, 0x03	; 3
 314:	09 f4       	brne	.+2      	;  0x318
 316:	af c0       	rjmp	.+350    	;  0x476
 318:	8f ef       	ldi	r24, 0xFF	; 255
 31a:	90 e0       	ldi	r25, 0x00	; 0
 31c:	fc 01       	movw	r30, r24
 31e:	ea 5c       	subi	r30, 0xCA	; 202
 320:	ff 4f       	sbci	r31, 0xFF	; 255
 322:	24 91       	lpm	r18, Z
 324:	80 5d       	subi	r24, 0xD0	; 208
 326:	9f 4f       	sbci	r25, 0xFF	; 255
 328:	fc 01       	movw	r30, r24
 32a:	84 91       	lpm	r24, Z
 32c:	88 23       	and	r24, r24
 32e:	c1 f0       	breq	.+48     	;  0x360
 330:	90 e0       	ldi	r25, 0x00	; 0
 332:	88 0f       	add	r24, r24
 334:	99 1f       	adc	r25, r25
 336:	fc 01       	movw	r30, r24
 338:	ec 5d       	subi	r30, 0xDC	; 220
 33a:	ff 4f       	sbci	r31, 0xFF	; 255
 33c:	c5 91       	lpm	r28, Z+
 33e:	d4 91       	lpm	r29, Z
 340:	fc 01       	movw	r30, r24
 342:	e2 5e       	subi	r30, 0xE2	; 226
 344:	ff 4f       	sbci	r31, 0xFF	; 255
 346:	a5 91       	lpm	r26, Z+
 348:	b4 91       	lpm	r27, Z
 34a:	9f b7       	in	r25, 0x3f	; 63
 34c:	f8 94       	cli
 34e:	38 81       	ld	r19, Y
 350:	82 2f       	mov	r24, r18
 352:	80 95       	com	r24
 354:	83 23       	and	r24, r19
 356:	88 83       	st	Y, r24
 358:	ec 91       	ld	r30, X
 35a:	e2 2b       	or	r30, r18
 35c:	ec 93       	st	X, r30
 35e:	9f bf       	out	0x3f, r25	; 63
 360:	c1 e0       	ldi	r28, 0x01	; 1
 362:	80 91 62 00 	lds	r24, 0x0062	;  0x800062
 366:	87 ff       	sbrs	r24, 7
 368:	0d c0       	rjmp	.+26     	;  0x384
 36a:	8f 77       	andi	r24, 0x7F	; 127
 36c:	09 f4       	brne	.+2      	;  0x370
 36e:	85 c0       	rjmp	.+266    	;  0x47a
 370:	81 30       	cpi	r24, 0x01	; 1
 372:	09 f4       	brne	.+2      	;  0x376
 374:	84 c0       	rjmp	.+264    	;  0x47e
 376:	82 30       	cpi	r24, 0x02	; 2
 378:	09 f4       	brne	.+2      	;  0x37c
 37a:	83 c0       	rjmp	.+262    	;  0x482
 37c:	83 30       	cpi	r24, 0x03	; 3
 37e:	09 f4       	brne	.+2      	;  0x382
 380:	82 c0       	rjmp	.+260    	;  0x486
 382:	8f ef       	ldi	r24, 0xFF	; 255
 384:	90 e0       	ldi	r25, 0x00	; 0
 386:	fc 01       	movw	r30, r24
 388:	ea 5c       	subi	r30, 0xCA	; 202
 38a:	ff 4f       	sbci	r31, 0xFF	; 255
 38c:	24 91       	lpm	r18, Z
 38e:	fc 01       	movw	r30, r24
 390:	e0 5d       	subi	r30, 0xD0	; 208
 392:	ff 4f       	sbci	r31, 0xFF	; 255
 394:	e4 91       	lpm	r30, Z
 396:	ee 23       	and	r30, r30
 398:	59 f0       	breq	.+22     	;  0x3b0
 39a:	f0 e0       	ldi	r31, 0x00	; 0
 39c:	ee 0f       	add	r30, r30
 39e:	ff 1f       	adc	r31, r31
 3a0:	e6 5d       	subi	r30, 0xD6	; 214
 3a2:	ff 4f       	sbci	r31, 0xFF	; 255
 3a4:	a5 91       	lpm	r26, Z+
 3a6:	b4 91       	lpm	r27, Z
 3a8:	ec 91       	ld	r30, X
 3aa:	e2 23       	and	r30, r18
 3ac:	81 e0       	ldi	r24, 0x01	; 1
 3ae:	09 f4       	brne	.+2      	;  0x3b2
 3b0:	80 e0       	ldi	r24, 0x00	; 0
 3b2:	90 91 64 00 	lds	r25, 0x0064	;  0x800064
 3b6:	89 17       	cp	r24, r25
 3b8:	09 f4       	brne	.+2      	;  0x3bc
 3ba:	67 c0       	rjmp	.+206    	;  0x48a
 3bc:	9f b7       	in	r25, 0x3f	; 63
 3be:	f8 94       	cli
 3c0:	40 91 6e 00 	lds	r20, 0x006E	;  0x80006e
 3c4:	50 91 6f 00 	lds	r21, 0x006F	;  0x80006f
 3c8:	60 91 70 00 	lds	r22, 0x0070	;  0x800070
 3cc:	70 91 71 00 	lds	r23, 0x0071	;  0x800071
 3d0:	9f bf       	out	0x3f, r25	; 63
 3d2:	40 93 65 00 	sts	0x0065, r20	;  0x800065
 3d6:	50 93 66 00 	sts	0x0066, r21	;  0x800066
 3da:	60 93 67 00 	sts	0x0067, r22	;  0x800067
 3de:	70 93 68 00 	sts	0x0068, r23	;  0x800068
 3e2:	80 93 64 00 	sts	0x0064, r24	;  0x800064
 3e6:	80 91 63 00 	lds	r24, 0x0063	;  0x800063
 3ea:	81 11       	cpse	r24, r1
 3ec:	6e c0       	rjmp	.+220    	;  0x4ca
 3ee:	80 91 60 00 	lds	r24, 0x0060	;  0x800060
 3f2:	88 23       	and	r24, r24
 3f4:	b9 f1       	breq	.+110    	;  0x464
 3f6:	63 e4       	ldi	r22, 0x43	; 67
 3f8:	70 e0       	ldi	r23, 0x00	; 0
 3fa:	85 e2       	ldi	r24, 0x25	; 37
 3fc:	90 e0       	ldi	r25, 0x00	; 0
 3fe:	e2 de       	rcall	.-572    	;  0x1c4
 400:	6a ef       	ldi	r22, 0xFA	; 250
 402:	70 e0       	ldi	r23, 0x00	; 0
 404:	80 e0       	ldi	r24, 0x00	; 0
 406:	90 e0       	ldi	r25, 0x00	; 0
 408:	66 de       	rcall	.-820    	;  0xd6
 40a:	60 e5       	ldi	r22, 0x50	; 80
 40c:	70 e0       	ldi	r23, 0x00	; 0
 40e:	88 e7       	ldi	r24, 0x78	; 120
 410:	90 e0       	ldi	r25, 0x00	; 0
 412:	d8 de       	rcall	.-592    	;  0x1c4
 414:	6a ef       	ldi	r22, 0xFA	; 250
 416:	70 e0       	ldi	r23, 0x00	; 0
 418:	80 e0       	ldi	r24, 0x00	; 0
 41a:	90 e0       	ldi	r25, 0x00	; 0
 41c:	5c de       	rcall	.-840    	;  0xd6
 41e:	67 e6       	ldi	r22, 0x67	; 103
 420:	78 e4       	ldi	r23, 0x48	; 72
 422:	8d e6       	ldi	r24, 0x6D	; 109
 424:	9d e6       	ldi	r25, 0x6D	; 109
 426:	ce de       	rcall	.-612    	;  0x1c4
 428:	6a ef       	ldi	r22, 0xFA	; 250
 42a:	70 e0       	ldi	r23, 0x00	; 0
 42c:	80 e0       	ldi	r24, 0x00	; 0
 42e:	90 e0       	ldi	r25, 0x00	; 0
 430:	52 de       	rcall	.-860    	;  0xd6
 432:	69 ef       	ldi	r22, 0xF9	; 249
 434:	70 e0       	ldi	r23, 0x00	; 0
 436:	89 eb       	ldi	r24, 0xB9	; 185
 438:	90 e0       	ldi	r25, 0x00	; 0
 43a:	c4 de       	rcall	.-632    	;  0x1c4
 43c:	6a ef       	ldi	r22, 0xFA	; 250
 43e:	70 e0       	ldi	r23, 0x00	; 0
 440:	80 e0       	ldi	r24, 0x00	; 0
 442:	90 e0       	ldi	r25, 0x00	; 0
 444:	48 de       	rcall	.-880    	;  0xd6
 446:	6e e7       	ldi	r22, 0x7E	; 126
 448:	70 e0       	ldi	r23, 0x00	; 0
 44a:	84 e6       	ldi	r24, 0x64	; 100
 44c:	90 e0       	ldi	r25, 0x00	; 0
 44e:	ba de       	rcall	.-652    	;  0x1c4
 450:	6a ef       	ldi	r22, 0xFA	; 250
 452:	70 e0       	ldi	r23, 0x00	; 0
 454:	80 e0       	ldi	r24, 0x00	; 0
 456:	90 e0       	ldi	r25, 0x00	; 0
 458:	3e de       	rcall	.-900    	;  0xd6
 45a:	6c e6       	ldi	r22, 0x6C	; 108
 45c:	74 e4       	ldi	r23, 0x44	; 68
 45e:	87 e6       	ldi	r24, 0x67	; 103
 460:	9d e6       	ldi	r25, 0x6D	; 109
 462:	b0 de       	rcall	.-672    	;  0x1c4
 464:	10 92 60 00 	sts	0x0060, r1	;  0x800060
 468:	7c cf       	rjmp	.-264    	;  0x362
 46a:	85 e0       	ldi	r24, 0x05	; 5
 46c:	56 cf       	rjmp	.-340    	;  0x31a
 46e:	82 e0       	ldi	r24, 0x02	; 2
 470:	54 cf       	rjmp	.-344    	;  0x31a
 472:	84 e0       	ldi	r24, 0x04	; 4
 474:	52 cf       	rjmp	.-348    	;  0x31a
 476:	83 e0       	ldi	r24, 0x03	; 3
 478:	50 cf       	rjmp	.-352    	;  0x31a
 47a:	85 e0       	ldi	r24, 0x05	; 5
 47c:	83 cf       	rjmp	.-250    	;  0x384
 47e:	82 e0       	ldi	r24, 0x02	; 2
 480:	81 cf       	rjmp	.-254    	;  0x384
 482:	84 e0       	ldi	r24, 0x04	; 4
 484:	7f cf       	rjmp	.-258    	;  0x384
 486:	83 e0       	ldi	r24, 0x03	; 3
 488:	7d cf       	rjmp	.-262    	;  0x384
 48a:	9f b7       	in	r25, 0x3f	; 63
 48c:	f8 94       	cli
 48e:	40 91 6e 00 	lds	r20, 0x006E	;  0x80006e
 492:	50 91 6f 00 	lds	r21, 0x006F	;  0x80006f
 496:	60 91 70 00 	lds	r22, 0x0070	;  0x800070
 49a:	70 91 71 00 	lds	r23, 0x0071	;  0x800071
 49e:	9f bf       	out	0x3f, r25	; 63
 4a0:	00 91 65 00 	lds	r16, 0x0065	;  0x800065
 4a4:	10 91 66 00 	lds	r17, 0x0066	;  0x800066
 4a8:	20 91 67 00 	lds	r18, 0x0067	;  0x800067
 4ac:	30 91 68 00 	lds	r19, 0x0068	;  0x800068
 4b0:	40 1b       	sub	r20, r16
 4b2:	51 0b       	sbc	r21, r17
 4b4:	62 0b       	sbc	r22, r18
 4b6:	73 0b       	sbc	r23, r19
 4b8:	42 33       	cpi	r20, 0x32	; 50
 4ba:	51 05       	cpc	r21, r1
 4bc:	61 05       	cpc	r22, r1
 4be:	71 05       	cpc	r23, r1
 4c0:	08 f4       	brcc	.+2      	;  0x4c4
 4c2:	8f cf       	rjmp	.-226    	;  0x3e2
 4c4:	80 93 63 00 	sts	0x0063, r24	;  0x800063
 4c8:	8c cf       	rjmp	.-232    	;  0x3e2
 4ca:	c0 93 60 00 	sts	0x0060, r28	;  0x800060
 4ce:	49 cf       	rjmp	.-366    	;  0x362
 4d0:	e2 e6       	ldi	r30, 0x62	; 98
 4d2:	f0 e0       	ldi	r31, 0x00	; 0
 4d4:	10 82       	st	Z, r1
 4d6:	81 e0       	ldi	r24, 0x01	; 1
 4d8:	81 83       	std	Z+1, r24	; 0x01
 4da:	82 83       	std	Z+2, r24	; 0x02
 4dc:	08 95       	ret
 4de:	ee 0f       	add	r30, r30
 4e0:	ff 1f       	adc	r31, r31
 4e2:	05 90       	lpm	r0, Z+
 4e4:	f4 91       	lpm	r31, Z
 4e6:	e0 2d       	mov	r30, r0
 4e8:	09 94       	ijmp
 4ea:	f8 94       	cli
 4ec:	ff cf       	rjmp	.-2      	;  0x4ec
 4ee:	01 00       	.word	0x0001	; ????
