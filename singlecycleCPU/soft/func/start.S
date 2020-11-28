#include <asm.h>
#include <regdef.h>
#include <cpu_cde.h>

#define TEST_NUM 89


##s0, number
##s1, number adress 
##s2, exception use
##s3, score
##s4, exception pc
	.set	noreorder
	.globl	_start
	.globl	start
	.globl	__main
_start:
start:
    li    t0, 0xffffffff
    addiu t0, zero, 0xffff
	b	locate
	nop

##avoid "j locate" not taken
    lui   t0, 0x8000
    addiu t1, t1, 1
    or    t2, t0, zero
    addu  t3, t5, t6
    lw    t4, 0(t0)
    nop

##avoid cpu run error
.org 0x0ec
    lui   t0, 0x8000
    addiu t1, t1, 1
    or    t2, t0, zero
    addu  t3, t5, t6
    lw    t4, 0(t0)
.org 0x100
test_finish:
    addiu t0, t0, 1
    li t1, 0xff
    LI (t2, UART_ADDR)
    sw t1, 0x0(t2)
    b test_finish
    nop
##avoid cpu run error
    lui   t0, 0x8000
    addiu t1, t1, 1
    or    t2, t0, zero
    addu  t3, t5, t6
    lw    t4, 0(t0)
/*
 *  exception handle
 */
.org 0x380
1:  
    mfhi k0
    mflo k1
    li  k0, 0x800d0000
    lw  k1, 0x0(k0)
    li  k0, 0x01 # syscall
    beq k1, k0, syscall_ex
    nop
    li  k0, 0x02 # break
    beq k1, k0, break_ex
    nop
    li  k0, 0x03 # overflow
    beq k1, k0, overflow_ex
    nop
    li  k0, 0x04 # adel(load)
    beq k1, k0, adel_load_ex
    nop
    li  k0, 0x05 # ades
    beq k1, k0, ades_ex
    nop
    li  k0, 0x06 # adel(inst fetch)
    beq k1, k0, adel_if_ex
    nop
    li  k0, 0x07 # reserved inst
    beq k1, k0, reserved_inst_ex
    nop
    li  k0, 0x08 # int
    beq k1, k0, int_ex
    nop

syscall_ex:
    addu  s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2
    li   k1, 0x20 # 010_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02
    li   k1, 0x02
    bne  k0, k1, ex_finish
    nop
    lui  s2, 0x1
    b ex_finish
    nop

break_ex:
    addu  s2, zero, zero
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2
    li   k1, 0x24 # 010_0100
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li   k1, 0x02 # exl = 1
    bne  k0, k1, ex_finish
    nop
    lui  s2, 0x2
    b ex_finish
    nop

overflow_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x30 # 011_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x3
    b ex_finish
    nop

adel_load_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x10 # 001_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x4
    b ex_finish
    nop

ades_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x14 # 001_0100
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x5
    b ex_finish
    nop

adel_if_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mtc0 s5, c0_epc
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x10 # 001_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x6
    b ex_finish
    nop

reserved_inst_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    mfc0 k0, c0_cause
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x28 # 010_1000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    lui s2, 0x7
    b ex_finish
    nop

int_ex:
    addu s2, zero, zero 
    mfc0 k0, c0_epc
    bne  k0, s4, ex_finish
    nop
    addiu k0, k0, 8
    mtc0  k0, c0_epc   //epc+8
    disable_trace_cmp_s
    mfc0 k0, c0_cause  //don't compare cause.bd
    enable_trace_cmp_s
    andi k0, k0, 0x7c # 6..2 exc code
    li   k1, 0x00 # 000_0000
    bne  k0, k1, ex_finish
    nop
    mfc0 k0, c0_status
    andi k0, k0, 0x02 # exl
    li k1, 0x02 # exl = 1
    bne k0, k1, ex_finish
    nop
    li   k0, 0xffffffff
    li   k1, 0x00000000
    mtc0 k0, c0_compare //clear compare
    mtc0 k1, c0_cause
    lui s2, 0x8
    b ex_ret
    nop

ex_finish:
    mfc0 k0,c0_cause
    lui k1,0x8000
    and k0,k0,k1
    mfc0 k1,c0_epc
    addiu k1,k1,0x4
    beq k0,zero, 1f
    nop
    addiu k1,k1,0x4
1:  
    mtc0  k1,c0_epc
    nop
    bne s2, zero, ex_ret
    nop
    lui s2, 0xffff
ex_ret:
    .set mips32
    eret
    .set mips1
    nop

locate:
	.set noreorder

    LI (a0, LED_RG1_ADDR)
    LI (a1, LED_RG0_ADDR)
    LI (s1, NUM_ADDR)

    LI (t1, 0x0002)
    LI (t2, 0x0001)
    lui s3, 0

    sw t1, 0(a0)
    sw t2, 0(a1)
    sw s3, 0(s1)

    lui s0, 0          ## initial run number

    la t1, kseg1_kseg0 #####
    li t2, 0x20000000  ###
    subu t9, t1, t2    #kseg1 -> kseg0
    jr t9              ###
    nop                #####
kseg1_kseg0:
inst_test:
    jal n1_lui_test    #lui
    nop
    jal wait_1s
    nop

    la t9, kseg0_kseg1 #####
    jr t9              #kseg0 -> kseg1
    nop                #####

kseg0_kseg1:
    jal n2_addu_test   #addu
    nop
    jal wait_1s
    nop
    jal n3_addiu_test  #addiu
    nop
    jal wait_1s
    nop
    jal n4_beq_test    #beq
    nop
    jal wait_1s
    nop
    jal n5_bne_test    #bne
    nop
    jal wait_1s
    nop
    jal n6_lw_test     #lw
    nop
    jal wait_1s
    nop
    jal n7_or_test     #or
    nop
    jal wait_1s
    nop
    jal n8_slt_test    #slt
    nop
    jal wait_1s
    nop
    jal n9_slti_test   #slti
    nop
    jal wait_1s
    nop
    jal n10_sltiu_test #sltiu
    nop
    jal wait_1s
    nop
    jal n11_sll_test   #sll
    nop
    jal wait_1s
    nop
    jal n12_sw_test    #sw
    nop
    jal wait_1s
    nop
    jal n13_j_test       #j
    nop
    jal wait_1s
    nop
    jal n14_jal_test     #jal
    nop
    jal wait_1s
    nop
    jal n15_jr_test      #jr
    nop
    jal wait_1s
    nop
    jal n16_beq_ds_test  #beq delay slot
    nop
    jal wait_1s
    nop
    jal n17_bne_ds_test  #bne delay slot
    nop
    jal wait_1s
    nop
    jal n18_j_ds_test    #j delay slot
    nop
    jal wait_1s
    nop
    jal n19_jal_ds_test  #jal delay slot
    nop
    jal wait_1s
    nop
    jal n20_jr_ds_test   #jr delay slot
    nop
    jal wait_1s
    nop
    jal n21_add_test   #add
    nop
    jal wait_1s
    nop
    jal n22_addi_test   #addi
    nop
    jal wait_1s
    nop
    jal n23_sub_test   #sub
    nop
    jal wait_1s
    nop
    jal n24_subu_test   #subu
    nop
    jal wait_1s
    nop
    jal n25_sltu_test   #sltu
    nop
    jal wait_1s
    nop
    jal n26_and_test   #and
    nop
    jal wait_1s
    nop
    jal n27_andi_test   #andi
    nop
    jal wait_1s
    nop
    jal n28_nor_test   #nor
    nop
    jal wait_1s
    nop
    jal n29_ori_test   #ori
    nop
    jal wait_1s
    nop
    jal n30_xor_test   #xor
    nop
    jal wait_1s
    nop
    jal n31_xori_test   #xori 
    nop
    jal wait_1s
    nop
    jal n32_sllv_test   #sllv
    nop
    jal wait_1s
    nop
    jal n33_sra_test   #sra
    nop
    jal wait_1s
    nop
    jal n34_srav_test   #srav
    nop
    jal wait_1s
    nop
    jal n35_srl_test   #srl
    nop
    jal wait_1s
    nop
    jal n36_srlv_test   #srlv
    nop
    jal wait_1s
    nop
    jal n37_bgez_test   #bgez
    nop
    jal wait_1s
    nop
    jal n38_bgtz_test   #bgtz
    nop
    jal wait_1s
    nop
    jal n39_blez_test   #blez
    nop
    jal wait_1s
    nop
    jal n40_bltz_test   #bltz
    nop
    jal wait_1s
    nop
    jal n41_bltzal_test   #bltzal
    nop
    jal wait_1s
    nop
    jal n42_bgezal_test   #bgezal
    nop
    jal wait_1s
    nop
    jal n43_jalr_test   #jalr
    nop
    jal wait_1s
    nop
    jal n44_div_test   #div
    nop
    jal wait_1s
    nop
    jal n45_divu_test   #divu
    nop
    jal wait_1s
    nop
    jal n46_mult_test   #mult
    nop
    jal wait_1s
    nop
    jal n47_multu_test   #multu
    nop
    jal wait_1s
    nop
    jal n48_mfhi_test   #mfhi
    nop
    jal wait_1s
    nop
    jal n49_mflo_test   #mflo
    nop
    jal wait_1s
    nop
    jal n50_mthi_test   #mthi
    nop
    jal wait_1s
    nop
    jal n51_mtlo_test   #mtlo
    nop
    jal wait_1s
    nop
    jal n52_bgez_ds_test   #bgez delay slot
    nop
    jal wait_1s
    nop
    jal n53_bgtz_ds_test   #bgtz delay slot
    nop
    jal wait_1s
    nop
    jal n54_blez_ds_test   #blez delay slot
    nop
    jal wait_1s
    nop
    jal n55_bltz_ds_test   #bltz delay slot
    nop
    jal wait_1s
    nop
    jal n56_bltzal_ds_test   #bltzal delay slot
    nop
    jal wait_1s
    nop
    jal n57_bgezal_ds_test   #bgezal delay slot
    nop
    jal wait_1s
    nop
    jal n58_jalr_ds_test   #jalr delay slot
    nop
    jal wait_1s
    nop
    jal n59_lb_test        #lb
    nop
    jal wait_1s
    nop
    jal n60_lbu_test       #lbu
    nop
    jal wait_1s
    nop
    jal n61_lh_test        #lh
    nop
    jal wait_1s
    nop
    jal n62_lhu_test       #lhu
    nop
    jal wait_1s
    nop
    jal n63_sb_test        #sb
    nop
    jal wait_1s
    nop
    jal n64_sh_test        #sh
    nop
    jal wait_1s
    nop
    jal n65_syscall_ex_test       #syscall
    nop
    jal wait_1s
    nop
    jal n66_break_ex_test       #break ex
    nop
    jal wait_1s
    nop
    jal n67_add_ov_ex_test      #add ov ex
    nop
    jal wait_1s
    nop
    jal n68_addi_ov_ex_test     #addi ov ex
    nop
    jal wait_1s
    nop
    jal n69_sub_ov_ex_test      #sub ov ex
    nop
    jal wait_1s
    nop
    jal n70_lw_adel_ex_test     #lw adel ex
    nop
    jal wait_1s
    nop
    jal n71_lh_adel_ex_test     #lh adel ex
    nop
    jal wait_1s
    nop
    jal n72_lhu_adel_ex_test    #lhu adel ex
    nop
    jal wait_1s
    nop
    jal n73_sw_ades_ex_test     #sw ades ex
    nop
    jal wait_1s
    nop
    jal n74_sh_ades_ex_test     #sh ades ex
    nop
    jal wait_1s
    nop
    jal n75_ft_adel_ex_test     #ft adel ex
    nop
    jal wait_1s
    nop
    jal n76_ri_ex_test          #ri ex
    nop
    jal wait_1s
    nop
    jal n77_soft_int_ex_test    #soft int ex
    nop
    jal wait_1s
    nop
    jal n78_beq_ds_ex_test      #beq ds ex
    nop
    jal wait_1s
    nop
    jal n79_bne_ds_ex_test      #bne ds ex
    nop
    jal wait_1s
    nop
    jal n80_bgez_ds_ex_test     #bgez ds ex
    nop
    jal wait_1s
    nop
    jal n81_bgtz_ds_ex_test     #bgtz ds ex
    nop
    jal wait_1s
    nop
    jal n82_blez_ds_ex_test     #blez ds ex
    nop
    jal wait_1s
    nop
    jal n83_bltz_ds_ex_test     #bltz ds ex
    nop
    jal wait_1s
    nop
    jal n84_bltzal_ds_ex_test   #bltzal ds ex
    nop
    jal wait_1s
    nop
    jal n85_bgezal_ds_ex_test   #bgezal ds ex
    nop
    jal wait_1s
    nop
    jal n86_j_ds_ex_test        #j ds ex
    nop
    jal wait_1s
    nop
    jal n87_jal_ds_ex_test      #jal ds ex
    nop
    jal wait_1s
    nop
    jal n88_jr_ds_ex_test       #jr ds ex
    nop
    jal wait_1s
    nop
    jal n89_jalr_ds_ex_test     #jalr ds ex
    nop
    jal wait_1s
    nop
###check io access
    LI  (a0, IO_SIMU_ADDR)
    LI  (t0, 0x1234)
    sw   t0, 0(a0)
    lw   t1, 0(a0)   //t1=0x12340000
    sll  t0, t0, 16
    bne  t0, t1, io_err
    nop

    LI  (t0, 0x56780000)
    sw   t0, 0(a0)
    srl  t0, t0, 16
    lw   t1, 0(a0)   //t1=0x5678
    bne  t0, t1, io_err
    nop
    b    test_end
    nop
io_err:
    addiu s0, s0, 1
    sw    s0, 0(s1)

test_end:
    LI  (s0, TEST_NUM)
    beq s0, s3, 1f
    nop

    LI (a0, LED_ADDR)
	LI (a1, LED_RG1_ADDR)
    LI (a2, LED_RG0_ADDR)
	
    LI (t1, 0x0002)
    
	sw zero, 0(a0)
    sw t1, 0(a1)
    sw t1, 0(a2)
    b  2f
    nop
1:
    LI (t1, 0x0001)
    LI (a0, LED_RG1_ADDR)
	LI (a1, LED_RG0_ADDR)
    sw t1, 0(a0)
    sw t1, 0(a1)

2:
	jal test_finish
    nop

wait_1s:
    LI (t0,SW_INTER_ADDR)
    LI (t1, 0xaaaa)

    #initial t3
    lw    t2, 0x0(t0)   #switch_interleave: {switch[7],1'b0, switch[6],1'b0...switch[0],1'b0}
    xor   t2, t2, t1
    sll   t3, t2, 9     #t3 = switch interleave << 9
    addiu t3, t3, 1

sub1:  
    addiu t3, t3, -1

    #select min{t3, switch_interleave}
    lw    t2, 0x0(t0)   #switch_interleave: {switch[7],1'b0, switch[6],1'b0...switch[0],1'b0}
    xor   t2, t2, t1
    sll   t2, t2, 9     #switch interleave << 9
    sltu  t4, t3, t2
    bnez  t4, 1f 
    nop
    addu  t3, t2, 0
1:
    bne   t3,zero, sub1
    nop
    jr ra
    nop
