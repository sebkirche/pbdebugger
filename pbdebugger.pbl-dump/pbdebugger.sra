$PBExportHeader$pbdebugger.sra
$PBExportComments$Generated Application Object
forward
global type pbdebugger from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
long gl_debug_message = 4

end variables

global type pbdebugger from application
string appname = "pbdebugger"
end type
global pbdebugger pbdebugger

type prototypes

end prototypes

on pbdebugger.create
appname="pbdebugger"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on pbdebugger.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_mdi_frame)

end event

