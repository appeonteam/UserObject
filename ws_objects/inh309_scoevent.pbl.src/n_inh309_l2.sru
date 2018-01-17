$PBExportHeader$n_inh309_l2.sru
forward
global type n_inh309_l2 from n_inh309_l1
end type
end forward

global type n_inh309_l2 from n_inh309_l1
event ue_point_7 ( )
end type
global n_inh309_l2 n_inh309_l2

event ue_point_7();
If IsValid(gw_inh309w01_datastore) Then
	gw_inh309w01_datastore.wf_Output("Information : Execute n_inh309_L2.Event ue_point_7() Script", False)
End If
end event

on n_inh309_l2.create
call super::create
end on

on n_inh309_l2.destroy
call super::destroy
end on

event ue_point_1;//Override
If IsValid(gw_inh309w01_datastore) Then
	gw_inh309w01_datastore.wf_Output("Information : Execute n_inh309_L2.Event ue_point_1() Script", False)
End If
end event

event ue_point_3;call super::ue_point_3;//Extend
If IsValid(gw_inh309w01_datastore) Then
	gw_inh309w01_datastore.wf_Output("Information : Execute n_inh309_L2.Event ue_point_3() Script", False)
End If
end event

event ue_point_4;//Override
If IsValid(gw_inh309w01_datastore) Then
	gw_inh309w01_datastore.wf_Output("Information : Execute n_inh309_L2.Event ue_point_4() Script", False)
End If
end event

event ue_point_6;call super::ue_point_6;//Extend
If IsValid(gw_inh309w01_datastore) Then
	gw_inh309w01_datastore.wf_Output("Information : Execute n_inh309_L2.Event ue_point_6() Script", False)
End If
end event

