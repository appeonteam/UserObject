$PBExportHeader$n_inh306_l3_ds.sru
forward
global type n_inh306_l3_ds from n_inh306_l2_ds
end type
end forward

global type n_inh306_l3_ds from n_inh306_l2_ds
end type
global n_inh306_l3_ds n_inh306_l3_ds

type variables
//Decalre Instance Variables
String					is_L3
Long						il_L3[]
str_inh306_normal		istr_L3
Transaction				itr_L3
CommandButton			icb_L3
nvo_AutoInstantiate	invo_L3_Auto
nvo_UnAuto				invo_L3_Unauto
end variables

on n_inh306_l3_ds.create
call super::create
end on

on n_inh306_l3_ds.destroy
call super::destroy
end on

event constructor;call super::constructor;//Init Instance Varibles
If NOT IsValid(gw_inh306w01_datastore) Then Return
//L3
is_L3 = 'L3'

il_L3[1] = 3

istr_L3.ss_String = 'Structure L3'

itr_L3 = Create Transaction
itr_L3.ServerName	 = 'NTSERVER3'

icb_L3 = gw_inh306w01_datastore.cb_Execute

invo_L3_Auto.is_String = 'NVO_L3_AUTO'

invo_L3_Unauto = Create nvo_UnAuto
invo_L3_Unauto.is_String = 'NVO_L3_UNAUTO'
end event

