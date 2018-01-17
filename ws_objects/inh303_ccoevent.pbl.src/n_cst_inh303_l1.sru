$PBExportHeader$n_cst_inh303_l1.sru
forward
global type n_cst_inh303_l1 from nonvisualobject
end type
end forward

global type n_cst_inh303_l1 from nonvisualobject autoinstantiate
event ue_point_1 ( )
event ue_point_2 ( )
event ue_point_3 ( )
event ue_point_4 ( )
event ue_point_5 ( )
event ue_point_6 ( )
end type

type variables

end variables

event ue_point_1();If NOT IsValid(gw_inh303w01_ccoevent) Then Return

gw_inh303w01_ccoevent.Wf_OutPut("Information : Execute n_cst_inh303_L1 Event ue_point_1() Script.", False)
end event

event ue_point_2();If NOT IsValid(gw_inh303w01_ccoevent) Then Return

gw_inh303w01_ccoevent.Wf_OutPut("Information : Execute n_cst_inh303_L1 Event ue_point_2() Script.", False)
end event

event ue_point_3();If NOT IsValid(gw_inh303w01_ccoevent) Then Return

gw_inh303w01_ccoevent.Wf_OutPut("Information : Execute n_cst_inh303_L1 Event ue_point_3() Script.", False)
end event

on n_cst_inh303_l1.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_inh303_l1.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

