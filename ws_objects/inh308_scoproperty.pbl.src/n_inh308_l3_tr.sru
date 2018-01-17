$PBExportHeader$n_inh308_l3_tr.sru
forward
global type n_inh308_l3_tr from n_inh308_l2_tr
end type
end forward

global type n_inh308_l3_tr from n_inh308_l2_tr
string dbms = "DBMS3"
string userid = "UserID13"
string dbpass = "DBPass23"
string sqlerrtext = "SQLErrText23"
string dbparm = "DBParm123"
end type
global n_inh308_l3_tr n_inh308_l3_tr

on n_inh308_l3_tr.create
call super::create
end on

on n_inh308_l3_tr.destroy
call super::destroy
end on

