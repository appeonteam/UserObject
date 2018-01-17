$PBExportHeader$u_cst_inh311_l3.sru
forward
global type u_cst_inh311_l3 from u_cst_inh311_l2
end type
end forward

global type u_cst_inh311_l3 from u_cst_inh311_l2
end type
global u_cst_inh311_l3 u_cst_inh311_l3

type variables
//Decalre Instance Variables
String					is_L3
Long						il_L3[]
str_inh311_normal		istr_L3
Transaction				itr_L3
CommandButton			icb_L3
nvo_AutoInstantiate	invo_L3_Auto
nvo_UnAuto				invo_L3_Unauto
end variables

on u_cst_inh311_l3.create
call super::create
end on

on u_cst_inh311_l3.destroy
call super::destroy
end on

event ue_init;call super::ue_init;//Init Instance Varibles
If NOT IsValid(gw_inh311w01_cvoinstancevar) Then Return
//L3
is_L3 = 'L3'

il_L3[1] = 3

istr_L3.ss_String = 'Structure L3'

itr_L3 = Create Transaction
itr_L3.ServerName	 = 'NTSERVER3'

icb_L3 = gw_inh311w01_cvoinstancevar.cb_Execute

invo_L3_Auto.is_String = 'NVO_L3_AUTO'

invo_L3_Unauto = Create nvo_UnAuto
invo_L3_Unauto.is_String = 'NVO_L3_UNAUTO'
end event

event destructor;call super::destructor;If IsValid(itr_L3) Then Destroy itr_L1
If IsValid(invo_L3_Unauto) Then Destroy invo_L1_Unauto
end event

type st_describe from u_cst_inh311_l2`st_describe within u_cst_inh311_l3
end type

