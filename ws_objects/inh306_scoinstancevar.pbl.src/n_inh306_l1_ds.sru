$PBExportHeader$n_inh306_l1_ds.sru
forward
global type n_inh306_l1_ds from datastore
end type
end forward

global type n_inh306_l1_ds from datastore
end type
global n_inh306_l1_ds n_inh306_l1_ds

type variables
//Decalre Instance Variables
String					is_L1
Long						il_L1[]
str_inh306_normal		istr_L1
Transaction				itr_L1
CommandButton			icb_L1
nvo_AutoInstantiate	invo_L1_Auto
nvo_UnAuto				invo_L1_Unauto
end variables

on n_inh306_l1_ds.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_inh306_l1_ds.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;//Init Instance Varibles
If NOT IsValid(gw_inh306w01_datastore) Then Return
//L1
is_L1 = 'L1'

il_L1[1] = 1

istr_L1.ss_String = 'Structure L1'

itr_L1 = Create Transaction
itr_L1.ServerName	 = 'NTSERVER1'

icb_L1 = gw_inh306w01_datastore.cb_Close

invo_L1_Auto.is_String = 'NVO_L1_AUTO'

invo_L1_Unauto = Create nvo_UnAuto
invo_L1_Unauto.is_String = 'NVO_L1_UNAUTO'
end event

event destructor;If IsValid(itr_L1) Then Destroy itr_L1
If IsValid(invo_L1_Unauto) Then Destroy nvo_UnAuto
end event

