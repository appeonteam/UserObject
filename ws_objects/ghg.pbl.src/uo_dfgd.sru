$PBExportHeader$uo_dfgd.sru
forward
global type uo_dfgd from userobject
end type
type cb_1 from commandbutton within uo_dfgd
end type
end forward

global type uo_dfgd from userobject
integer width = 1129
integer height = 640
long backcolor = 67108864
string text = "none"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_1 cb_1
end type
global uo_dfgd uo_dfgd

on uo_dfgd.create
this.cb_1=create cb_1
this.Control[]={this.cb_1}
end on

on uo_dfgd.destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within uo_dfgd
integer x = 201
integer y = 144
integer width = 457
integer height = 132
integer taborder = 10
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

