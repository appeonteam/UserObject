$PBExportHeader$n_cst_inh303_l2.sru
forward
global type n_cst_inh303_l2 from n_cst_inh303_l1
end type
end forward

global type n_cst_inh303_l2 from n_cst_inh303_l1
event ue_point_7 ( )
end type

event ue_point_7();If NOT IsValid(gw_inh303w01_ccoevent) Then Return

gw_inh303w01_ccoevent.Wf_OutPut("Information : Execute n_cst_inh303_L2 Event ue_point_7() Script.", False)
end event

on n_cst_inh303_l2.create
call super::create
end on

on n_cst_inh303_l2.destroy
call super::destroy
end on

event ue_point_1;//Override
If NOT IsValid(gw_inh303w01_ccoevent) Then Return

gw_inh303w01_ccoevent.Wf_OutPut("Information : Execute n_cst_inh303_L2 Event ue_point_1() Script.", False)
end event

event ue_point_3;call super::ue_point_3;//Extend
If NOT IsValid(gw_inh303w01_ccoevent) Then Return

gw_inh303w01_ccoevent.Wf_OutPut("Information : Execute n_cst_inh303_L2 Event ue_point_3() Script.", False)
end event

event ue_point_4;//Override
If NOT IsValid(gw_inh303w01_ccoevent) Then Return

gw_inh303w01_ccoevent.Wf_OutPut("Information : Execute n_cst_inh303_L2 Event ue_point_4() Script.", False)
end event

event ue_point_6;call super::ue_point_6;//Extend
If NOT IsValid(gw_inh303w01_ccoevent) Then Return

gw_inh303w01_ccoevent.Wf_OutPut("Information : Execute n_cst_inh303_L2 Event ue_point_6() Script.", False)
end event

