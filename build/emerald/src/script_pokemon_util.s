@ Generated by gcc 2.9-arm-000512 for Thumb/elf
	.code	16
.gcc2_compiled.:
.text
	.align	2, 0
	.globl	HealPlayerParty
	.type	 HealPlayerParty,function
	.thumb_func
HealPlayerParty:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x4
	mov	r0, #0x0
	mov	r8, r0
	ldr	r0, .L13
	ldrb	r0, [r0]
	cmp	r8, r0
	bcs	.L4	@cond_branch
	ldr	r1, .L13+0x4
	mov	sl, r1
	mov	r6, sp
.L6:
	mov	r0, #0x64
	mov	r4, r8
	mul	r4, r4, r0
	add	r4, r4, sl
	add	r0, r4, #0
	mov	r1, #0x3a
	bl	GetMonData
	lsl	r1, r0, #0x10
	strb	r0, [r6]
	lsr	r1, r1, #0x18
	strb	r1, [r6, #0x1]
	add	r0, r4, #0
	mov	r1, #0x39
	mov	r2, sp
	bl	SetMonData
	add	r0, r4, #0
	mov	r1, #0x15
	bl	GetMonData
	lsl	r0, r0, #0x18
	lsr	r7, r0, #0x18
	mov	r5, #0x0
	mov	r1, #0x1
	add	r1, r1, r8
	mov	r9, r1
.L10:
	add	r1, r5, #0
	add	r1, r1, #0xd
	add	r0, r4, #0
	bl	GetMonData
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	add	r1, r7, #0
	add	r2, r5, #0
	bl	CalculatePPWithBonus
	strb	r0, [r6]
	add	r1, r5, #0
	add	r1, r1, #0x11
	add	r0, r4, #0
	mov	r2, sp
	bl	SetMonData
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0x3
	bls	.L10	@cond_branch
	mov	r0, #0x0
	strb	r0, [r6]
	strb	r0, [r6, #0x1]
	strb	r0, [r6, #0x2]
	strb	r0, [r6, #0x3]
	mov	r1, #0x64
	mov	r0, r8
	mul	r0, r0, r1
	add	r0, r0, sl
	mov	r1, #0x37
	mov	r2, sp
	bl	SetMonData
	mov	r1, r9
	lsl	r0, r1, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	ldr	r0, .L13
	ldrb	r0, [r0]
	cmp	r8, r0
	bcc	.L6	@cond_branch
.L4:
	add	sp, sp, #0x4
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L14:
	.align	2, 0
.L13:
	.word	gPlayerPartyCount
	.word	gPlayerParty
.Lfe1:
	.size	 HealPlayerParty,.Lfe1-HealPlayerParty
	.align	2, 0
	.globl	ScriptGiveMon
	.type	 ScriptGiveMon,function
	.thumb_func
ScriptGiveMon:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r9
	mov	r6, r8
	push	{r6, r7}
	add	sp, sp, #-0x80
	add	r4, r0, #0
	str	r3, [sp, #0x7c]
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	lsl	r1, r1, #0x18
	lsr	r5, r1, #0x18
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	r9, r2
	add	r0, r4, #0
	bl	GetFormIdFromFormSpeciesId
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	mov	r8, r0
	add	r0, r4, #0
	mov	r1, #0x0
	bl	GetFormSpeciesId
	lsl	r0, r0, #0x10
	lsr	r7, r0, #0x10
	mov	r0, #0x0
	bl	getWildLevel
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	bl	CreateWonderTradePokemon
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	bl	WonderTradeGetFirstStage
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	add	r0, r4, #0
	add	r1, r5, #0
	bl	WonderTradeGetEvolvedForm
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
	cmp	r5, #0x1
	beq	.L16	@cond_branch
	add	r6, r5, #0
	b	.L17
.L16:
	add	r0, r4, #0
	add	r1, r6, #0
	bl	WonderTradeGetEvolvedForm
	lsl	r0, r0, #0x10
	lsr	r1, r0, #0x10
.L17:
	cmp	r7, #0x97
	beq	.L18	@cond_branch
	add	r4, sp, #0x18
	mov	r0, #0x0
	str	r0, [sp]
	str	r0, [sp, #0x4]
	str	r0, [sp, #0x8]
	str	r0, [sp, #0xc]
	mov	r0, r8
	str	r0, [sp, #0x10]
	add	r0, r4, #0
	add	r1, r7, #0
	add	r2, r6, #0
	mov	r3, #0x20
	bl	CreateMon
	b	.L19
.L18:
	add	r4, sp, #0x18
	mov	r0, #0x0
	str	r0, [sp]
	str	r0, [sp, #0x4]
	str	r0, [sp, #0x8]
	str	r0, [sp, #0xc]
	mov	r2, r8
	str	r2, [sp, #0x10]
	add	r0, r4, #0
	add	r2, r6, #0
	mov	r3, #0x20
	bl	CreateMon
.L19:
	add	r0, sp, #0x14
	mov	r1, r9
	strb	r1, [r0]
	add	r1, r0, #0
	mov	r2, r9
	lsr	r0, r2, #0x8
	strb	r0, [r1, #0x1]
	add	r5, r4, #0
	add	r0, r5, #0
	mov	r1, #0xc
	add	r2, sp, #0x14
	bl	SetMonData
	ldr	r0, [sp, #0x7c]
	cmp	r0, #0x3
	beq	.L20	@cond_branch
	add	r2, sp, #0x7c
	add	r0, r5, #0
	mov	r1, #0x2e
	bl	SetMonData
.L20:
	add	r0, r4, #0
	bl	GiveMonToPlayer
	lsl	r0, r0, #0x18
	lsr	r4, r0, #0x18
	add	r0, r7, #0
	bl	SpeciesToNationalPokedexNum
	lsl	r0, r0, #0x10
	lsr	r5, r0, #0x10
	cmp	r4, #0x1
	bgt	.L21	@cond_branch
	cmp	r4, #0
	blt	.L21	@cond_branch
	add	r0, r5, #0
	mov	r1, #0x2
	bl	GetSetPokedexFlag
	add	r0, r5, #0
	mov	r1, #0x3
	bl	GetSetPokedexFlag
.L21:
	add	r0, r4, #0
	add	sp, sp, #0x80
	pop	{r3, r4}
	mov	r8, r3
	mov	r9, r4
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe2:
	.size	 ScriptGiveMon,.Lfe2-ScriptGiveMon
	.align	2, 0
	.globl	ScriptGiveEgg
	.type	 ScriptGiveEgg,function
	.thumb_func
ScriptGiveEgg:
	push	{lr}
	add	sp, sp, #-0x68
	add	r1, r0, #0
	lsl	r1, r1, #0x10
	lsr	r1, r1, #0x10
	mov	r0, sp
	mov	r2, #0x1
	bl	CreateEgg
	add	r2, sp, #0x64
	mov	r0, #0x1
	strb	r0, [r2]
	mov	r0, sp
	mov	r1, #0x2d
	bl	SetMonData
	mov	r0, sp
	bl	GiveMonToPlayer
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	sp, sp, #0x68
	pop	{r1}
	bx	r1
.Lfe3:
	.size	 ScriptGiveEgg,.Lfe3-ScriptGiveEgg
	.align	2, 0
	.globl	HasEnoughMonsForDoubleBattle
	.type	 HasEnoughMonsForDoubleBattle,function
	.thumb_func
HasEnoughMonsForDoubleBattle:
	push	{lr}
	bl	GetMonsStateToDoubles
	lsl	r0, r0, #0x18
	lsr	r1, r0, #0x18
	cmp	r1, #0x1
	beq	.L30	@cond_branch
	cmp	r1, #0x1
	bgt	.L34	@cond_branch
	cmp	r1, #0
	beq	.L31	@cond_branch
	b	.L28
.L34:
	cmp	r1, #0x2
	bne	.L28	@cond_branch
.L30:
.L31:
	ldr	r0, .L35
	strh	r1, [r0]
.L28:
	pop	{r0}
	bx	r0
.L36:
	.align	2, 0
.L35:
	.word	gSpecialVar_Result
.Lfe4:
	.size	 HasEnoughMonsForDoubleBattle,.Lfe4-HasEnoughMonsForDoubleBattle
	.align	2, 0
	.type	 CheckPartyMonHasHeldItem,function
	.thumb_func
CheckPartyMonHasHeldItem:
	push	{r4, r5, r6, r7, lr}
	lsl	r0, r0, #0x10
	lsr	r6, r0, #0x10
	mov	r5, #0x0
	ldr	r7, .L45
.L41:
	mov	r0, #0x64
	mov	r1, r5
	mul	r1, r1, r0
	ldr	r0, .L45+0x4
	add	r4, r1, r0
	add	r0, r4, #0
	mov	r1, #0x41
	bl	GetMonData
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	cmp	r0, #0
	beq	.L40	@cond_branch
	cmp	r0, r7
	beq	.L40	@cond_branch
	add	r0, r4, #0
	mov	r1, #0xc
	bl	GetMonData
	cmp	r0, r6
	bne	.L40	@cond_branch
	mov	r0, #0x1
	b	.L44
.L46:
	.align	2, 0
.L45:
	.word	0x4b7
	.word	gPlayerParty
.L40:
	add	r5, r5, #0x1
	cmp	r5, #0x5
	ble	.L41	@cond_branch
	mov	r0, #0x0
.L44:
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe5:
	.size	 CheckPartyMonHasHeldItem,.Lfe5-CheckPartyMonHasHeldItem
	.align	2, 0
	.globl	DoesPartyHaveEnigmaBerry
	.type	 DoesPartyHaveEnigmaBerry,function
	.thumb_func
DoesPartyHaveEnigmaBerry:
	push	{r4, lr}
	mov	r0, #0xcd
	bl	CheckPartyMonHasHeldItem
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	add	r4, r0, #0
	cmp	r4, #0x1
	bne	.L48	@cond_branch
	mov	r0, #0xcd
	bl	ItemIdToBerryType
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	ldr	r1, .L49
	bl	GetBerryNameByBerryType
.L48:
	add	r0, r4, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L50:
	.align	2, 0
.L49:
	.word	gStringVar1
.Lfe6:
	.size	 DoesPartyHaveEnigmaBerry,.Lfe6-DoesPartyHaveEnigmaBerry
	.align	2, 0
	.globl	CreateScriptedWildMon
	.type	 CreateScriptedWildMon,function
	.thumb_func
CreateScriptedWildMon:
	push	{r4, r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	add	sp, sp, #-0x18
	add	r4, r0, #0
	add	r5, r1, #0
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r7, r2, #0x10
	lsr	r6, r7, #0x10
	bl	ZeroEnemyPartyMons
	ldr	r0, .L53
	mov	r8, r0
	mov	r0, #0x0
	str	r0, [sp]
	str	r0, [sp, #0x4]
	str	r0, [sp, #0x8]
	str	r0, [sp, #0xc]
	str	r0, [sp, #0x10]
	mov	r0, r8
	add	r1, r4, #0
	add	r2, r5, #0
	mov	r3, #0x20
	bl	CreateMon
	cmp	r6, #0
	beq	.L52	@cond_branch
	add	r0, sp, #0x14
	strb	r6, [r0]
	add	r1, r0, #0
	lsr	r0, r7, #0x18
	strb	r0, [r1, #0x1]
	mov	r0, r8
	mov	r1, #0xc
	add	r2, sp, #0x14
	bl	SetMonData
.L52:
	add	sp, sp, #0x18
	pop	{r3}
	mov	r8, r3
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L54:
	.align	2, 0
.L53:
	.word	gEnemyParty
.Lfe7:
	.size	 CreateScriptedWildMon,.Lfe7-CreateScriptedWildMon
	.align	2, 0
	.globl	CreateScriptedDoubleWildMon
	.type	 CreateScriptedDoubleWildMon,function
	.thumb_func
CreateScriptedDoubleWildMon:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x28
	add	r4, r0, #0
	add	r5, r1, #0
	ldr	r0, [sp, #0x48]
	ldr	r1, [sp, #0x4c]
	lsl	r4, r4, #0x10
	lsr	r4, r4, #0x10
	lsl	r5, r5, #0x18
	lsr	r5, r5, #0x18
	lsl	r2, r2, #0x10
	mov	r9, r2
	lsr	r2, r2, #0x10
	mov	r8, r2
	lsl	r3, r3, #0x10
	lsr	r3, r3, #0x10
	str	r3, [sp, #0x1c]
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	str	r0, [sp, #0x20]
	lsl	r1, r1, #0x10
	str	r1, [sp, #0x24]
	lsr	r1, r1, #0x10
	mov	sl, r1
	bl	ZeroEnemyPartyMons
	ldr	r7, .L58
	mov	r6, #0x0
	str	r6, [sp]
	str	r6, [sp, #0x4]
	str	r6, [sp, #0x8]
	str	r6, [sp, #0xc]
	str	r6, [sp, #0x10]
	add	r0, r7, #0
	add	r1, r4, #0
	add	r2, r5, #0
	mov	r3, #0x20
	bl	CreateMon
	mov	r0, r8
	cmp	r0, #0
	beq	.L56	@cond_branch
	add	r0, sp, #0x14
	mov	r1, r8
	strb	r1, [r0]
	add	r1, r0, #0
	mov	r2, r9
	lsr	r0, r2, #0x18
	strb	r0, [r1, #0x1]
	add	r0, r7, #0
	mov	r1, #0xc
	add	r2, sp, #0x14
	bl	SetMonData
.L56:
	mov	r0, #0x96
	lsl	r0, r0, #0x1
	add	r4, r7, r0
	str	r6, [sp]
	str	r6, [sp, #0x4]
	str	r6, [sp, #0x8]
	str	r6, [sp, #0xc]
	str	r6, [sp, #0x10]
	add	r0, r4, #0
	ldr	r1, [sp, #0x1c]
	ldr	r2, [sp, #0x20]
	mov	r3, #0x20
	bl	CreateMon
	mov	r1, sl
	cmp	r1, #0
	beq	.L57	@cond_branch
	add	r2, sp, #0x18
	strb	r1, [r2]
	ldr	r1, [sp, #0x24]
	lsr	r0, r1, #0x18
	strb	r0, [r2, #0x1]
	add	r0, r4, #0
	mov	r1, #0xc
	bl	SetMonData
.L57:
	add	sp, sp, #0x28
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L59:
	.align	2, 0
.L58:
	.word	gEnemyParty
.Lfe8:
	.size	 CreateScriptedDoubleWildMon,.Lfe8-CreateScriptedDoubleWildMon
	.align	2, 0
	.globl	ScriptSetMonMoveSlot
	.type	 ScriptSetMonMoveSlot,function
	.thumb_func
ScriptSetMonMoveSlot:
	push	{r4, lr}
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
	lsl	r1, r1, #0x10
	lsr	r4, r1, #0x10
	lsl	r2, r2, #0x18
	lsr	r2, r2, #0x18
	cmp	r3, #0x6
	bls	.L61	@cond_branch
	ldr	r0, .L62
	ldrb	r0, [r0]
	sub	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
.L61:
	mov	r0, #0x64
	mul	r0, r0, r3
	ldr	r1, .L62+0x4
	add	r0, r0, r1
	add	r1, r4, #0
	bl	SetMonMoveSlot
	pop	{r4}
	pop	{r0}
	bx	r0
.L63:
	.align	2, 0
.L62:
	.word	gPlayerPartyCount
	.word	gPlayerParty
.Lfe9:
	.size	 ScriptSetMonMoveSlot,.Lfe9-ScriptSetMonMoveSlot
	.align	2, 0
	.globl	ChooseHalfPartyForBattle
	.type	 ChooseHalfPartyForBattle,function
	.thumb_func
ChooseHalfPartyForBattle:
	push	{lr}
	ldr	r0, .L65
	ldr	r1, .L65+0x4
	str	r1, [r0, #0x8]
	ldr	r0, .L65+0x8
	mov	r1, #0x9
	bl	VarSet
	mov	r0, #0x0
	bl	InitChooseHalfPartyForBattle
	pop	{r0}
	bx	r0
.L66:
	.align	2, 0
.L65:
	.word	gMain
	.word	CB2_ReturnFromChooseHalfParty
	.word	0x40cf
.Lfe10:
	.size	 ChooseHalfPartyForBattle,.Lfe10-ChooseHalfPartyForBattle
	.align	2, 0
	.type	 CB2_ReturnFromChooseHalfParty,function
	.thumb_func
CB2_ReturnFromChooseHalfParty:
	push	{lr}
	ldr	r0, .L72
	ldrb	r1, [r0]
	cmp	r1, #0
	bne	.L70	@cond_branch
	ldr	r0, .L72+0x4
	strh	r1, [r0]
	b	.L68
.L73:
	.align	2, 0
.L72:
	.word	gSelectedOrderFromParty
	.word	gSpecialVar_Result
.L70:
	ldr	r1, .L74
	mov	r0, #0x1
	strh	r0, [r1]
.L68:
	ldr	r0, .L74+0x4
	bl	SetMainCallback2
	pop	{r0}
	bx	r0
.L75:
	.align	2, 0
.L74:
	.word	gSpecialVar_Result
	.word	CB2_ReturnToFieldContinueScriptPlayMapMusic
.Lfe11:
	.size	 CB2_ReturnFromChooseHalfParty,.Lfe11-CB2_ReturnFromChooseHalfParty
	.align	2, 0
	.globl	ChoosePartyForBattleFrontier
	.type	 ChoosePartyForBattleFrontier,function
	.thumb_func
ChoosePartyForBattleFrontier:
	push	{lr}
	ldr	r1, .L77
	ldr	r0, .L77+0x4
	str	r0, [r1, #0x8]
	ldr	r0, .L77+0x8
	ldrb	r0, [r0]
	add	r0, r0, #0x1
	lsl	r0, r0, #0x18
	lsr	r0, r0, #0x18
	bl	InitChooseHalfPartyForBattle
	pop	{r0}
	bx	r0
.L78:
	.align	2, 0
.L77:
	.word	gMain
	.word	CB2_ReturnFromChooseBattleFrontierParty
	.word	gSpecialVar_0x8004
.Lfe12:
	.size	 ChoosePartyForBattleFrontier,.Lfe12-ChoosePartyForBattleFrontier
	.align	2, 0
	.type	 CB2_ReturnFromChooseBattleFrontierParty,function
	.thumb_func
CB2_ReturnFromChooseBattleFrontierParty:
	push	{lr}
	ldr	r0, .L84
	ldrb	r1, [r0]
	cmp	r1, #0
	bne	.L82	@cond_branch
	ldr	r0, .L84+0x4
	strh	r1, [r0]
	b	.L80
.L85:
	.align	2, 0
.L84:
	.word	gSelectedOrderFromParty
	.word	gSpecialVar_Result
.L82:
	ldr	r1, .L86
	mov	r0, #0x1
	strh	r0, [r1]
.L80:
	ldr	r0, .L86+0x4
	bl	SetMainCallback2
	pop	{r0}
	bx	r0
.L87:
	.align	2, 0
.L86:
	.word	gSpecialVar_Result
	.word	CB2_ReturnToFieldContinueScriptPlayMapMusic
.Lfe13:
	.size	 CB2_ReturnFromChooseBattleFrontierParty,.Lfe13-CB2_ReturnFromChooseBattleFrontierParty
	.align	2, 0
	.globl	ReducePlayerPartyToSelectedMons
	.type	 ReducePlayerPartyToSelectedMons,function
	.thumb_func
ReducePlayerPartyToSelectedMons:
	push	{r4, r5, r6, r7, lr}
	add	sp, sp, #-0x198
	add	r0, sp, #0x190
	mov	r1, #0x0
	str	r1, [r0]
	ldr	r2, .L100
	mov	r1, sp
	bl	CpuSet
	mov	r5, #0x0
	mov	r7, #0x64
	ldr	r6, .L100+0x4
	mov	r4, sp
.L92:
	ldr	r0, .L100+0x8
	add	r1, r5, r0
	ldrb	r0, [r1]
	cmp	r0, #0
	beq	.L91	@cond_branch
	sub	r0, r0, #0x1
	mov	r1, r0
	mul	r1, r1, r7
	add	r1, r1, r6
	add	r0, r4, #0
	mov	r2, #0x64
	bl	memcpy
.L91:
	add	r4, r4, #0x64
	add	r5, r5, #0x1
	cmp	r5, #0x3
	ble	.L92	@cond_branch
	add	r0, sp, #0x194
	mov	r1, #0x0
	str	r1, [r0]
	ldr	r4, .L100+0x4
	ldr	r2, .L100+0xc
	add	r1, r4, #0
	bl	CpuSet
	mov	r5, sp
	add	r6, sp, #0x12c
.L98:
	add	r0, r4, #0
	add	r1, r5, #0
	mov	r2, #0x64
	bl	memcpy
	add	r5, r5, #0x64
	add	r4, r4, #0x64
	cmp	r5, r6
	ble	.L98	@cond_branch
	bl	CalculatePlayerPartyCount
	add	sp, sp, #0x198
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L101:
	.align	2, 0
.L100:
	.word	0x5000064
	.word	gPlayerParty
	.word	gSelectedOrderFromParty
	.word	0x5000096
.Lfe14:
	.size	 ReducePlayerPartyToSelectedMons,.Lfe14-ReducePlayerPartyToSelectedMons
	.align	2, 0
	.globl	ScriptGiveCustomMon
	.type	 ScriptGiveCustomMon,function
	.thumb_func
ScriptGiveCustomMon:
	push	{r4, r5, r6, r7, lr}
	mov	r7, sl
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	add	sp, sp, #-0x78
	ldr	r5, [sp, #0x98]
	ldr	r6, [sp, #0x9c]
	ldr	r4, [sp, #0xac]
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r8, r0
	lsl	r1, r1, #0x18
	lsr	r7, r1, #0x18
	lsl	r2, r2, #0x10
	lsr	r2, r2, #0x10
	mov	sl, r2
	mov	r1, sp
	add	r1, r1, #0x71
	strb	r3, [r1]
	lsl	r5, r5, #0x18
	lsr	r3, r5, #0x18
	add	r0, sp, #0x70
	strb	r6, [r0]
	lsl	r4, r4, #0x18
	lsr	r5, r4, #0x18
	mov	r6, #0x0
	mov	r9, r0
	cmp	r3, #0x19
	beq	.L104	@cond_branch
	cmp	r3, #0xff
	bne	.L103	@cond_branch
.L104:
	bl	Random
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x19
	bl	__umodsi3
	lsl	r0, r0, #0x18
	lsr	r3, r0, #0x18
.L103:
	cmp	r5, #0
	beq	.L105	@cond_branch
	add	r4, sp, #0xc
	add	r0, r4, #0
	mov	r1, r8
	add	r2, r7, #0
	bl	CreateShinyMonWithNature
	b	.L145
.L105:
	add	r4, sp, #0xc
	str	r3, [sp]
	str	r5, [sp, #0x4]
	add	r0, r4, #0
	mov	r1, r8
	add	r2, r7, #0
	mov	r3, #0x20
	bl	CreateMonWithNature
.L145:
	add	r7, r4, #0
	mov	r5, #0x0
	mov	r0, sl
	lsr	r0, r0, #0x8
	str	r0, [sp, #0x74]
.L110:
	ldr	r1, [sp, #0xa0]
	add	r2, r1, r5
	ldrb	r0, [r2]
	cmp	r0, #0xff
	beq	.L111	@cond_branch
	add	r0, r6, r0
	mov	r1, #0xff
	lsl	r1, r1, #0x1
	cmp	r0, r1
	ble	.L112	@cond_branch
	mov	r0, #0xfe
	sub	r0, r0, r6
	strb	r0, [r2]
.L112:
	ldrb	r0, [r2]
	add	r0, r6, r0
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
	add	r1, r5, #0
	add	r1, r1, #0x1a
	add	r0, r7, #0
	bl	SetMonData
.L111:
	ldr	r4, [sp, #0xa4]
	add	r2, r4, r5
	ldrb	r0, [r2]
	cmp	r0, #0x20
	beq	.L109	@cond_branch
	cmp	r0, #0xff
	beq	.L109	@cond_branch
	add	r1, r5, #0
	add	r1, r1, #0x27
	add	r0, r7, #0
	bl	SetMonData
.L109:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0x5
	bls	.L110	@cond_branch
	add	r0, r7, #0
	bl	CalculateMonStats
	mov	r5, #0x0
	ldr	r4, .L146
.L118:
	lsl	r0, r5, #0x1
	ldr	r1, [sp, #0xa8]
	add	r0, r0, r1
	ldrh	r1, [r0]
	cmp	r1, #0
	beq	.L117	@cond_branch
	cmp	r1, #0xff
	beq	.L117	@cond_branch
	cmp	r1, r4
	bhi	.L117	@cond_branch
	add	r0, r7, #0
	add	r2, r5, #0
	bl	SetMonMoveSlot
.L117:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
	cmp	r5, #0x3
	bls	.L118	@cond_branch
	mov	r2, r9
	ldrb	r1, [r2]
	cmp	r1, #0xff
	beq	.L123	@cond_branch
	mov	r0, r8
	mov	r2, #0x0
	bl	GetAbilityBySpecies
	lsl	r0, r0, #0x10
	cmp	r0, #0
	bne	.L122	@cond_branch
.L123:
	mov	r4, r9
.L124:
	bl	Random
	lsl	r0, r0, #0x10
	lsr	r0, r0, #0x10
	mov	r1, #0x3
	bl	__umodsi3
	strb	r0, [r4]
	mov	r0, r8
	ldrb	r1, [r4]
	mov	r2, #0x0
	bl	GetAbilityBySpecies
	lsl	r0, r0, #0x10
	cmp	r0, #0
	beq	.L124	@cond_branch
.L122:
	add	r0, r7, #0
	mov	r1, #0x2e
	mov	r2, r9
	bl	SetMonData
	mov	r4, #0x71
	add	r4, r4, sp
	ldrb	r0, [r4]
	cmp	r0, #0x1b
	bhi	.L129	@cond_branch
	add	r0, r7, #0
	mov	r1, #0x26
	mov	r2, sp
	add	r2, r2, #0x71
	bl	SetMonData
.L129:
	add	r0, sp, #0x8
	mov	r1, sl
	strb	r1, [r0]
	add	r2, sp, #0x74
	ldrb	r2, [r2]
	strb	r2, [r0, #0x1]
	add	r0, r7, #0
	mov	r1, #0xc
	add	r2, sp, #0x8
	bl	SetMonData
	ldr	r4, .L146+0x4
	ldr	r2, [r4]
	add	r0, r7, #0
	mov	r1, #0x7
	bl	SetMonData
	ldr	r2, [r4]
	add	r2, r2, #0x8
	add	r0, r7, #0
	mov	r1, #0x31
	bl	SetMonData
	mov	r5, #0x0
	b	.L130
.L147:
	.align	2, 0
.L146:
	.word	0x2f3
	.word	gSaveBlock2Ptr
.L132:
	add	r0, r5, #0x1
	lsl	r0, r0, #0x18
	lsr	r5, r0, #0x18
.L130:
	cmp	r5, #0x5
	bhi	.L144	@cond_branch
	mov	r0, #0x64
	mov	r1, r5
	mul	r1, r1, r0
	ldr	r0, .L148
	add	r4, r1, r0
	add	r0, r4, #0
	mov	r1, #0xb
	mov	r2, #0x0
	bl	GetMonData
	cmp	r0, #0
	bne	.L132	@cond_branch
	mov	r6, #0x0
	add	r0, r4, #0
	add	r1, r7, #0
	mov	r2, #0x64
	bl	CopyMon
	ldr	r1, .L148+0x4
	add	r0, r5, #0x1
	strb	r0, [r1]
	b	.L137
.L149:
	.align	2, 0
.L148:
	.word	gPlayerParty
	.word	gPlayerPartyCount
.L144:
	add	r0, r7, #0
	bl	SendMonToPC
	lsl	r0, r0, #0x18
	lsr	r6, r0, #0x18
.L137:
	mov	r0, r8
	bl	SpeciesToNationalPokedexNum
	lsl	r0, r0, #0x10
	lsr	r4, r0, #0x10
	cmp	r6, #0
	blt	.L138	@cond_branch
	cmp	r6, #0x1
	bgt	.L138	@cond_branch
	add	r0, r4, #0
	mov	r1, #0x2
	bl	GetSetPokedexFlag
	add	r0, r4, #0
	mov	r1, #0x3
	bl	GetSetPokedexFlag
.L138:
	add	r0, r6, #0
	add	sp, sp, #0x78
	pop	{r3, r4, r5}
	mov	r8, r3
	mov	r9, r4
	mov	sl, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.Lfe15:
	.size	 ScriptGiveCustomMon,.Lfe15-ScriptGiveCustomMon
.text
	.align	2, 0

