$PBExportHeader$u_cst_inh312_l3.sru
forward
global type u_cst_inh312_l3 from u_cst_inh312_l2
end type
end forward

global type u_cst_inh312_l3 from u_cst_inh312_l2
string is_4 = "L3"
string is_6 = "L1L3"
string is_7 = "L2L3"
string is_8 = "L1L2L3"
integer ii_4 = 3
integer ii_6 = 13
integer ii_7 = 23
integer ii_8 = 123
decimal idec_4 = 3.00
decimal idec_6 = 13.0
decimal idec_7 = 23.00
decimal idec_8 = 123.0
boolean ib_4 = true
boolean ib_6 = false
boolean ib_7 = false
boolean ib_8 = true
datetime idt_4 = DateTime(Date("2333-01-01"), Time("00:00:00.000000"))
datetime idt_6 = DateTime(Date("2113-11-11"), Time("11:11:11.000000"))
datetime idt_7 = DateTime(Date("2223-01-01"), Time("00:00:00.000000"))
datetime idt_8 = DateTime(Date("2123-11-11"), Time("11:11:11.000000"))
string ia_06 = "ANY13"
string ia_08 = "ANY123"
end type
global u_cst_inh312_l3 u_cst_inh312_l3

on u_cst_inh312_l3.create
call super::create
end on

on u_cst_inh312_l3.destroy
call super::destroy
end on

event constructor;call super::constructor;ia_04 = "ANY3"
ia_07 = "ANY23"
end event

type st_describe from u_cst_inh312_l2`st_describe within u_cst_inh312_l3
end type

