$PBExportHeader$n_inh310_l1.sru
forward
global type n_inh310_l1 from datastore
end type
end forward

global type n_inh310_l1 from datastore
end type
global n_inh310_l1 n_inh310_l1

forward prototypes
public subroutine uf_point_1 ()
public subroutine uf_point_2 ()
public subroutine uf_point_3 ()
public subroutine uf_point_4 ()
public subroutine uf_point_5 ()
end prototypes

public subroutine uf_point_1 ();If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L1 Function uf_point_1() Script.", False)
end subroutine

public subroutine uf_point_2 ();If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L2 Function uf_point_1() Script.", False)
end subroutine

public subroutine uf_point_3 ();If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L1 Function uf_point_3() Script.", False)
end subroutine

public subroutine uf_point_4 ();If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L1 Function uf_point_4() Script.", False)
end subroutine

public subroutine uf_point_5 ();If NOT IsValid(gw_inh310w01_datastore) Then Return

gw_inh310w01_datastore.Wf_OutPut("Information : Execute n_inh310_L5 Function uf_point_1() Script.", False)
end subroutine

on n_inh310_l1.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_inh310_l1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

