$PBExportHeader$hjh.sra
$PBExportComments$Generated Application Object
forward
global type hjh from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type hjh from application
string appname = "hjh"
end type
global hjh hjh

on hjh.create
appname = "hjh"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on hjh.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

