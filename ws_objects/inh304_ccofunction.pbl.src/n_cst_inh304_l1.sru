$PBExportHeader$n_cst_inh304_l1.sru
forward
global type n_cst_inh304_l1 from nonvisualobject
end type
end forward

global type n_cst_inh304_l1 from nonvisualobject autoinstantiate
end type

type variables

end variables

forward prototypes
public subroutine uf_point_1 ()
public subroutine uf_point_2 ()
public subroutine uf_point_3 ()
public subroutine uf_point_4 ()
public subroutine uf_point_5 ()
end prototypes

public subroutine uf_point_1 ();If NOT IsValid(gw_inh304w01_ccofunction) Then Return

gw_inh304w01_ccofunction.Wf_OutPut("Information : Execute n_cst_inh303_L1 Function uf_point_1() Script.", False)
end subroutine

public subroutine uf_point_2 ();If NOT IsValid(gw_inh304w01_ccofunction) Then Return

gw_inh304w01_ccofunction.Wf_OutPut("Information : Execute n_cst_inh303_L1 Function uf_point_2() Script.", False)
end subroutine

public subroutine uf_point_3 ();If NOT IsValid(gw_inh304w01_ccofunction) Then Return

gw_inh304w01_ccofunction.Wf_OutPut("Information : Execute n_cst_inh303_L1 Function uf_point_3() Script.", False)
end subroutine

public subroutine uf_point_4 ();If NOT IsValid(gw_inh304w01_ccofunction) Then Return

gw_inh304w01_ccofunction.Wf_OutPut("Information : Execute n_cst_inh303_L1 Function uf_point_1() Script.", False)
end subroutine

public subroutine uf_point_5 ();If NOT IsValid(gw_inh304w01_ccofunction) Then Return

gw_inh304w01_ccofunction.Wf_OutPut("Information : Execute n_cst_inh303_L1 Function uf_point_5() Script.", False)
end subroutine

on n_cst_inh304_l1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

on n_cst_inh304_l1.create
call super::create
TriggerEvent( this, "constructor" )
end on

