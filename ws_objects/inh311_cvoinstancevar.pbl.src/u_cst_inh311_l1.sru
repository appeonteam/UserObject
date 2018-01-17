$PBExportHeader$u_cst_inh311_l1.sru
forward
global type u_cst_inh311_l1 from userobject
end type
type st_describe from statictext within u_cst_inh311_l1
end type
end forward

global type u_cst_inh311_l1 from userobject
integer width = 1129
integer height = 556
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
event ue_init ( )
st_describe st_describe
end type
global u_cst_inh311_l1 u_cst_inh311_l1

type variables
//Decalre Instance Variables
String					is_L1
Long						il_L1[]
str_inh311_normal		istr_L1
Transaction				itr_L1
CommandButton			icb_L1
nvo_AutoInstantiate	invo_L1_Auto
nvo_UnAuto				invo_L1_Unauto
end variables

event ue_init();//Init Instance Varibles
If NOT IsValid(gw_inh311w01_cvoinstancevar) Then Return
//L1
is_L1 = 'L1'

il_L1[1] = 1

istr_L1.ss_String = 'Structure L1'

itr_L1 = Create Transaction
itr_L1.ServerName	 = 'NTSERVER1'

icb_L1 = gw_inh311w01_cvoinstancevar.cb_Close

invo_L1_Auto.is_String = 'NVO_L1_AUTO'

invo_L1_Unauto = Create nvo_UnAuto
invo_L1_Unauto.is_String = 'NVO_L1_UNAUTO'
end event

on u_cst_inh311_l1.create
this.st_describe=create st_describe
this.Control[]={this.st_describe}
end on

on u_cst_inh311_l1.destroy
destroy(this.st_describe)
end on

event destructor;If IsValid(itr_L1) Then Destroy itr_L1
If IsValid(invo_L1_Unauto) Then Destroy invo_L1_Unauto
end event

type st_describe from statictext within u_cst_inh311_l1
integer x = 119
integer y = 44
integer width = 837
integer height = 72
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "This is Customer Visual Object"
boolean focusrectangle = false
end type

