$PBExportHeader$nv_dwcontrol.sru
forward
global type nv_dwcontrol from nonvisualobject
end type
end forward

global type nv_dwcontrol from nonvisualobject autoinstantiate
end type

type variables
datawindow idw_parent
string is_control = "datawindow"
string is_dataobject = ""
string is_classname = "datawindow"
boolean ib_canProcess = true
end variables

forward prototypes
public subroutine setcontrol (ref datawindow adw_parent, string as_controlname)
public function anyiterator getproperties ()
public function string getproperty (string as_property)
public function string gettype ()
public subroutine setproperty (string as_property, string as_value)
public function iterator getcontrols (datawindow adw_parent)
public function powerobject getparent ()
public function string classname ()
public subroutine getproperties (ref anyiterator iter)
private function boolean canprocess ()
end prototypes

public subroutine setcontrol (ref datawindow adw_parent, string as_controlname);idw_parent = adw_parent
is_control = as_controlname
is_classname = as_controlname
is_dataobject = ""
if pos( is_control, ':' ) > 0 then
	is_dataobject = pop_str( is_control , ':' )
else
	if keyDown(KeyControl!) then	/** Very SIOUX, maybe an additionnal arg will be welcomed... **/
		is_dataobject = adw_parent.dataobject		
		is_classname = is_dataobject + ":" + is_control
		//If Empty, We should try to get an MD5 key based on COLUMNS's DBNAMES + TABLES... + DW.type(grid,...)
	end if
end if

ib_canprocess =  (is_dataobject="" or is_dataobject = adw_parent.dataobject)
	
end subroutine

public function anyiterator getproperties ();AnyIterator iter
if canProcess( ) then
	//return the properties list of the control.
	string ls_properties
	uo_regex lnv_regex
	lnv_regex = create uo_regex
	lnv_regex.initialize( "([^\s]+)", true, false)
	ls_properties = idw_parent.describe( is_control + ".attributes" )
	if lnv_regex.search( ls_properties )>0 then
		long i
		for i = 1 to lnv_regex.matchcount( )
			iter._add( lnv_regex.group( i, 1))
		next
	end if
	destroy lnv_regex
end if
return iter
end function

public function string getproperty (string as_property);string ls_property=""
if canProcess( ) then
	//debug_message( classname() , "getProperty(" + as_property + ")" )
	if as_property = "accessibledescription" or &
	   as_property = "accessiblename" or &
	   as_property = "accessiblerole" then
	//	debug_message( classname() , "ARF!!!! Explosing if I do a Describe on it !!!" )
		return ""
	end if
	ls_property = idw_parent.describe( is_control+"."+as_property )
	if left(ls_property,1) = '"' and right(ls_property,1)='"' then
		ls_property = mid( ls_property, 2, len( ls_property ) - 2 )
	end if
	if ls_property = "!" or ls_property = "?" then 
		return ""
	end if
end if
//debug_message( classname() , "~tgot: " + ls_property )
return ls_property

end function

public function string gettype ();return this.GetProperty( "type" )
end function

public subroutine setproperty (string as_property, string as_value);if canProcess( ) then
	idw_parent.modify( is_control + "." + as_property + "='" + fastreplaceall( as_value, "'", "~~'" ) + "'" )
end if
end subroutine

public function iterator getcontrols (datawindow adw_parent);//return the control list in an iterator of nv_dwcontrol all datawindow controls...
iterator iter
if canProcess( ) then
	uo_regex lnv_regex
	lnv_regex = create uo_regex
	lnv_regex.initialize( "([^\s]+)", true, false)
	if lnv_regex.search( adw_parent.describe("datawindow.objects") ) > 0 then
		long i
		for i = 1 to lnv_regex.matchcount( )
			nv_dwcontrol ldwcontrol
			ldwcontrol.setcontrol( adw_parent , lnv_regex.group( i, 1 ) )
			iter._add( ldwcontrol )
		next
	end if
	
	destroy lnv_regex
end if
return iter
end function

public function powerobject getparent ();return idw_parent
end function

public function string classname ();return is_classname
end function

public subroutine getproperties (ref anyiterator iter);//return the properties list of the control.
string ls_properties
if canProcess( ) then
	uo_regex lnv_regex
	lnv_regex = create uo_regex
	lnv_regex.initialize( "([^\s]+)", true, false)
	ls_properties = idw_parent.describe( is_control + ".attributes" )
	if lnv_regex.search( ls_properties )>0 then
		long i
		for i = 1 to lnv_regex.matchcount( )
			iter._add( lnv_regex.group( i, 1) )
		next
	end if
	destroy lnv_regex
end if


end subroutine

private function boolean canprocess ();return ib_canProcess
end function

on nv_dwcontrol.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nv_dwcontrol.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

