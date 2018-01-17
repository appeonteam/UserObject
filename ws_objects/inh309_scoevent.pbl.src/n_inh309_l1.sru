$PBExportHeader$n_inh309_l1.sru
forward
global type n_inh309_l1 from datastore
end type
end forward

global type n_inh309_l1 from datastore
event ue_point_1 ( )
event ue_point_2 ( )
event ue_point_3 ( )
event ue_point_4 ( )
event ue_point_5 ( )
event ue_point_6 ( )
end type
global n_inh309_l1 n_inh309_l1

event ue_point_1();If IsValid(gw_inh309w01_datastore) Then
	gw_inh309w01_datastore.wf_Output("Information : Execute n_inh309_L1.Event ue_point_1() Script", False)
End If
end event

event ue_point_2();If IsValid(gw_inh309w01_datastore) Then
	gw_inh309w01_datastore.wf_Output("Information : Execute n_inh309_L1.Event ue_point_2() Script", False)
End If
end event

event ue_point_3();If IsValid(gw_inh309w01_datastore) Then
	gw_inh309w01_datastore.wf_Output("Information : Execute n_inh309_L1.Event ue_point_3() Script", False)
End If
end event

on n_inh309_l1.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_inh309_l1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

