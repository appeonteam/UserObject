$PBExportHeader$hj.sra
$PBExportComments$Generated Application Object
forward
global type hj from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type hj from application
string appname = "hj"
end type
global hj hj

on hj.create
appname = "hj"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on hj.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

