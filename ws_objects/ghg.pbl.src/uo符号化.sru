$PBExportHeader$uo符号化.sru
forward
global type uo符号化 from nonvisualobject
end type
end forward

global type uo符号化 from nonvisualobject
end type
global uo符号化 uo符号化

event constructor;//1
end event

on uo符号化.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo符号化.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

