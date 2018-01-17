$PBExportHeader$n_inh308_l1_tr.sru
forward
global type n_inh308_l1_tr from transaction
end type
end forward

global type n_inh308_l1_tr from transaction
string database = "DB1"
string userid = "UserID1"
string logid = "LogID1"
string dbparm = "DBParm1"
end type
global n_inh308_l1_tr n_inh308_l1_tr

on n_inh308_l1_tr.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_inh308_l1_tr.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

