$PBExportHeader$w_user_object3.srw
forward
global type w_user_object3 from w_base_case
end type
type cb_1 from commandbutton within w_user_object3
end type
end forward

global type w_user_object3 from w_base_case
cb_1 cb_1
end type
global w_user_object3 w_user_object3

type variables
error ie_err
end variables
forward prototypes
public subroutine of_testcase_point_module ()
end prototypes

public subroutine of_testcase_point_module ();//==============================================================================
// 
// Copyright © 2017 Appeon Limited and its subsidiaries.  All rights reserved.
// 
//------------------------------------------------------------------------------
// Function: of_testcase_point_module
//------------------------------------------------------------------------------
// Description:
//
//------------------------------------------------------------------------------
// Arguments:
//
//------------------------------------------------------------------------------
// Returns:  (None)
//
//------------------------------------------------------------------------------
// Author:         Mark            Date: 2017-03
//------------------------------------------------------------------------------
// Revision History:
//                                       1.0   Initial version
//==============================================================================
string 		ls_array[], ls_item, ls_result, ls_temp, ls_temp2, ls_null
long			ll_bound, i , ll_tmp, ll_null, ll_position
string 		ls_file, ls_fullname,ls_header,ls_url,ls_rtn,ls_postevt
integer 		li_rtn, li_col,li_port
boolean		lbn_flag 
Date			ld_date
Datetime		ldt_datatime
time			lt_time
Decimal		ldc_data
blob  			lbb_data

soinetw02_inet_create  lso_inet1
soinetw02_inet_destroy  lso_inet2
soinetw03_inet_fun  iso_inet
soinetw05_inetresult iso_result
soinetw06_inetresult iso_result2



is_log = ''
ls_result = ''
ll_bound =0 
setnull(ll_null)
SetNull(ls_null)

//ls_array[Upperbound(ls_array) + 1 ] = "Function HyperLinkToURL for Object inet"			//需要手动关闭浏览器窗口
ls_array[Upperbound(ls_array) + 1 ] = "Constructor Event of inet"                                    //测试inet对象的constructor事件
ls_array[Upperbound(ls_array) + 1 ] = "Destructor Event of inet"                                      //测试inet对象的destructor事件
ls_array[Upperbound(ls_array) + 1 ] = "Function Classname of inet"                                 //测试inet对象的Classname函数
ls_array[Upperbound(ls_array) + 1 ] = "Function Getparent of inet"                                  //测试inet对象的Getparent函数
ls_array[Upperbound(ls_array) + 1 ] = "Function Postevent of inet"                                  //测试inet对象的Postevent函数
ls_array[Upperbound(ls_array) + 1 ] = "Function Triggerevent of inet"                              //测试inet对象的Triggerevent函数
ls_array[Upperbound(ls_array) + 1 ] = "Function Typeof of inet"                                      //测试inet对象的Typeof函数
ls_array[Upperbound(ls_array) + 1 ] = "1. Function Geturl of inet"                                    //测试inet对象的Geturl函数
ls_array[Upperbound(ls_array) + 1 ] = "2. Function Geturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "3. Function Geturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "4. Function Geturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "5. Function Geturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "1. Function Posturl of inet"                                  //测试inet对象的Posturl函数
ls_array[Upperbound(ls_array) + 1 ] = "2. Function Posturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "3. Function Posturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "4. Function Posturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "5. Function Posturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "6. Function Posturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "7. Function Posturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "8. Function Posturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "9. Function Posturl of inet"
ls_array[Upperbound(ls_array) + 1 ] = "10. Function Posturl of inet"


ll_bound  = Upperbound(ls_array)
for i = 1 to ll_bound
	Yield ( )
	ls_item = ls_array[i]
	of_recordtestpoint(is_testcasename+ " "+ ls_array[i]+" today: "+string(today())+" now:"+string(now())+" ~r~n")	
	is_log = ''
	ls_temp = ''
	li_rtn = 0 
	ls_temp2 = ''
	ll_tmp = 0
	choose case lower(ls_item)
//		case lower("Function HyperLinkToURL for Object inet")
//			is_type= "browser"
//			timer(1) 
//			Inet      linet_net					
//			ls_url = "http://appeonserver:81"
//			linet_net = create inet
//			li_rtn = linet_net.HyperLinkToURL(ls_url)
//			destroy linet_net
//			ls_result += wf_result_add(ls_item, " ", not isnull(li_rtn) and li_rtn = 1)		
		
		case lower("Constructor Event of inet")      
			li_rtn=0			
			lso_inet1 = Create soinetw02_inet_create
			li_rtn= lso_inet1.event constructor( )      
			Destroy lso_inet1			
			ls_result += wf_result_add(ls_item, " ", not isnull(li_rtn) and li_rtn = 1)
			
		case lower("Destructor Event of inet")
			li_rtn=0			
			lso_inet2 = Create soinetw02_inet_destroy
			li_rtn= lso_inet2.event destructor( )
			Destroy lso_inet2
			ls_result += wf_result_add(ls_item, " ", not isnull(li_rtn) and li_rtn = 1)
			
		case lower("Function Classname of inet")			
			iso_inet = create soinetw03_inet_fun
			ls_result += wf_result_add(ls_item, " ", iso_inet.classname()= "soinetw03_inet_fun")
			Destroy iso_inet
			
		case lower("Function Getparent of inet")				
			iso_inet = create soinetw03_inet_fun
			powerobject  lpo_object
			lpo_object = iso_inet.GetParent()
			IF isValid(lpo_object) THEN
				ls_rtn=lpo_object.classname()
			else
				setnull(ls_rtn)
			end if
			Destroy iso_inet
			ls_result += wf_result_add(ls_item, " ", isnull(ls_rtn)=true)
			
		case lower("Function Postevent of inet")
			iso_inet = create soinetw03_inet_fun			
			trigevent lte_post
			setnull(ls_postevt)
			setnull(lte_post)
			ls_result += wf_result_add(ls_item, " ", iso_inet.PostEvent('Constructor') and not iso_inet.PostEvent('open') and isnull(iso_inet.PostEvent(ls_postevt)) and not iso_inet.PostEvent(Destructor!) and not iso_inet.PostEvent(close!) and isnull(iso_inet.PostEvent(lte_post)))
			Destroy iso_inet
			
		case lower("Function Triggerevent of inet")
			iso_inet = create soinetw03_inet_fun
			ls_result += wf_result_add(ls_item, " ", iso_inet.TriggerEvent('Destructor')= 1 and iso_inet.TriggerEvent('open')=-1 and isnull(iso_inet.TriggerEvent(ls_postevt)) and iso_inet.TriggerEvent(Destructor!)=-1 and iso_inet.TriggerEvent(close!)=-1 and isnull(iso_inet.TriggerEvent(lte_post)))
			Destroy iso_inet
			
		case lower("Function Typeof of inet")
			iso_inet = create soinetw03_inet_fun
			object  lo_obj
			lo_obj = iso_inet.TypeOF()
			ls_result += wf_result_add(ls_item, " ",lo_obj = Inet!)
			Destroy iso_inet
		
		case lower("1. Function Geturl of inet")
			iso_inet = create soinetw03_inet_fun
			iso_result = create soinetw05_inetresult
			setnull(ls_url)
			li_rtn=0
			li_rtn = iso_inet.GetURL(ls_url,iso_result)			//第一个参数为null
			ls_result += wf_result_add(ls_item, " ",isnull(li_rtn))
			Destroy iso_inet
			
		case lower("2. Function Geturl of inet")
			iso_inet = create soinetw03_inet_fun
			soinetw05_inetresult  lso_inetresult
			SetNULL(lso_inetresult)
			li_rtn=0
			ls_url = "http://appeonserver:81"
			li_rtn = iso_inet.GetURL(ls_url,lso_inetresult)        //第二个参数为null			
			ls_result += wf_result_add(ls_item, " ",isnull(li_rtn))
			Destroy iso_inet
			
		case lower("3. Function Geturl of inet")
			iso_result = create soinetw05_inetresult
			iso_inet = create soinetw03_inet_fun
			setnull(li_rtn)
			ls_url = "http://192.0.1.74:80"
			li_rtn = iso_inet.GetURL(ls_url,iso_result)             //url参数为有效网页URL地址
			ls_result += wf_result_add(ls_item, " ",not isnull(li_rtn) and li_rtn=1)
			Destroy iso_inet
			Destroy iso_result			
			
		case lower("4. Function Geturl of inet")
			iso_result = create soinetw05_inetresult
			iso_inet = create soinetw03_inet_fun
			setnull(li_rtn)
			ls_url = "192.0.1.74:80"
			li_rtn = iso_inet.GetURL(ls_url,iso_result)             //url参数为不含HTTP头的URL地址
			ls_result += wf_result_add(ls_item, " ",not isnull(li_rtn) and li_rtn=-1)
			Destroy iso_inet
			Destroy iso_result
			
		case lower("5. Function Geturl of inet")		
			iso_result = create soinetw05_inetresult
			iso_inet = create soinetw03_inet_fun
			setnull(li_rtn)
			ls_url = "http://192.0.1.74:81"
			li_rtn = iso_inet.GetURL(ls_url,iso_result)             //url参数为无效网页URL地址
			ls_result += wf_result_add(ls_item, " ",not isnull(li_rtn) and li_rtn=-1)         //内网环境返回-1，内网代理环境返回1
			Destroy iso_inet
			Destroy iso_result
			
		case lower("1. Function Posturl of inet")	
			iso_result2 = create soinetw06_inetresult
			iso_inet = create soinetw03_inet_fun
			lbb_data =  Blob("user=ouyangwu&pwd=123456")
			ls_URL	=	"http://192.0.1.74:80"
			ls_header = "Content-Type: " + "text/html~n" + " Content-Length: " + String( len(lbb_data) ) + "~n~n"
			SetNULL(ls_URL)
			li_rtn = iso_inet.PostURL(ls_URL,lbb_data,ls_header,8080,iso_result2)      //指定urlname参数为NULL
			ls_result += wf_result_add(ls_item, " ",isnull(li_rtn))
			Destroy iso_inet
			Destroy iso_result2
			
		case lower("2. Function Posturl of inet")		
			iso_result2 = create soinetw06_inetresult
			iso_inet = create soinetw03_inet_fun
			lbb_data =  Blob("user=ouyangwu&pwd=123456")
			ls_URL	=	"http://192.0.1.74:80"
			ls_header = "Content-Type: " + "text/html~n" + " Content-Length: " + String( len(lbb_data) ) + "~n~n"
			SetNULL(lbb_data)
			li_rtn = iso_inet.PostURL(ls_URL,lbb_data,ls_header,8080,iso_result2)      //指定urldata参数为NULL
			ls_result += wf_result_add(ls_item, " ",isnull(li_rtn))
			Destroy iso_inet
			Destroy iso_result2
			
		case lower("3. Function Posturl of inet")	
			iso_result2 = create soinetw06_inetresult
			iso_inet = create soinetw03_inet_fun
			lbb_data =  Blob("user=ouyangwu&pwd=123456")
			ls_URL	=	"http://192.0.1.74:80"
			ls_header = "Content-Type: " + "text/html~n" + " Content-Length: " + String( len(lbb_data) ) + "~n~n"
			SetNULL(ls_header)
			li_rtn = iso_inet.PostURL(ls_URL,lbb_data,ls_header,8080,iso_result2)      //指定headers参数为NULL
			ls_result += wf_result_add(ls_item, " ",isnull(li_rtn))
			Destroy iso_inet
			Destroy iso_result2
			
		case lower("4. Function Posturl of inet")	
			iso_result2 = create soinetw06_inetresult
			iso_inet = create soinetw03_inet_fun
			lbb_data =  Blob("user=ouyangwu&pwd=123456")
			ls_URL	=	"http://192.0.1.74:80"
			ls_header = "Content-Type: " + "text/html~n" + " Content-Length: " + String( len(lbb_data) ) + "~n~n"
			SetNULL(li_port)
			li_rtn = iso_inet.PostURL(ls_URL,lbb_data,ls_header,li_port,iso_result2)      //指定Serverport参数为NULL
			ls_result += wf_result_add(ls_item, " ",li_rtn=1)
			Destroy iso_inet
			Destroy iso_result2
			
		case lower("5. Function Posturl of inet")
			iso_inet = create soinetw03_inet_fun
			soinetw06_inetresult  lso_resultdata
			lbb_data =  Blob("user=ouyangwu&pwd=123456")
			ls_URL	=	"http://192.0.1.74:80"
			ls_header = "Content-Type: " + "text/html~n" + " Content-Length: " + String( len(lbb_data) ) + "~n~n"
			SetNULL(lso_resultdata)
			li_rtn = iso_inet.PostURL(ls_URL,lbb_data,ls_header,8080,lso_resultdata)      //指定data参数为NULL
			ls_result += wf_result_add(ls_item, " ",isnull(li_rtn))
			Destroy iso_inet			
			
		case lower("6. Function Posturl of inet")
			iso_result2 = create soinetw06_inetresult
			iso_inet = create soinetw03_inet_fun
			lbb_data =  Blob("user=ouyangwu&pwd=123456")
			ls_URL	=	"http://192.0.1.74:80"
			ls_header = "Content-Type: " + "text/html~n" + " Content-Length: " + String( len(lbb_data) ) + "~n~n"			
			setnull(li_rtn)
			li_rtn = iso_inet.PostURL(ls_URL,lbb_data,ls_header,iso_result2)      //指定urlname参数为有效的Http头URL地址
			ls_result += wf_result_add(ls_item, " ",li_rtn=1)
			Destroy iso_inet
			Destroy iso_result2
			
		case lower("7. Function Posturl of inet")
			iso_result2 = create soinetw06_inetresult
			iso_inet = create soinetw03_inet_fun
			lbb_data =  Blob("user=ouyangwu&pwd=123456")
			ls_URL	=	"192.0.1.74:80"
			ls_header = "Content-Type: " + "text/html~n" + " Content-Length: " + String( len(lbb_data) ) + "~n~n"			
			setnull(li_rtn)
			li_rtn = iso_inet.PostURL(ls_URL,lbb_data,ls_header,iso_result2)      //指定urlname参数为有效的不带Http头URL地址
			ls_result += wf_result_add(ls_item, " ",li_rtn=-5)
			Destroy iso_inet
			Destroy iso_result2
			
		case lower("8. Function Posturl of inet")
			iso_result2 = create soinetw06_inetresult
			iso_inet = create soinetw03_inet_fun
			lbb_data =  Blob("user=ouyangwu&pwd=123456")
			ls_URL	=	"http://test.qwert.cc"
			ls_header = "Content-Type: " + "text/html~n" + " Content-Length: " + String( len(lbb_data) ) + "~n~n"			
			setnull(li_rtn)
			li_rtn = iso_inet.PostURL(ls_URL,lbb_data,ls_header,iso_result2)      //指定urlname参数为无效的URL地址
			ls_result += wf_result_add(ls_item, " ",li_rtn=-6)                           //内网环境返回-6
			Destroy iso_inet
			Destroy iso_result2
			
		case lower("9. Function Posturl of inet")
			iso_result2 = create soinetw06_inetresult
			iso_inet = create soinetw03_inet_fun
			lbb_data =  Blob("user=ouyangwu&pwd=123456")
			ls_URL	=	"https://192.0.1.74:80"
			ls_header = "Content-Type: " + "text/html~n" + " Content-Length: " + String( len(lbb_data) ) + "~n~n"			
			setnull(li_rtn)
			li_rtn = iso_inet.PostURL(ls_URL,lbb_data,ls_header,iso_result2)      //指定urlname参数为不支持的HTTPS的URL
			ls_result += wf_result_add(ls_item, " ",li_rtn=-5)
			Destroy iso_inet
			Destroy iso_result2
			
		case lower("10. Function Posturl of inet")
			iso_result2 = create soinetw06_inetresult
			iso_inet = create soinetw03_inet_fun
			lbb_data =  Blob("")
			ls_URL	=	"http://192.0.1.74:80"
			ls_header = ""
			setnull(li_rtn)
			li_rtn = iso_inet.PostURL(ls_URL,lbb_data,ls_header,iso_result2)      //指定urlname参数为有效URL，urlData为空，Headers为空
			ls_result += wf_result_add(ls_item, " ",li_rtn=1)
			Destroy iso_inet
			Destroy iso_result2
			
	end choose 
next 

is_resultlog += ls_result

end subroutine

on w_user_object3.create
int iCurrent
call super::create
this.cb_1=create cb_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_1
end on

on w_user_object3.destroy
call super::destroy
destroy(this.cb_1)
end on

type cb_1 from commandbutton within w_user_object3
integer x = 507
integer y = 400
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

