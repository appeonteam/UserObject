$PBExportHeader$uyivjghk.sra
$PBExportComments$Generated Application Object
forward
global type uyivjghk from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type uyivjghk from application
string appname = "uyivjghk"
end type
global uyivjghk uyivjghk

on uyivjghk.create
appname = "uyivjghk"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on uyivjghk.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

