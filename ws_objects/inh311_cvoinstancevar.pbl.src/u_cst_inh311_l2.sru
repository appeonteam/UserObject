$PBExportHeader$u_cst_inh311_l2.sru
forward
global type u_cst_inh311_l2 from u_cst_inh311_l1
end type
end forward

global type u_cst_inh311_l2 from u_cst_inh311_l1
end type
global u_cst_inh311_l2 u_cst_inh311_l2

type variables
//Decalre Instance Variables
String					is_L2
Long						il_L2[]
str_inh311_normal		istr_L2
Transaction				itr_L2
CommandButton			icb_L2
nvo_AutoInstantiate	invo_L2_Auto
nvo_UnAuto				invo_L2_Unauto
end variables

on u_cst_inh311_l2.create
call super::create
end on

on u_cst_inh311_l2.destroy
call super::destroy
end on

event ue_init;call super::ue_init;//Init Instance Varibles
If NOT IsValid(gw_inh311w01_cvoinstancevar) Then Return
//L2
is_L2 = 'L2'

il_L2[1] = 2

istr_L2.ss_String = 'Structure L2'

itr_L2 = Create Transaction
itr_L2.ServerName	 = 'NTSERVER2'

icb_L2 = gw_inh311w01_cvoinstancevar.cb_Clear

invo_L2_Auto.is_String = 'NVO_L2_AUTO'

invo_L2_Unauto = Create nvo_UnAuto
invo_L2_Unauto.is_String = 'NVO_L2_UNAUTO'
end event

event destructor;call super::destructor;If IsValid(itr_L2) Then Destroy itr_L1
If IsValid(invo_L2_Unauto) Then Destroy invo_L1_Unauto
end event

type st_describe from u_cst_inh311_l1`st_describe within u_cst_inh311_l2
end type

