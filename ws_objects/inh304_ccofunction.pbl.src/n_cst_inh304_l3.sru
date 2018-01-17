$PBExportHeader$n_cst_inh304_l3.sru
forward
global type n_cst_inh304_l3 from n_cst_inh304_l2
end type
end forward

global type n_cst_inh304_l3 from n_cst_inh304_l2
end type

forward prototypes
public subroutine uf_point_1 ()
public subroutine uf_point_4 (string as_type, string as_flag)
public subroutine uf_point_5 ()
end prototypes

public subroutine uf_point_1 ();If NOT IsValid(gw_inh304w01_ccofunction) Then Return

gw_inh304w01_ccofunction.Wf_OutPut("Information : Execute n_cst_inh303_L3 Function uf_point_1() Script.", False)
end subroutine

public subroutine uf_point_4 (string as_type, string as_flag);If NOT IsValid(gw_inh304w01_ccofunction) Then Return

gw_inh304w01_ccofunction.Wf_OutPut("Information : Execute n_cst_inh303_L3 Function uf_point_4(String as_Type, String as_Flag) Script.", False)
end subroutine

public subroutine uf_point_5 ();If NOT IsValid(gw_inh304w01_ccofunction) Then Return

gw_inh304w01_ccofunction.Wf_OutPut("Information : Execute n_cst_inh303_L3 Function uf_point_5() Script.", False)
end subroutine

on n_cst_inh304_l3.create
call super::create
end on

on n_cst_inh304_l3.destroy
call super::destroy
end on

