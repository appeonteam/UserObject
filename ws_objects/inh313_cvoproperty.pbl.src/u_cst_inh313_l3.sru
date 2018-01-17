$PBExportHeader$u_cst_inh313_l3.sru
forward
global type u_cst_inh313_l3 from u_cst_inh313_l2
end type
end forward

global type u_cst_inh313_l3 from u_cst_inh313_l2
string tag = "L1L2L3"
end type
global u_cst_inh313_l3 u_cst_inh313_l3

on u_cst_inh313_l3.create
call super::create
end on

on u_cst_inh313_l3.destroy
call super::destroy
end on

type st_describe from u_cst_inh313_l2`st_describe within u_cst_inh313_l3
end type

