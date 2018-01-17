$PBExportHeader$u_cst_inh313_l2.sru
forward
global type u_cst_inh313_l2 from u_cst_inh313_l1
end type
end forward

global type u_cst_inh313_l2 from u_cst_inh313_l1
string tag = "L1L2"
boolean border = true
end type
global u_cst_inh313_l2 u_cst_inh313_l2

on u_cst_inh313_l2.create
call super::create
end on

on u_cst_inh313_l2.destroy
call super::destroy
end on

type st_describe from u_cst_inh313_l1`st_describe within u_cst_inh313_l2
end type

