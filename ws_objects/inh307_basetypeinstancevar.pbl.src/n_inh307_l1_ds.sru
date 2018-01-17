$PBExportHeader$n_inh307_l1_ds.sru
forward
global type n_inh307_l1_ds from datastore
end type
end forward

global type n_inh307_l1_ds from datastore
end type
global n_inh307_l1_ds n_inh307_l1_ds

type variables
//Instance Variables
String				is_1, is_2 = "L1", is_3, is_4, is_5 = "L1", is_6 = "L1", is_7, is_8 = "L1"

Integer				ii_1, ii_2 = 1, ii_3, ii_4, ii_5 = 1, ii_6 = 1, ii_7, ii_8 = 1

Decimal				idec_1, idec_2 = 1.0, idec_3, idec_4, idec_5 = 1.0, idec_6 = 1.0, idec_7, idec_8 = 1.0

Boolean				ib_1, ib_2 = True, ib_3, ib_4, ib_5 = True, ib_6 = True, ib_7, ib_8 = True

DateTime				idt_1, idt_2 = DateTime(2111-11-11, 11:11:11), idt_3, idt_4, idt_5 = DateTime(2111-11-11, 11:11:11), idt_6 = DateTime(2111-11-11, 11:11:11), idt_7, idt_8 = DateTime(2111-11-11, 11:11:11)

Any					ia_01, ia_02 = "ANY1", ia_03, ia_04, ia_05 = "ANY1", ia_06 = "ANY1", ia_07, ia_08  = "ANY1"
end variables

on n_inh307_l1_ds.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_inh307_l1_ds.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

