$PBExportHeader$w_inh302w01_basetype.srw
forward
global type w_inh302w01_basetype from window
end type
type cb_3 from commandbutton within w_inh302w01_basetype
end type
type cb_2 from commandbutton within w_inh302w01_basetype
end type
type cb_execute from commandbutton within w_inh302w01_basetype
end type
type lb_items from listbox within w_inh302w01_basetype
end type
type cb_clear from commandbutton within w_inh302w01_basetype
end type
type cb_close from commandbutton within w_inh302w01_basetype
end type
type mle_output from multilineedit within w_inh302w01_basetype
end type
type mle_view from multilineedit within w_inh302w01_basetype
end type
type gb_3 from groupbox within w_inh302w01_basetype
end type
type gb_4 from groupbox within w_inh302w01_basetype
end type
type gb_5 from groupbox within w_inh302w01_basetype
end type
type mle_describe from multilineedit within w_inh302w01_basetype
end type
type gb_1 from groupbox within w_inh302w01_basetype
end type
end forward

global type w_inh302w01_basetype from window
integer width = 3954
integer height = 2408
boolean titlebar = true
string title = "Call CCO base data type"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
event ue_init_var ( )
cb_3 cb_3
cb_2 cb_2
cb_execute cb_execute
lb_items lb_items
cb_clear cb_clear
cb_close cb_close
mle_output mle_output
mle_view mle_view
gb_3 gb_3
gb_4 gb_4
gb_5 gb_5
mle_describe mle_describe
gb_1 gb_1
event ue_runall ( )
end type
global w_inh302w01_basetype w_inh302w01_basetype

type variables
//OutPut Index 
Integer ii_index = 0

//User Object
n_cst_inh302_l3	in_cst_L3
//BEGIN_WININSVAR
long il_WindowID = -1
DataStore ids_TestPoint
DataStore ids_ResultDetailTemp
//END_WININSVAR
end variables

forward prototypes
public subroutine wf_describe ()
public subroutine wf_scriptview (string as_script)
public subroutine wf_output (string as_mess, boolean ab_clear)
public subroutine wf_scriptexe (integer ai_item, boolean ab_execute)
public subroutine wf_init_items ()
public function string wf_booltostring (boolean ab_args)
public function integer wf_createresultset ()
public function integer wf_savetempresult (long al_row)
end prototypes

event ue_runall ( );//start:event ue_runall ( )
integer i

for i = 1 to lb_items.TotalItems()
	 wf_ScriptExe(i, false)
	 wf_ScriptExe(i, true)	
next
//end:event ue_runall ( )
end event

public subroutine wf_describe ();//You must Define this Function for call
////////////////////////////////////////////////////////////////
//Function : wf_describe ; Output Describe
//Argument : none
//Output   : none
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

mle_describe.text  = "1.Appeon Window : "
mle_describe.text +=  Classname() + "~r~n" //This Must be the First output
mle_describe.text += "2.Testing Purpose :  Call CCO Base Data Type of Level 3" // This must include
mle_describe.text += "~r~n"
mle_describe.text += "3.Operation Step : ~r~n" // Optional
mle_describe.text += ""
mle_describe.text += "4.Object Declare : ~r~n" // Optional
Return
end subroutine

public subroutine wf_scriptview (string as_script);//You must Define this Function for view and Execute Script

//////////////////////////////////////////////////////////////////////
//Function: wf_scriptview  View a line Script
//Argument: String  as_mess a line Script
//Output:   none
//Designer:
//Date:
/////////////////////////////////////////////////////////////////////

mle_view.Text += as_script + "~r~n"

Return
end subroutine

public subroutine wf_output (string as_mess, boolean ab_clear);////////////////////////////////////////////////////////////////
//Function : Wf_OutPut
//Argument : String   as_mess;   The Message you will output 
//				 Boolean  ab_clear;  Clear Flag
//Output   : None
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

If ab_clear Then
	mle_output.Text = ""
	ii_index = 0
End IF	

ii_index ++
mle_output.Text += String(ii_index,'00') + "." + as_mess + "~r~n"
end subroutine

public subroutine wf_scriptexe (integer ai_item, boolean ab_execute);//You must Define this Function for view and Execute Script

//////////////////////////////////////////////////////////////////////
//Function: wf_scriptexe  View and Execute Script
//Argument: Int ai_item: SelectedItem;
//          Boolean ab_execute: Execute or View Flag
//Output:   none
//Designer:	
//Date:		2003-06-09
/////////////////////////////////////////////////////////////////////
long			ll_pos
String 		ls_item, ls_descript

If ai_item < 1 Then Return

ll_pos = Pos(lb_items.text(ai_item),':')
ls_item = Mid(lb_items.text(ai_item),1,ll_pos - 1)
ls_descript = Mid(lb_items.text(ai_item),ll_pos + 1,Len(lb_items.text(ai_item)))

Choose Case ls_item
	Case 'INH302W01P001'
		If ab_execute Then
			//Output String Type Variables(in_cst_L3)
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)		
			Wf_Output('Output     : in_cst_L3.is_1 = ~'' + in_cst_L3.is_1 + '~'', False)
			Wf_Output('Output     : in_cst_L3.is_2 = ~'' + in_cst_L3.is_2 + '~'', False)
			Wf_Output('Output     : in_cst_L3.is_3 = ~'' + in_cst_L3.is_3 + '~'', False)
			Wf_Output('Output     : in_cst_L3.is_4 = ~'' + in_cst_L3.is_4 + '~'', False)
			Wf_Output('Output     : in_cst_L3.is_5 = ~'' + in_cst_L3.is_5 + '~'', False)
			Wf_Output('Output     : in_cst_L3.is_6 = ~'' + in_cst_L3.is_6 + '~'', False)
			Wf_Output('Output     : in_cst_L3.is_7 = ~'' + in_cst_L3.is_7 + '~'', False)
			Wf_Output('Output     : in_cst_L3.is_8 = ~'' + in_cst_L3.is_8 + '~'', False)
		Else
			wf_scriptview("//Output String Type Variables(in_cst_L3)                                   ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                  ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                             ")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.is_1 = ~'' + in_cst_L3.is_1 + '~'', False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.is_2 = ~'' + in_cst_L3.is_2 + '~'', False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.is_3 = ~'' + in_cst_L3.is_3 + '~'', False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.is_4 = ~'' + in_cst_L3.is_4 + '~'', False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.is_5 = ~'' + in_cst_L3.is_5 + '~'', False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.is_6 = ~'' + in_cst_L3.is_6 + '~'', False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.is_7 = ~'' + in_cst_L3.is_7 + '~'', False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.is_8 = ~'' + in_cst_L3.is_8 + '~'', False)")
			
			Wf_ScriptView("//Variable initialization")
			wf_scriptview("//Level 1                                                                        ")
			wf_scriptview("String is_1, is_2 = 'L1', is_3, is_4, is_5 = 'L1', is_6 = 'L1', is_7, is_8 = 'L1'")
			wf_scriptview("//Levle 2                                                                        ")
			wf_scriptview("string is_3 = 'L2'                                                               ")
			wf_scriptview("string is_5 = 'L1L2'                                                             ")
			wf_scriptview("string is_7 = 'L2'                                                               ")
			wf_scriptview("string is_8 = 'L1L2'                                                             ")
			wf_scriptview("//Level 3                                                                        ")
			wf_scriptview("string is_4 = 'L3'                                                               ")
			wf_scriptview("string is_6 = 'L1L3'                                                             ")
			wf_scriptview("string is_7 = 'L2L3'                                                             ")
			wf_scriptview("string is_8 = 'L1L2L3'                                                           ")

		End If
	Case 'INH302W01P002'
		If ab_execute Then
			//Output Integer Type Variables(in_cst_L3)
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)		
			Wf_Output('Output     : in_cst_L3.ii_1 = ' + String(in_cst_L3.ii_1), False)
			Wf_Output('Output     : in_cst_L3.ii_2 = ' + String(in_cst_L3.ii_2), False)
			Wf_Output('Output     : in_cst_L3.ii_3 = ' + String(in_cst_L3.ii_3), False)
			Wf_Output('Output     : in_cst_L3.ii_4 = ' + String(in_cst_L3.ii_4), False)
			Wf_Output('Output     : in_cst_L3.ii_5 = ' + String(in_cst_L3.ii_5), False)
			Wf_Output('Output     : in_cst_L3.ii_6 = ' + String(in_cst_L3.ii_6), False)
			Wf_Output('Output     : in_cst_L3.ii_7 = ' + String(in_cst_L3.ii_7), False)
			Wf_Output('Output     : in_cst_L3.ii_8 = ' + String(in_cst_L3.ii_8), False)
		Else
			wf_scriptview("//Output Integer Type Variables(in_cst_L3)                                 ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                 ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                            ")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ii_1 = ' + String(in_cst_L3.ii_1), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ii_2 = ' + String(in_cst_L3.ii_2), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ii_3 = ' + String(in_cst_L3.ii_3), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ii_4 = ' + String(in_cst_L3.ii_4), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ii_5 = ' + String(in_cst_L3.ii_5), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ii_6 = ' + String(in_cst_L3.ii_6), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ii_7 = ' + String(in_cst_L3.ii_7), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ii_8 = ' + String(in_cst_L3.ii_8), False)")
	
			Wf_ScriptView("//Variable initialization")
			wf_scriptview("//Level 1                                                             ")
			wf_scriptview("Integer ii_1, ii_2 = 1, ii_3, ii_4, ii_5 = 1, ii_6 = 1, ii_7, ii_8 = 1")
			wf_scriptview("//Levle 2                                                             ")
			wf_scriptview("integer ii_3 = 2                                                      ")
			wf_scriptview("integer ii_5 = 12                                                     ")
			wf_scriptview("integer ii_7 = 2                                                      ")
			wf_scriptview("integer ii_8 = 12                                                     ")
			wf_scriptview("//Level 3                                                             ")
			wf_scriptview("integer ii_4 = 3                                                      ")
			wf_scriptview("integer ii_6 = 13                                                     ")
			wf_scriptview("integer ii_7 = 23                                                     ")
			wf_scriptview("integer ii_8 = 123                                                    ")

		End If
	Case 'INH302W01P003'
		If ab_execute Then
			//Output Decimal Type Variables(in_cst_L3)
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)		
			Wf_Output('Output     : in_cst_L3.idec_1 = ' + String(in_cst_L3.idec_1), False)
			Wf_Output('Output     : in_cst_L3.idec_2 = ' + String(in_cst_L3.idec_2), False)
			Wf_Output('Output     : in_cst_L3.idec_3 = ' + String(in_cst_L3.idec_3), False)
			Wf_Output('Output     : in_cst_L3.idec_4 = ' + String(in_cst_L3.idec_4), False)
			Wf_Output('Output     : in_cst_L3.idec_5 = ' + String(in_cst_L3.idec_5), False)
			Wf_Output('Output     : in_cst_L3.idec_6 = ' + String(in_cst_L3.idec_6), False)
			Wf_Output('Output     : in_cst_L3.idec_7 = ' + String(in_cst_L3.idec_7), False)
			Wf_Output('Output     : in_cst_L3.idec_8 = ' + String(in_cst_L3.idec_8), False)
		Else
			wf_scriptview("//Output Decimal Type Variables(in_cst_L3)                                     ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                     ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                ")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idec_1 = ' + String(in_cst_L3.idec_1), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idec_2 = ' + String(in_cst_L3.idec_2), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idec_3 = ' + String(in_cst_L3.idec_3), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idec_4 = ' + String(in_cst_L3.idec_4), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idec_5 = ' + String(in_cst_L3.idec_5), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idec_6 = ' + String(in_cst_L3.idec_6), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idec_7 = ' + String(in_cst_L3.idec_7), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idec_8 = ' + String(in_cst_L3.idec_8), False)")

			Wf_ScriptView("//Variable initialization")
			wf_scriptview("//Level 1                                                                                         ")
			wf_scriptview("Decimal     idec_1, idec_2 = 1.0, idec_3, idec_4, idec_5 = 1.0, idec_6 = 1.0, idec_7, idec_8 = 1.0")
			wf_scriptview("//Levle 2                                                                                         ")
			wf_scriptview("decimal idec_3 = 2.00                                                                             ")
			wf_scriptview("decimal idec_5 = 12.0                                                                             ")
			wf_scriptview("decimal idec_7 = 2.00                                                                             ")
			wf_scriptview("decimal idec_8 = 12.0                                                                             ")
			wf_scriptview("//Level 3                                                                                         ")
			wf_scriptview("decimal idec_4 = 3.00                                                                             ")
			wf_scriptview("decimal idec_6 = 13.0                                                                             ")
			wf_scriptview("decimal idec_7 = 23.00                                                                            ")
			wf_scriptview("decimal idec_8 = 123.0                                                                            ")
			
		End If
	Case 'INH302W01P004'
		If ab_execute Then
			//Output Boolean Type Variables(in_cst_L3)
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)				
			Wf_Output('Output     : in_cst_L3.ib_1 = ' + wf_BoolToString(in_cst_L3.ib_1), False)
			Wf_Output('Output     : in_cst_L3.ib_2 = ' + wf_BoolToString(in_cst_L3.ib_2), False)
			Wf_Output('Output     : in_cst_L3.ib_3 = ' + wf_BoolToString(in_cst_L3.ib_3), False)
			Wf_Output('Output     : in_cst_L3.ib_4 = ' + wf_BoolToString(in_cst_L3.ib_4), False)
			Wf_Output('Output     : in_cst_L3.ib_5 = ' + wf_BoolToString(in_cst_L3.ib_5), False)
			Wf_Output('Output     : in_cst_L3.ib_6 = ' + wf_BoolToString(in_cst_L3.ib_6), False)
			Wf_Output('Output     : in_cst_L3.ib_7 = ' + wf_BoolToString(in_cst_L3.ib_7), False)
			Wf_Output('Output     : in_cst_L3.ib_8 = ' + wf_BoolToString(in_cst_L3.ib_8), False)
		Else
			wf_scriptview("//Output Boolean Type Variables(in_cst_L3)                                          ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                          ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                                     ")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ib_1 = ' + wf_BoolToString(in_cst_L3.ib_1), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ib_2 = ' + wf_BoolToString(in_cst_L3.ib_2), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ib_3 = ' + wf_BoolToString(in_cst_L3.ib_3), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ib_4 = ' + wf_BoolToString(in_cst_L3.ib_4), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ib_5 = ' + wf_BoolToString(in_cst_L3.ib_5), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ib_6 = ' + wf_BoolToString(in_cst_L3.ib_6), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ib_7 = ' + wf_BoolToString(in_cst_L3.ib_7), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ib_8 = ' + wf_BoolToString(in_cst_L3.ib_8), False)")
			
			Wf_ScriptView("//Variable initialization")			
			wf_scriptview("//Level 1                                                                             ")
			wf_scriptview("Boolean     ib_1, ib_2 = True, ib_3, ib_4, ib_5 = True, ib_6 = True, ib_7, ib_8 = True")
			wf_scriptview("//Levle 2                                                                             ")
			wf_scriptview("boolean ib_3 = true                                                                   ")
			wf_scriptview("boolean ib_5 = false                                                                  ")
			wf_scriptview("boolean ib_7 = true                                                                   ")
			wf_scriptview("boolean ib_8 = false                                                                  ")
			wf_scriptview("//Level 3                                                                             ")
			wf_scriptview("boolean ib_4 = true                                                                   ")
			wf_scriptview("boolean ib_6 = false                                                                  ")
			wf_scriptview("boolean ib_7 = false                                                                  ")
			wf_scriptview("boolean ib_8 = true                                                                   ")

		End If
	Case 'INH302W01P005'
		If ab_execute Then
			//Output DateTime Type Variables(in_cst_L3)
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)		
			Wf_Output('Output     : in_cst_L3.idt_1 = ' + String(in_cst_L3.idt_1), False)
			Wf_Output('Output     : in_cst_L3.idt_2 = ' + String(in_cst_L3.idt_2), False)
			Wf_Output('Output     : in_cst_L3.idt_3 = ' + String(in_cst_L3.idt_3), False)
			Wf_Output('Output     : in_cst_L3.idt_4 = ' + String(in_cst_L3.idt_4), False)
			Wf_Output('Output     : in_cst_L3.idt_5 = ' + String(in_cst_L3.idt_5), False)
			Wf_Output('Output     : in_cst_L3.idt_6 = ' + String(in_cst_L3.idt_6), False)
			Wf_Output('Output     : in_cst_L3.idt_7 = ' + String(in_cst_L3.idt_7), False)
			Wf_Output('Output     : in_cst_L3.idt_8 = ' + String(in_cst_L3.idt_8), False)
		Else
			wf_scriptview("//Output DateTime Type Variables(in_cst_L3)                                  ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                   ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                              ")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idt_1 = ' + String(in_cst_L3.idt_1), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idt_2 = ' + String(in_cst_L3.idt_2), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idt_3 = ' + String(in_cst_L3.idt_3), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idt_4 = ' + String(in_cst_L3.idt_4), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idt_5 = ' + String(in_cst_L3.idt_5), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idt_6 = ' + String(in_cst_L3.idt_6), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idt_7 = ' + String(in_cst_L3.idt_7), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.idt_8 = ' + String(in_cst_L3.idt_8), False)")
			
			Wf_ScriptView("//Variable initialization")			
			wf_scriptview("//Level 1                                                                              ")
			wf_scriptview("DateTime idt_1, idt_2 = DateTime(2111-11-11, 11:11:11), idt_3, idt_4                   ")
			wf_scriptview("DateTime idt_5 = DateTime(2111-11-11, 11:11:11), idt_6 = DateTime(2111-11-11, 11:11:11)")
			wf_scriptview("DateTime idt_7, idt_8 = DateTime(2111-11-11, 11:11:11)                                 ")
			wf_scriptview("//Levle 2                                                                              ")
			wf_scriptview("datetime idt_3 = DateTime(Date('2222-01-01'), Time('00:00:00.000000'))                 ")
			wf_scriptview("datetime idt_5 = DateTime(Date('2121-11-11'), Time('11:11:11.000000'))                 ")
			wf_scriptview("datetime idt_7 = DateTime(Date('2222-01-01'), Time('00:00:00.000000'))                 ")
			wf_scriptview("datetime idt_8 = DateTime(Date('2121-11-11'), Time('11:11:11.000000'))                 ")
			wf_scriptview("//Level 3                                                                              ")
			wf_scriptview("datetime idt_4 = DateTime(Date('2333-01-01'), Time('00:00:00.000000'))                 ")
			wf_scriptview("datetime idt_6 = DateTime(Date('2113-11-11'), Time('11:11:11.000000'))                 ")
			wf_scriptview("datetime idt_7 = DateTime(Date('2223-01-01'), Time('00:00:00.000000'))                 ")
			wf_scriptview("datetime idt_8 = DateTime(Date('2123-11-11'), Time('11:11:11.000000'))                 ")

		End If
	Case 'INH302W01P006'
		If ab_execute Then
			//Output Any Type Variables(in_cst_L3)
			Wf_Output('Test Point : ' + ls_item, True)
			Wf_Output('Describe   : ' + ls_descript, False)		
			Wf_Output('Output     : in_cst_L3.ia_01 = ' + String(in_cst_L3.ia_01), False)
			Wf_Output('Output     : in_cst_L3.ia_02 = ' + String(in_cst_L3.ia_02), False)
			Wf_Output('Output     : in_cst_L3.ia_03 = ' + String(in_cst_L3.ia_03), False)
			Wf_Output('Output     : in_cst_L3.ia_04 = ' + String(in_cst_L3.ia_04), False)
			Wf_Output('Output     : in_cst_L3.ia_05 = ' + String(in_cst_L3.ia_05), False)
			Wf_Output('Output     : in_cst_L3.ia_06 = ' + String(in_cst_L3.ia_06), False)
			Wf_Output('Output     : in_cst_L3.ia_07 = ' + String(in_cst_L3.ia_07), False)
			Wf_Output('Output     : in_cst_L3.ia_08 = ' + String(in_cst_L3.ia_08), False)
		Else
			wf_scriptview("//Output Any Type Variables(in_cst_L3)                                       ")
			wf_scriptview("Wf_Output('Test Point : ' + ls_item, True)                                   ")
			wf_scriptview("Wf_Output('Describe   : ' + ls_descript, False)                              ")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ia_01 = ' + String(in_cst_L3.ia_01), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ia_02 = ' + String(in_cst_L3.ia_02), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ia_03 = ' + String(in_cst_L3.ia_03), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ia_04 = ' + String(in_cst_L3.ia_04), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ia_05 = ' + String(in_cst_L3.ia_05), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ia_06 = ' + String(in_cst_L3.ia_06), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ia_07 = ' + String(in_cst_L3.ia_07), False)")
			wf_scriptview("Wf_Output('Output     : in_cst_L3.ia_08 = ' + String(in_cst_L3.ia_08), False)")
			
			Wf_ScriptView("//Variable initialization")	
			wf_scriptview("//Level 1                                                                                     ")
			wf_scriptview("Any ia_01, ia_02 = 'ANY1', ia_03, ia_04, ia_05 = 'ANY1', ia_06 = 'ANY1', ia_07, ia_08 = 'ANY1'")
			wf_scriptview("//Levle 2                                                                                     ")
			wf_scriptview("Any ia_03 = 'ANY2'                                                                            ")
			wf_scriptview("Any ia_05 = 'ANY12'                                                                           ")
			wf_scriptview("Any ia_07 = 'ANY2'                                                                            ")
			wf_scriptview("Any ia_08 = 'ANY12'                                                                           ")
			wf_scriptview("//Level 3                                                                                     ")
			wf_scriptview("Any ia_04 = 'ANY3'                                                                            ")
			wf_scriptview("Any ia_06 = 'ANY13'                                                                           ")
			wf_scriptview("Any ia_07 = 'ANY23'                                                                           ")
			wf_scriptview("Any ia_08 = 'ANY123'                                                                          ")
			
		End If
	Case Else
	 	MessageBox("Error","This Point Not Coding",Exclamation!)
End Choose

//BEGIN_SCRIPTEXE
if ab_Execute then wf_SaveTempResult(ai_Item)
//END_SCRIPTEXE
end subroutine

public subroutine wf_init_items ();////////////////////////////////////////////////////////////////
//Function : wf_init_items ; Initialization ListBox Items
//Argument : none
//Output   : none
//Designer : 
//Date     :
////////////////////////////////////////////////////////////////

lb_items.Reset()
//script below  use to add test item into listbox control

lb_items.additem("INH302W01P001: [ String ] Data Type")
lb_items.additem("INH302W01P002: [ Integer ] Data Type")
lb_items.additem("INH302W01P003: [ Decimal ] Data Type")
lb_items.additem("INH302W01P004: [ Boolean ] Data Type")
lb_items.additem("INH302W01P005: [ DateTime ] Data Type")
lb_items.additem("INH302W01P006: [ Any ] Data Type")
end subroutine

public function string wf_booltostring (boolean ab_args);If ab_args Then
	Return "TRUE"
Else
	Return "FALSE"
End if
end function

public function integer wf_createresultset ();//start:public function integer wf_createresultset ()
string ls_Syntax
string ls_ErrorMesg
string ls_SQLSelect
string ls_WinName

// Not connected TQMS DB
if not gb_COTDBConnected then Return -1

// Refresh data
if IsValid(ids_TestPoint) then
	ids_TestPoint.Retrieve()
	ids_ResultDetailTemp.Retrieve()
	Return 1
end if

// Get WindowID
if il_WindowID=-1 then
	ls_WinName = Lower(this.ClassName())
	SELECT WindowId INTO :il_WindowID FROM TestWindow WHERE SwName = :ls_WinName using gtr_COTDB;
	if gtr_COTDB.SQLCode<>0 or gtr_COTDB.SQLNRows<>1 then Return -1
end if

// TestPoint
ls_WinName = Lower(this.ClassName())
ls_SQLSelect =	"SELECT TestPointId = TestPoint.TestPointId, TPNO = TestPoint.TPNO, ExpectValue = TestPoint.ExpectValue " + &
					"FROM   TestPoint, TestWindow " + &
					"WHERE  ( TestPoint.WindowId = TestWindow.WindowId ) AND ( TestPoint.is_valid = '1' ) AND " + &
				 			 "( Lower(TestWindow.SwName) = '" + ls_WinName + "')"
ls_Syntax = gtr_COTDB.SyntaxFromSQL(ls_SQLSelect, "", ls_ErrorMesg)
if Len(ls_ErrorMesg)>0 then Return -1
ids_TestPoint = Create DataStore
ids_TestPoint.Create(ls_Syntax)
ids_TestPoint.SetTransObject(gtr_COTDB)
ids_TestPoint.Retrieve()
ids_TestPoint.SetSort("TPNO A")
ids_TestPoint.Sort()

// ResultDetailTemp
ls_SQLSelect = "SELECT * FROM ResultDetailTemp WHERE " + &
					"version = " + String(gi_COTVersion) + " AND " + &
					"Envi = '" + gs_COTEnvironment + "' AND " + &
					"WindowID = " + String(il_WindowID)
ls_Syntax = gtr_COTDB.SyntaxFromSQL(ls_SQLSelect, "", ls_ErrorMesg)
if Len(ls_ErrorMesg)>0 then
	Destroy ids_TestPoint
	Return -1
end if
ids_ResultDetailTemp = Create DataStore
ids_ResultDetailTemp.Create(ls_Syntax)
ids_ResultDetailTemp.SetTransObject(gtr_COTDB)
ids_ResultDetailTemp.Retrieve()

Return 1
//end:public function integer wf_createresultset ()
end function

public function integer wf_savetempresult (long al_row);//start:public function integer wf_savetempresult (long al_row)
long   ll_FindRow
long   ll_InsertRow
long   ll_TestpointId
string ls_ExpectValue
string ls_TrueValue
string ls_WinName
DateTime ldt_SaveTime

// Not connected TQMS DB
if not gb_COTDBConnected then Return -1

// Check WindowID
if il_WindowID=-1 then Return -1

// Save temp result
SELECT GetDate() INTO :ldt_SaveTime FROM sysdual using gtr_COTDB;
ll_TestpointId = ids_TestPoint.GetItemNumber(al_Row, "TestpointId")
ls_ExpectValue = ids_TestPoint.GetItemString(al_Row, "ExpectValue")
if IsNull(ls_ExpectValue) then ls_ExpectValue = ""

ll_FindRow = ids_ResultDetailTemp.Find("TestpointId=" + String(ll_TestpointId),1,ids_ResultDetailTemp.RowCount())
if ll_FindRow<=0 then
	ll_InsertRow = ids_ResultDetailTemp.InsertRow(0)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "TestpointId", ll_TestpointId)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "Envi", gs_COTEnvironment)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "version", gi_COTVersion)
	ids_ResultDetailTemp.SetItem(ll_InsertRow, "WindowID", il_WindowID)	
	ll_FindRow = ll_InsertRow
end if

ls_TrueValue = mle_output.Text
ids_ResultDetailTemp.SetItem(ll_FindRow, "TrueValue", ls_TrueValue)
ids_ResultDetailTemp.SetItem(ll_FindRow, "ExpectValue", ls_ExpectValue)
ids_ResultDetailTemp.SetItem(ll_FindRow, "SaveTime", ldt_SaveTime)
if ls_TrueValue=ls_ExpectValue then	
	ids_ResultDetailTemp.SetItem(ll_FindRow, "status", "1")
else
	ids_ResultDetailTemp.SetItem(ll_FindRow, "status", "0")
end if

if ids_ResultDetailTemp.Update()=1 then
	Commit using gtr_COTDB;
	if not gb_COTAutoRun and IsValid(w_pbvsjs) then
		w_pbvsjs.wf_Retrieve(this.ClassName())
		w_pbvsjs.dw_result.ScrollToRow(al_Row)
		w_pbvsjs.dw_result.SelectRow(0, false)
		w_pbvsjs.dw_result.SelectRow(al_Row, true)
	end if	
	Return 1
else
	Rollback using gtr_COTDB;
	ids_ResultDetailTemp.ResetUpdate()
	Return -1
end if
//end:public function integer wf_savetempresult (long al_row)
end function

on w_inh302w01_basetype.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_execute=create cb_execute
this.lb_items=create lb_items
this.cb_clear=create cb_clear
this.cb_close=create cb_close
this.mle_output=create mle_output
this.mle_view=create mle_view
this.gb_3=create gb_3
this.gb_4=create gb_4
this.gb_5=create gb_5
this.mle_describe=create mle_describe
this.gb_1=create gb_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_execute,&
this.lb_items,&
this.cb_clear,&
this.cb_close,&
this.mle_output,&
this.mle_view,&
this.gb_3,&
this.gb_4,&
this.gb_5,&
this.mle_describe,&
this.gb_1}
end on

on w_inh302w01_basetype.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_execute)
destroy(this.lb_items)
destroy(this.cb_clear)
destroy(this.cb_close)
destroy(this.mle_output)
destroy(this.mle_view)
destroy(this.gb_3)
destroy(this.gb_4)
destroy(this.gb_5)
destroy(this.mle_describe)
destroy(this.gb_1)
end on

event close;
//start:event close
if IsValid(ids_TestPoint) then Destroy ids_TestPoint
if IsValid(ids_ResultDetailTemp) then Destroy ids_ResultDetailTemp
//end:event close
end event

event open;//Add Describe
Wf_Describe()
//Init ListBox to add Test Items
Wf_Init_Items()

Event ue_Init_Var()

cb_clear.Event post Clicked()

//start:event open
wf_CreateResultSet()
//end:event open
end event

type cb_3 from commandbutton within w_inh302w01_basetype
integer x = 453
integer y = 2152
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "View Result"
end type

event clicked;if gb_COTDBConnected then
	gw_COTCurrentWin = Parent
	if not IsValid(w_pbvsjs) then Open(w_pbvsjs)
	w_pbvsjs.wf_Retrieve(Parent.ClassName())
else
	this.Enabled = false
end if
end event

type cb_2 from commandbutton within w_inh302w01_basetype
integer x = 32
integer y = 2152
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Auto Run"
end type

event clicked;Parent.TriggerEvent("ue_RunAll")
end event

type cb_execute from commandbutton within w_inh302w01_basetype
integer x = 2437
integer y = 2140
integer width = 448
integer height = 128
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Execute"
end type

event clicked;lb_items.Event DoublecLicked(lb_items.SelectedIndex())
end event

type lb_items from listbox within w_inh302w01_basetype
integer x = 59
integer y = 640
integer width = 1797
integer height = 736
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean sorted = false
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;//Execute Script
IF index > 0 THEN
	wf_Scriptexe(lb_items.selectedindex(),True)
END IF
end event

event selectionchanged;//View Script
IF index > 0 THEN
	mle_view.text = ''
	wf_Scriptexe(lb_items.selectedindex(),False)
END IF
end event

type cb_clear from commandbutton within w_inh302w01_basetype
integer x = 2903
integer y = 2140
integer width = 448
integer height = 128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Clear"
end type

event clicked;ii_index = 0
mle_output.text=''
mle_view.text = ""
end event

type cb_close from commandbutton within w_inh302w01_basetype
integer x = 3369
integer y = 2140
integer width = 448
integer height = 128
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Close"
end type

event clicked;close(parent)
end event

type mle_output from multilineedit within w_inh302w01_basetype
integer x = 69
integer y = 1472
integer width = 3771
integer height = 600
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type mle_view from multilineedit within w_inh302w01_basetype
integer x = 1970
integer y = 652
integer width = 1851
integer height = 724
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_3 from groupbox within w_inh302w01_basetype
integer x = 27
integer y = 580
integer width = 1861
integer height = 824
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Test Items"
end type

type gb_4 from groupbox within w_inh302w01_basetype
integer x = 1934
integer y = 580
integer width = 1929
integer height = 820
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Script View"
end type

type gb_5 from groupbox within w_inh302w01_basetype
integer x = 27
integer y = 1408
integer width = 3854
integer height = 700
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "OutPut"
end type

type mle_describe from multilineedit within w_inh302w01_basetype
integer x = 59
integer y = 80
integer width = 3753
integer height = 472
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
boolean autohscroll = true
boolean autovscroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_1 from groupbox within w_inh302w01_basetype
integer x = 27
integer y = 16
integer width = 3831
integer height = 568
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Description"
end type

