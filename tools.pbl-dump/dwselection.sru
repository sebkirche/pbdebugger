$PBExportHeader$dwselection.sru
forward
global type dwselection from nonvisualobject
end type
end forward

global type dwselection from nonvisualobject
end type
global dwselection dwselection

type variables
private:
long il_row
long il_column
string is_columnName
end variables

forward prototypes
public function long getrow ()
public function long getcolumn ()
public function string getcolumnname ()
public subroutine setselection (long row, long column, datawindow adw)
end prototypes

public function long getrow ();return il_row
end function

public function long getcolumn ();return il_column
end function

public function string getcolumnname ();return is_columnname
end function

public subroutine setselection (long row, long column, datawindow adw);il_row = row
il_column = column
is_columnname = adw.describe("#"+string( il_column )+".name" )
end subroutine

on dwselection.create
call super::create
TriggerEvent( this, "constructor" )
end on

on dwselection.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

