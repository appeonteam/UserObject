$PBExportHeader$n_inh307_l2_ds.sru
forward
global type n_inh307_l2_ds from n_inh307_l1_ds
end type
end forward

global type n_inh307_l2_ds from n_inh307_l1_ds
string is_3 = "L2"
string is_5 = "L1L2"
string is_7 = "L2"
string is_8 = "L1L2"
integer ii_3 = 2
integer ii_5 = 12
integer ii_7 = 2
integer ii_8 = 12
decimal idec_3 = 2.00
decimal idec_5 = 12.0
decimal idec_7 = 2.00
decimal idec_8 = 12.0
boolean ib_3 = true
boolean ib_5 = false
boolean ib_7 = true
boolean ib_8 = false
datetime idt_3 = DateTime(Date("2222-01-01"), Time("00:00:00.000000"))
datetime idt_5 = DateTime(Date("2121-11-11"), Time("11:11:11.000000"))
datetime idt_7 = DateTime(Date("2222-01-01"), Time("00:00:00.000000"))
datetime idt_8 = DateTime(Date("2121-11-11"), Time("11:11:11.000000"))
string ia_05 = "ANY12"
string ia_08 = "ANY12"
end type
global n_inh307_l2_ds n_inh307_l2_ds

on n_inh307_l2_ds.create
call super::create
end on

on n_inh307_l2_ds.destroy
call super::destroy
end on

event constructor;call super::constructor;ia_03 = "ANY2"
ia_07 = "ANY2"
end event

