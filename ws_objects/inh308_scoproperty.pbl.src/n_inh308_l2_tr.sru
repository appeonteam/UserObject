$PBExportHeader$n_inh308_l2_tr.sru
forward
global type n_inh308_l2_tr from n_inh308_l1_tr
end type
end forward

global type n_inh308_l2_tr from n_inh308_l1_tr
string database = "DB12"
string dbpass = "DBPass2"
string logpass = "LogPass2"
string sqlerrtext = "SQLErrText2"
string dbparm = "DBParm12"
end type
global n_inh308_l2_tr n_inh308_l2_tr

on n_inh308_l2_tr.create
call super::create
end on

on n_inh308_l2_tr.destroy
call super::destroy
end on

