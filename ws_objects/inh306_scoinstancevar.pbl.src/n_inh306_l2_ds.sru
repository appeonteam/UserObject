$PBExportHeader$n_inh306_l2_ds.sru
forward
global type n_inh306_l2_ds from n_inh306_l1_ds
end type
end forward

global type n_inh306_l2_ds from n_inh306_l1_ds
end type
global n_inh306_l2_ds n_inh306_l2_ds

type variables
//Decalre Instance Variables
String					is_L2
Long						il_L2[]
str_inh306_normal		istr_L2
Transaction				itr_L2
CommandButton			icb_L2
nvo_AutoInstantiate	invo_L2_Auto
nvo_UnAuto				invo_L2_Unauto
end variables

on n_inh306_l2_ds.create
call super::create
end on

on n_inh306_l2_ds.destroy
call super::destroy
end on

event constructor;call super::constructor;//Init Instance Varibles
If NOT IsValid(gw_inh306w01_datastore) Then Return
//L2
is_L2 = 'L2'

il_L2[1] = 2

istr_L2.ss_String = 'Structure L2'

itr_L2 = Create Transaction
itr_L2.ServerName	 = 'NTSERVER2'

icb_L2 = gw_inh306w01_datastore.cb_Clear

invo_L2_Auto.is_String = 'NVO_L2_AUTO'

invo_L2_Unauto = Create nvo_UnAuto
invo_L2_Unauto.is_String = 'NVO_L2_UNAUTO'
end event

