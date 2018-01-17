$PBExportHeader$n_inh310_l2.sru
forward
global type n_inh310_l2 from n_inh310_l1
end type
end forward

global type n_inh310_l2 from n_inh310_l1
end type
global n_inh310_l2 n_inh310_l2

forward prototypes
public subroutine uf_point_1 ()
public subroutine uf_point_2 ()
public subroutine uf_point_4 (string as_type)
public subroutine uf_point_5 (string as_type)
public subroutine uf_point_6 ()
end prototypes

public subroutine uf_point_1 ();If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L2 Function uf_point_1() Script.", False)
end subroutine

public subroutine uf_point_2 ();If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L2 Function uf_point_2() Script.", False)
end subroutine

public subroutine uf_point_4 (string as_type);If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L2 Function uf_point_4(String as_Type) Script.", False)
end subroutine

public subroutine uf_point_5 (string as_type);If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L2 Function uf_point_5(String as_Type) Script.", False)
end subroutine

public subroutine uf_point_6 ();If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L2 Function uf_point_6() Script.", False)
end subroutine

on n_inh310_l2.create
call super::create
end on

on n_inh310_l2.destroy
call super::destroy
end on

