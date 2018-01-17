$PBExportHeader$u_cst_inh313_l1.sru
forward
global type u_cst_inh313_l1 from userobject
end type
type st_describe from statictext within u_cst_inh313_l1
end type
end forward

global type u_cst_inh313_l1 from userobject
string tag = "L1"
integer width = 1097
integer height = 520
boolean enabled = false
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
st_describe st_describe
end type
global u_cst_inh313_l1 u_cst_inh313_l1

on u_cst_inh313_l1.create
this.st_describe=create st_describe
this.Control[]={this.st_describe}
end on

on u_cst_inh313_l1.destroy
destroy(this.st_describe)
end on

type st_describe from statictext within u_cst_inh313_l1
integer x = 128
integer y = 156
integer width = 837
integer height = 64
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

