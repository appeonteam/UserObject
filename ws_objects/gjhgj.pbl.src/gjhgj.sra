﻿$PBExportHeader$gjhgj.sra
$PBExportComments$Generated Application Object
forward
global type gjhgj from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type gjhgj from application
string appname = "gjhgj"
end type
global gjhgj gjhgj

on gjhgj.create
appname = "gjhgj"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on gjhgj.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

