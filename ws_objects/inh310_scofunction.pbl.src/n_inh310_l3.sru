$PBExportHeader$n_inh310_l3.sru
forward
global type n_inh310_l3 from n_inh310_l2
end type
end forward

global type n_inh310_l3 from n_inh310_l2
end type
global n_inh310_l3 n_inh310_l3

forward prototypes
public subroutine uf_point_1 ()
public subroutine uf_point_4 (string as_type, string as_flag)
public subroutine uf_point_5 ()
end prototypes

public subroutine uf_point_1 ();If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L3 Function uf_point_1() Script.", False)
end subroutine

public subroutine uf_point_4 (string as_type, string as_flag);If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L3 Function uf_point_4(String as_Type, String as_Flag) Script.", False)
end subroutine

public subroutine uf_point_5 ();If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L3 Function uf_point_5() Script.", False)
end subroutine

on n_inh310_l3.create
call super::create
end on

on n_inh310_l3.destroy
call super::destroy
end on

