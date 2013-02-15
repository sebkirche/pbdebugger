$PBExportHeader$iterator.sru
forward
global type iterator from nonvisualobject
end type
end forward

global type iterator from nonvisualobject autoinstantiate
end type

type variables
powerobject ipo_array[]
long il_next = 0
end variables

forward prototypes
public function boolean hasnext ()
public function powerobject getnext ()
public subroutine _add (powerobject apo_item)
public function long count ()
public subroutine rewind ()
public function powerobject getat (long al_index)
end prototypes

public function boolean hasnext ();return il_next <> 0
end function

public function powerobject getnext ();long ll_next 
ll_next = il_next
il_next++
if il_next>upperbound( ipo_array[] ) then il_next = 0
return ipo_array[ ll_next ]
end function

public subroutine _add (powerobject apo_item);ipo_array[ upperbound( ipo_array[] ) + 1 ] = apo_item
il_next = lowerbound( ipo_array[] )
end subroutine

public function long count ();return upperbound(ipo_array[])

end function

public subroutine rewind ();il_next = lowerbound( ipo_array[] )
end subroutine

public function powerobject getat (long al_index);#IF DEFINED DEBUG THEN
	TRY
		return ipo_array[ al_index ]
	CATCH(RunTimeError rtex)
		MessageBox( classname(), rtex.getmessage() )
		powerobject lpow_null
		return lpow_null
	END TRY
#ELSE
	return ipo_array[ al_index ]
#END IF
end function

event constructor;/*
Author:	GeNi
Date: 		6/11/8
--------------------
Class Iterator
*/

end event

on iterator.create
call super::create
TriggerEvent( this, "constructor" )
end on

on iterator.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

