$PBExportHeader$n_cst_inh305_l2.sru
forward
global type n_cst_inh305_l2 from n_cst_inh305_l1
end type
end forward

global type n_cst_inh305_l2 from n_cst_inh305_l1 autoinstantiate
end type

on n_cst_inh305_l2.create
call super::create
end on

on n_cst_inh305_l2.destroy
call super::destroy
end on

