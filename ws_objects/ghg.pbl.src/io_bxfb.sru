$PBExportHeader$io_bxfb.sru
forward
global type io_bxfb from corbaunion
end type
end forward

global type io_bxfb from corbaunion
end type
global io_bxfb io_bxfb

event constructor;//tuytfu
end event

on io_bxfb.create
call super::create
TriggerEvent( this, "constructor" )
end on

on io_bxfb.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

