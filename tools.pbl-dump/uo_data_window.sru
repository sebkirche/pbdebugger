$PBExportHeader$uo_data_window.sru
$PBExportComments$User object: Data window (author=MK)(state=GAMMA)
forward
global type uo_data_window from datawindow
end type
end forward

global type uo_data_window from datawindow
integer width = 1591
integer height = 576
integer taborder = 1
boolean hscrollbar = true
boolean vscrollbar = true
boolean hsplitscroll = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
event oe_dwnkey pbm_dwnkey
event ondataobjectchanged ( string old_dataobject,  string new_dataobject )
end type
global uo_data_window uo_data_window

type variables
//Used to reposition the focused row/column if possible after reset/retrieve
private:
long il_mem_row
long il_mem_col
long il_mem_vert_Scroll_Pos
long il_mem_hor_Scroll_Pos
boolean ib_redraw = true		//setredraw( currecnt value )
long il_redraw_deep = 0
string is_last_dataobject
string gs_company = "cw"
string gs_appname = "pbdebugger"

public:
boolean ib_editmask_autoselect = true
boolean ib_auto_translate = true

//alternative row colors
boolean ib_alternative_row_colors = true		// allow to colorize odd and even lines 
long il_linecolor_odd = 16777215				//white
long il_linecolor_even = 16773360			//light blue



//Undo buffers 
/*
	on EDIT ONLY !
	--> as son as we delete a line, add a line it should be clear !
	--> or get the ability to keep which REAL ROW ID the change is
	--> get a datastore with exactly the same syntax to store row before change

string is_undo_buffer_value[]
long il_undo_buffer_col[]
long il_undo_buffer_row[]		
*/
end variables

forward prototypes
public subroutine savepositionstate ()
public subroutine restorepositionstate ()
public function integer reset ()
public function string enquote (string as_str)
public function string get_dwo_attribute (long al_row, long al_colid, string as_attribute)
public function string get_dwo_attribute (long al_colid, string as_attribute)
public function integer createfromsql (string as_query)
public function string of_get_objectname ()
public subroutine of_setinfo (string as_key, string as_value)
public function integer paste ()
public function string of_get_printlayout ()
public function string of_getinfo (string as_key)
public function integer copy ()
public function long getdwselection (ref dwselection adws_selection[])
public function integer getrow (boolean ab_gridmode)
public function integer of_get_computes (ref string as_computes[], boolean ab_onlyvisible)
public function long of_get_columnid (string as_column_name)
public function string of_get_expression (string as_column, string as_attribut)
public function string of_set_expression (string as_column, string as_attribut, string as_expression)
public function string lookupdisplay (long row, string as_expression)
public function integer setredraw (boolean f)
public function boolean getredraw ()
public function integer filter (string as_filter)
public function integer sort (string as_sort)
public function string get_insert_statement (long row)
public function integer settransobject (transaction t)
public function integer settrans (transaction t)
public subroutine of_translate ()
public function string get_dwo_attribute (string as_control, string as_attribute)
public function string get_dwo_attribute (long al_row, string as_control, string as_attribute)
public subroutine sharedatachilds (datawindow adw_source)
public function string of_get_dynamic_dw_id ()
public function string of_get_objectfullname ()
public function string of_get_global_info (string as_key)
public subroutine of_set_global_info (string as_key, string as_value)
public subroutine of_del_global_info (string as_key)
public subroutine of_set_alternative_colors (long al_odd, long al_even)
public function boolean is_grid ()
public subroutine of_set_alternative_colors ()
end prototypes

event oe_dwnkey;////avoid to enter data in some col when USER has selected cols with the mouse...
//if keydown(keyshift!) then
//	messagebox("debug : " + string(this.Object.datawindow.Selected.Mouse), "Selected controls : ~r~n" + string( this.Object.DataWindow.Selected ) )
//end if

if key = keyF9! and keydown(KeyShift!) and keydown(KeyControl!) and not isvalid(w_datawindow_expression_debug) then openwithparm( w_datawindow_expression_debug,this )

choose case key 
	case KeyShift!, KeyControl!, keyAlt!, &
			KeyF1!, KeyF2!, KeyF3!, KeyF4!, KeyF5!, KeyF6!, KeyF7!, KeyF8!, KeyF9!, KeyF10!, KeyF11!, KeyF12!
		return 0
	case else
		//continue
end choose

if lower(string(this.Object.datawindow.Selected.Mouse))="yes" then
	if string( this.Object.DataWindow.Selected ) <> "" then

//		dec da, db
//		da = this.object.Data.Primary.Current[ getrow(), getcolumn() ]
//		db =this.object.Data.Primary.Original[ getrow(), getcolumn() ]
//		this.object.Data.Primary.Current[ getrow(), getcolumn() ] = db

		this.Object.DataWindow.Selected = ""		//Annule la selection des colonnes par la souris
//		SetColumn( GetColumn() )

//		string s=""		
//		s = this.Object.DataWindow.Selected
//		this.Object.DataWindow.Selected = ""
//		GetParent().dynamic SetFocus()
//		SetColumn( GetColumn() )
//		this.Object.DataWindow.Selected = s
//		messagebox( gettext(), string(getitemdecimal( getrow(), getcolumn())) )
//		return 1	//avoid to get key
	end if
end if

return 0
end event

public subroutine savepositionstate ();//memorize current row & column, scroll pos
il_mem_row = GetRow()
il_mem_col = GetColumn()
il_mem_vert_Scroll_Pos = long( Describe("DataWindow.VerticalScrollPosition") )
il_mem_hor_Scroll_Pos = long ( Describe("DataWindow.HorizontalScrollPosition") )
end subroutine

public subroutine restorepositionstate ();//if necessary, reload position state
if il_mem_row>0 then
	if il_mem_row<= rowcount() then
		SetRow(il_mem_row )
		SetColumn(il_mem_col)
		Modify("DataWindow.VerticalScrollPosition="+string(il_mem_vert_Scroll_Pos) )
		Modify("DataWindow.HorizontalScrollPosition="+string( il_mem_hor_Scroll_Pos ) )
	end if
end if
end subroutine

public function integer reset ();savepositionstate( )
return super::reset()
end function

public function string enquote (string as_str);return fastreplaceall( as_str/*replaceall( as_str, "~~", "~~~~'")*/, "'", "~~'")
end function

public function string get_dwo_attribute (long al_row, long al_colid, string as_attribute);int i
string ls_retval = ""

ls_retval = describe( "#"+string(al_colid)+"."+as_attribute )
i = pos( ls_retval, "~t" )
if i>0 then
	//remove "expression" part; keep the real value.
	ls_retval = mid( ls_retval, i + 1 )
	if right(ls_retval, 1) = '"' then ls_retval = mid( ls_retval, 1, len(ls_retval) - 1 )
	ls_retval = describe( "evaluate(~"" + enquote( ls_retval ) + "~","+string(al_row)+")" )
else
	//remove quote
	ls_retval = fastreplaceall( ls_retval, "'", "" )	
end if

return lower( trim( ls_retval ) )
end function

public function string get_dwo_attribute (long al_colid, string as_attribute);int i
string ls_retval = ""

ls_retval = describe( "#"+string(al_colid)+"."+as_attribute )
i = pos( ls_retval, "~t" )
if i>0 then
	//remove "expression" part; keep the real value.
	ls_retval = mid( ls_retval, i + 1 )	//we return the expression if any !
else
	//remove quote
	ls_retval = fastreplaceall( ls_retval, "'", "" )
end if

return lower( trim( ls_retval ) )
end function

public function integer createfromsql (string as_query);/*
	create the datawindow from a sql query
	return 1 if ok; 0 otherwhise
*/

string ls_sql 
string ls_dw_syntax
string ls_error

ls_dw_syntax = SQLCA.SyntaxFromSQL(as_query, 'Style(Type=Grid)', ls_error)
if len(ls_error) > 0 then
	//their is an error in SQL Syntax / Database connection...
	return 0
end if
create( ls_dw_syntax , ls_error )
if len(ls_error) > 0 then
	//their is an error in DW syntax ( how possible in this case ??? :-) this test is in principe never used )
	return 0
end if
settransobject( sqlca )
//retrieve( )

return 1
end function

public function string of_get_objectname ();PowerObject	lpo_parent
String ls_object

// loop thru parents building object name
lpo_parent = this.GetParent()
ls_object = super::ClassName()
Do While lpo_parent.TypeOf() <> Window! and IsValid (lpo_parent)
	ls_object = lpo_parent.ClassName() + "." + ls_object
	lpo_parent = lpo_parent.GetParent()
Loop

if isvalid( lpo_parent ) then
	ls_object = lpo_parent.ClassName() + "." + ls_object
end if

Return ls_object
end function

public subroutine of_setinfo (string as_key, string as_value);//set info for this datawindow in the registry

String ls_regkey

ls_regkey  = "HKEY_CURRENT_USER\Software\" + gs_company
ls_regkey += "\" +gs_appname + "\Datawindows\" + of_get_objectname( )

// set value in registry
RegistrySet(ls_regkey, as_key, RegBinary!, Blob( as_value ))
end subroutine

public function integer paste ();string ls_clipboard
long i, j, row, column, err, current_column
string ls_line, ls_column

row = this.getrow() - 1
column = this.getcolumn( )

if row < 0 or column < 1 then return 0

ls_clipboard = fastreplaceall( clipboard( ), "~r", "" )	//Remove all ~r => char(13) which are part of WINDOWS EndOfLine : char(13)+char(10) \r\n ~r~n ... 0D 0A ...

do
	if ls_line="" then
		i = pos( ls_clipboard, "~n" )
		if i>0 then
			ls_line = mid( ls_clipboard, 1, i - 1)
			ls_clipboard = mid( ls_clipboard, i+1 )
		else
			ls_line = ls_clipboard
			ls_clipboard = ""
		end if
		row++
		current_column = column
	end if
	i = pos( ls_line, "~t" )
	if i>0 then
		ls_column = mid( ls_line, 1, i - 1)
		ls_line = mid( ls_line, i+1 )
	else
		ls_column = ls_line
		ls_line = ""
	end if
	
	if get_dwo_attribute( row, current_column, "protect")="0" then
		choose case upper( mid( get_dwo_attribute( row, current_column , "ColType"), 1, 5) )
			case "CHAR("
				err = this.SetItem( row, current_column, ls_column )
			case "DECIM", "INT", "LONG", "NUMBE", "REAL", "ULONG"
				err = this.SetItem( row, current_column, double( fastreplaceall( ls_column, " ", "") ) )
			case "DATE"
				err = this.SetItem( row, current_column, Date(ls_column) )
			case "DATET"
				err = this.SetItem( row, current_column, DateTime(ls_column) )
			case "TIME"
				err = this.SetItem( row, current_column, Time(ls_column) )
			case "TIMES"
				debug_message( classname(), "Don't math ColType : " + get_dwo_attribute( row, current_column , "ColType") )
			case else
				debug_message( classname(), "Can't math ColType : " + get_dwo_attribute( row, current_column , "ColType") )
		end choose

	end if
		
	current_column ++
loop while ls_clipboard<>"" or ls_line<>""

return len( ls_clipboard )

end function

public function string of_get_printlayout ();//return a string containing all attributes we need to recreate correctly this layout at runtime
//all are separated with ";" and could be re-use directly in a modify statement.
string ls_settings
ls_settings = ""

// datawindow.
string ls_DatawindowAttributes[] = { "HorizontalScrollPosition", &
												"HorizontalScrollPosition2", "HorizontalScrollSplit", &
												"HideGrayLine", &
												"Print.Margin.Bottom", "Print.Margin.Left", "Print.Margin.Right", "Print.Margin.Top", &
												"Print.Orientation", &
												"Grid.Lines", "Print.Color", "Print.Copies", "Print.Collate", "Print.Preview.Zoom", "Zoom", & 
												"Print.Page.RangeInclude", "Print.Page.Range", &
												"Printer" }
// #i.					// ? 	"Visible", "TabSequence" // 	ID <> NAME ?
string ls_ColumnsAttributes[] = { "X", "Y", "Height", "WIDTH" }

int i, j
long ll_processing
ll_processing = long(describe("datawindow.processing"))
//skip geometry saving for non-grid DW
if mod(ll_processing,2) = 1 then
	for j = 1 to long( describe( "Datawindow.column.count" ) )
		if get_dwo_attribute( j, "X") <> "?" then
			for i=1 to upperbound(ls_ColumnsAttributes[])
				ls_settings += get_dwo_attribute( j, "name") + "." + ls_ColumnsAttributes[i] + &
						"='" + enquote( get_dwo_attribute( j, ls_ColumnsAttributes[i] ) ) + "'~r~n"
			next
		end if
	next
end if

for i=1 to upperbound(ls_DatawindowAttributes[])
	ls_settings +=  "datawindow." + ls_DatawindowAttributes[i] + &
			"='" + enquote( describe("datawindow." + ls_DatawindowAttributes[i]) ) + "'~r~n"
next

return ls_settings
end function

public function string of_getinfo (string as_key);//set info for this datawindow in the registry
string ls_value
String ls_regkey

//ls_regkey  = "HKEY_CURRENT_USER\Software\" + gs_company
//ls_regkey += "\" +gs_appname + "\Datawindows\" + of_get_objectname( )
// set value in registry
//ls_value = ""
//Blob lbl_value
//RegistryGet(ls_regkey, as_key, RegBinary!, lbl_value)
//ls_value = string( lbl_value )

ls_regkey  = "Software\" + gs_company
ls_regkey += "\" +gs_appname + "\Datawindows\" + of_get_objectname( )
CWRegistryGet( "HKEY_CURRENT_USER", ls_regkey, as_key, ls_value )

return ls_value
end function

public function integer copy ();if lower( this.describe("Datawindow.Selected.Mouse") ) <> "yes" or this.describe("Datawindow.Selected")="" then
	return super::copy()
end if

int i
string ls_newdata
if keydown(KeyShift!) then
	ls_newdata = this.describe("Datawindow.Selected")
else
	ls_newdata = this.describe("Datawindow.Selected.Data")
end if
i = len(ls_newdata)
if i>0 then
	::clipboard( ls_newdata )
else
	i = -1
end if

return i
end function

public function long getdwselection (ref dwselection adws_selection[]);string ls_column, ls_range, ls_columnlist
long i, j, index
long startrow, endrow

dwselection ldws_empty_selection[]

adws_selection[] = ldws_empty_selection[]
index = 1
ls_column = string( this.Object.DataWindow.Selected )
//Il n'y a pas de multi selection
if ls_column = "" or ls_column="!" then
	ls_column = this.getcolumnname()	
	adws_selection[index] = create dwselection
	adws_selection[index].setselection( getrow(), this.getcolumn( ) , this)
	index ++
else
	//extraction de la multi selection... du format "startrow1/endrow1/startobj1/endobj1;startrow2/endrow2/startobj2/endobj2;..."
	ls_column += ";"
	do while ls_column<>""
		i = pos( ls_column, ";" )
		if i>0 then
			//extract a range
			ls_range = mid( ls_column, 1, i - 1 ) + "/"
			//remove current range from ls_column
			ls_column = mid( ls_column, i+1 )
			//extract range informations
			startrow = long( pop_str( ls_range, "/") )
			endrow = long( pop_str( ls_range, "/") )
			//ensure the order of start / end rows
			if startrow > endrow then 
				i = endrow
				endrow = startrow
				startrow = i
			end if
			//memorise columns list for this range...			
			ls_columnlist = ls_range			
			//Adding now this range of selected controls
			for i=startrow to endrow
				ls_range = ls_columnlist
				do while ls_range<>""
					j = long(describe( pop_str( ls_range, "/")+".id" ) )
					adws_selection[index] = create dwselection
					adws_selection[index].setselection( i, j , this)
					index ++
				loop
			next
			
		end if
	loop
end if

return upperbound( adws_selection[] )
end function

public function integer getrow (boolean ab_gridmode);/*
 * Return the currentRow, and if the parameter ab_gridmode is set to true,
 * it can parse the mousedata struct of a grid datawindow to detect if a row is "selected" but 
 * don't have the focus( e.g., no column of this row is editable/focusable )
 */
if ab_gridmode then
	dwselection adws_selection[]
	this.getdwselection( adws_selection[] )
	if upperbound( adws_selection[] ) > 0 then
		//But it return only the first row !
		return adws_selection[1].getrow( )
	end if
end if

return getrow()
end function

public function integer of_get_computes (ref string as_computes[], boolean ab_onlyvisible);//Return the list of compute control names in the current datawindow in the array of string given in arguments,
//you can specify if you want only the visible computes or not.

string ls_empty[], ls_desc, ls_name
long i = 0
as_computes[] = ls_empty[]

if ab_onlyvisible then
	ls_desc = "datawindow.visualobjects"
else
	ls_desc = "datawindow.objects"
end if
ls_desc = describe( ls_desc ) + "~t"	//do not need to write special code to the special case of the last occurence :-p
do 
	i = pos( ls_desc, "~t" )
	if i>0 then
		ls_name = mid(ls_desc, 1, i - 1)
		ls_desc = mid(ls_desc, i+1)		
		if describe( ls_name + ".type" ) = "compute" then
			 as_computes[ upperbound(as_computes[]) +1 ] = ls_name
		end if
	end if
loop while i > 0

return upperbound(as_computes[])
end function

public function long of_get_columnid (string as_column_name);return long( describe( as_column_name+".id" ) )
end function

public function string of_get_expression (string as_column, string as_attribut);string ls_expression
long i

ls_expression = describe( as_column+"."+as_attribut )

i = pos( ls_expression, "~t" )
if i>0 then
	ls_expression = mid( ls_expression, i+1, len( ls_expression ) - 1 - i )
//else	
//	ls_expression = ""
end if

return ls_expression
end function

public function string of_set_expression (string as_column, string as_attribut, string as_expression);long i

i = pos( as_expression, "~t" )
if i>0 then
	//DO NOTHING, it is already formated correctly...
else	
	as_expression = "~"0~t" + fastreplaceall( as_expression, '"', '~~"' ) + "~""
end if

return this.modify( as_column+"."+as_attribut+"="+as_expression )
end function

public function string lookupdisplay (long row, string as_expression);return describe("evaluate('"+fastreplaceall(as_expression,"'","~~'")+"',"+string(row)+")")
end function

public function integer setredraw (boolean f);ib_redraw = f

//if f then
//	il_redraw_deep --
//	if il_redraw_deep > 0 then
//		return 1	//skip
//	end if
//else
//	il_redraw_deep ++
//end if

return super::setRedraw( f )
end function

public function boolean getredraw ();return ib_redraw
end function

public function integer filter (string as_filter);if setfilter( as_filter ) <> 1 then
	return -1
end if

return filter()
end function

public function integer sort (string as_sort);if setsort( as_sort ) <> 1 then
	return -1
end if

return sort()
end function

public function string get_insert_statement (long row);//this function return an insert statement matching with the datastore properties for the given row.
string ls_sql, ls_values = ""
long i, c, ll_column_count
uo_regex lnv_regex
lnv_regex = create uo_regex
ls_sql = "INSERT INTO "+describe("datawindow.table.updatetable")+" ("

ll_column_count = long( describe("datawindow.column.count") )
for c = 1 to ll_column_count
	ls_sql += " "+describe( "#"+string(c)+".dbname" ) + ","
	if isnull( this.object.data[row, c] ) then
		ls_values += "null"
	else
		choose case lower(mid(describe( "#"+string(c)+".colType" ), 1, 5))
			case "char(", "char"
				ls_values += "'" + fastreplaceall( string(this.object.data[row, c]) , "'", "''" ) + "'"
			case "date"
				ls_values += "'" + string( this.object.data[row, c], "yyyy-mm-dd" ) + "'"
			case "datet", "times"
				ls_values += "'" + string( this.object.data[row, c], "yyyy-mm-dd hh:mm:ss" ) + "'"
			case "decim", "real"	//replace , by . if any...
				ls_values += fastreplaceall( "'" + string( this.object.data[row, c] ) + "'", ",", "." )
			case "int", "long", "numbe", "ulong"
				ls_values += "'" + string( this.object.data[row, c] ) + "'"
			case "time"
				ls_values += "'" + string( this.object.data[row, c], "hh:mm:ss" ) + "'"
			case else
				debug_message( classname(), "get_insert_statement : unknow colType = " + describe( "#"+string(c)+".colType" ) )
		end choose
	end if
	ls_values +=", "
next
ls_sql = mid(ls_sql, 1, len(ls_sql) - 1 ) + ") "
ls_values = mid(ls_values, 1, len(ls_values) - 2 )
lnv_regex.initialize( "[^.\s]+\.([^\s,]+)", true, true)
ls_sql = lnv_regex.replace( ls_sql, "\1" )		//supprime les préfixes de table eg. iml_tTP1.line_id => line_id

ls_sql += "VALUES(" + ls_values + " )"


destroy lnv_regex
return ls_sql
end function

public function integer settransobject (transaction t);if is_last_dataobject <> this.dataobject then
	string ls_last
	ls_last = is_last_dataobject
	is_last_dataobject = this.dataobject
	event ondataobjectchanged( ls_last, this.dataobject )
end if

if ib_auto_translate  then
	of_translate( )
end if

return super::setTransObject( t )
end function

public function integer settrans (transaction t);if is_last_dataobject <> this.dataobject then
	string ls_last
	ls_last = is_last_dataobject
	is_last_dataobject = this.dataobject
	event ondataobjectchanged( ls_last, this.dataobject )
end if

if ib_auto_translate  then
	of_translate( )
end if

return super::setTrans( t )
end function

public subroutine of_translate ();/**
 * This function allow to translate the datawindow again,
 * can be usefull when dataobject is changed or settransobject done...
 *
 **/
nv_poweraccessor lnv_accessor
boolean lb_redraw
lb_redraw = this.getRedraw( )
this.setRedraw( false )
//plexus.i_class_translator.translate( lnv_accessor.getParentwindow( this ),&
//	plexus.i_class_user.get_user_language() )
this.setRedraw( lb_redraw )
end subroutine

public function string get_dwo_attribute (string as_control, string as_attribute);int i
string ls_retval = ""

ls_retval = describe( as_control+"."+as_attribute )
i = pos( ls_retval, "~t" )
if i>0 then
	//remove "expression" part; keep the real value.
	ls_retval = mid( ls_retval, i + 1 )	//we return the expression if any !
else
	//remove quote
	ls_retval = fastreplaceall( ls_retval, "'", "" )
end if

return lower( trim( ls_retval ) )
end function

public function string get_dwo_attribute (long al_row, string as_control, string as_attribute);int i
string ls_retval = ""

ls_retval = describe( as_control+"."+as_attribute )
i = pos( ls_retval, "~t" )
if i>0 then
	//remove "expression" part; keep the real value.
	ls_retval = mid( ls_retval, i + 1 )
	if right(ls_retval, 1) = '"' then ls_retval = mid( ls_retval, 1, len(ls_retval) - 1 )
	ls_retval = describe( "evaluate(~"" + enquote( ls_retval ) + "~","+string(al_row)+")" )
else
	//remove quote
	ls_retval = fastreplaceall( ls_retval, "'", "" )	
end if

return lower( trim( ls_retval ) )
end function

public subroutine sharedatachilds (datawindow adw_source);//ask for each dddw's children to be shared if exists in both source and target.

//Get all Report | Column::DDDW objects of TARGET (this)
uo_regex lnv_regex
lnv_regex = create uo_regex
lnv_regex.initialize("([^\t]+)", true, false)
long i, ll_matches
string ls_control
datawindowchild ldwc_target, ldwc_source
ll_matches = lnv_regex.search( this.describe("Datawindow.Objects" ) )
for i = 1 to ll_matches
	ls_control = lnv_regex.match( i )
	if this.describe( ls_control+".type" ) = "report" or &
	(this.describe( ls_control+".type" ) = "column" and &
	 this.describe( ls_control+".dddw.Name" ) <> "!" ) then
		//try to share these childs
		if adw_source.GetChild( ls_control, ldwc_source ) <> 1 then continue
		if this.GetChild( ls_control, ldwc_target ) <> 1 then continue
		ldwc_source.sharedata( ldwc_target )
	end if
next
destroy lnv_regex
end subroutine

public function string of_get_dynamic_dw_id ();string ls_ret
string dwcols = ""
long i

for i = 1 to long( describe( "Datawindow.column.count" ) )
		dwcols += get_dwo_attribute(this, i, "dbname")
		dwcols += "~r~n"
next
ls_ret = of_md5(dwcols)
//outputdebugstring("dwcols ="+ dwcols)
//outputdebugstring("of_md5(dwcols) ="+ ls_ret)

return ls_ret

end function

public function string of_get_objectfullname ();String ls_object
ls_object = of_get_objectname( ) + ":"
if dataobject="" then
	ls_object+=describe("datawindow.table.updatetable")+":"
	ls_object+=of_get_dynamic_dw_id( )
else
	ls_object+=dataobject
end if
Return ls_object

end function

public function string of_get_global_info (string as_key);//set info for this datawindow in the registry
string ls_value
String ls_regkey

ls_regkey  = "Software\" + gs_company
ls_regkey += "\" +gs_appname + "\Datawindows\" + of_get_objectfullname( )
CWRegistryGet( "HKEY_CURRENT_USER", ls_regkey, as_key, ls_value )

return ls_value

end function

public subroutine of_set_global_info (string as_key, string as_value);//set info for this datawindow in the registry

String ls_regkey

ls_regkey  = "HKEY_CURRENT_USER\Software\" + gs_company
ls_regkey += "\" +gs_appname + "\Datawindows\" + of_get_objectfullname( )

// set value in registry
RegistrySet(ls_regkey, as_key, RegBinary!, Blob( as_value ))

end subroutine

public subroutine of_del_global_info (string as_key);//delete info for this datawindow in the registry

String ls_regkey

ls_regkey  = "HKEY_CURRENT_USER\Software\" + gs_company
ls_regkey += "\" +gs_appname + "\Datawindows\" + of_get_objectfullname( )

// set value in registry
RegistryDelete(ls_regkey, as_key)

end subroutine

public subroutine of_set_alternative_colors (long al_odd, long al_even);string ls_colorize

if not is_grid( ) then return

ib_alternative_row_colors = true
ls_colorize = "datawindow.detail.color='1000~tif(mod(getrow(),2)=0,%EVENCOL%, %ODDCOL%)'"
ls_colorize = fastreplaceall(ls_colorize, "%EVENCOL%", string(al_even))
ls_colorize = fastreplaceall(ls_colorize, "%ODDCOL%", string(al_odd))
modify(ls_colorize)

end subroutine

public function boolean is_grid ();
//Tells if the dw is in grid mode

/* from the 10.5 documentation :
0 - (Default) Form, group, n-up, or tabular
1 - Grid
2 - Label
3 - Graph
4 - Crosstab
5 - Composite
6 - OLE
7 - RichText
8 - TreeView
9 - TreeView with Grid
*/

int processing
processing = integer(describe("datawindow.processing"))

if processing = 1 or processing = 9 then
	return true
else
	return false
end if

end function

public subroutine of_set_alternative_colors ();of_set_alternative_colors(il_linecolor_odd, il_linecolor_even)

end subroutine

event dberror;long    l_sqldbcode  
string  s_sqlerrtext
long    l_sql_error_row
string  s_database_prefix
string  s_database_info
string  s_message_id
string  s_message
string  s_error_global
string  s_error_detail
string  s_title_global
string  s_title_detail
string  s_language
long    l_answer

beep(1)

datawindow     dw_current_dw
dw_current_dw  = this//plexus.i_class_window.get_current_datawindow()
s_language     = "F" //plexus.i_class_user.get_user_language()
//--------------------------------------------------------------------------------
// Save database eror code
l_sqldbcode       = sqldbcode
s_sqlerrtext      = sqlerrtext
l_sql_error_row   = row
s_database_info   = sqlca.SQLReturnData
//--------------------------------------------------------------------------------
// Get database prefix out of preferences
select   pref_database
  into   :s_database_prefix
  from   preferences
  where  pref_dummy_id = 'X';
IF sqlca.sqlcode = 0 THEN
   // Try to find out if the code exist in the DB_ERROR_LINK entity
   select   dber_message_id
     into   :s_message_id
     from   db_error_link
     where  dber_code_db  = :l_sqldbcode         AND
	         dber_database = :s_database_prefix;
   IF sqlca.sqlcode = 0 THEN
	   // Show message to screen
      select   pmes_message 
        into   :s_message
        from   plx_message
        where  pmes_id       = :s_message_id     AND
	            pmes_language = :s_language;
		IF sqlca.sqlcode < 0 THEN		  
		   //plexus.i_class_message.show_sql_error(sqlca.sqlcode, "Reading message from plx_message")
		ELSE
         CHOOSE CASE s_language
			  CASE "D"
 			    s_title_global = "Datenfehler"
 			    s_title_detail = "Datenfehler (detailliert)"				  
				 s_error_global = s_message + "~n~n" + &
				                  "Wollen Sie detaillierte Informationen über diesen Fehler erhalten?"
			  CASE "F"
				 s_title_global = "Erreur de données"
				 s_title_detail = "Erreur de données (détail)"
				 s_error_global = s_message + "~n~n" + &
				                  "Voulez-vous des informations détaillées concernant cette erreur?"
			  CASE ELSE
				 s_title_global = "Data error"
				 s_title_detail = "Data error (detail)"
				 s_error_global = s_message + "~n~n" + &
				                  "Do you want to get more information about this error?"
			END CHOOSE
         s_error_detail = s_message + "~n~n"  + &
		                    "Database error code: " + string(l_sqldbcode) + "~n" + &
								  "Database info: " + s_database_info + "~n" +           &
                          "Error on row: " + string(l_sql_error_row) + "~n~n" +  &
			      		     "Database error text:~n" + s_sqlerrtext
         CHOOSE CASE s_language
			  CASE "D"
 			    s_title_global = "Datenfehler"
 			    s_title_detail = "Datenfehler (detailliert)"				  
			  CASE "F"
				 s_title_global = "Erreur de données"
				 s_title_detail = "Erreur de données (détail)"
			  CASE ELSE
				 s_title_global = "Data error"
				 s_title_detail = "Data error (detail)"
			END CHOOSE
			l_answer = MessageBox(s_title_global, s_error_global, Question!, YesNo!, 2)
			IF l_answer = 1 THEN
			   MessageBox(s_title_detail, s_error_detail)								
			END IF					
     		//plexus.i_class_message.show_message(s_error_show)
   		IF (s_message_id = "DB-CHK-CONS"    OR &
	   	    s_message_id = "DB-DUP-VAL"     OR &
		       s_message_id = "DB-LOCKED"      OR &
		       s_message_id = "DB-NOT-NULL"    OR &
		       s_message_id = "DB-TRUNCATED"   OR &
		       s_message_id = "DB-UPDT-WAR"    OR &
			    s_message_id = "DB-OUT-RANGE")  THEN
				if isvalid( dw_current_dw ) then
			             dw_current_dw.ScrollToRow(l_sql_error_row)
				end if
			END IF
		END IF
   ELSE
	  // Non standard DB error: Show all data available
	  s_error_detail = "Database error code: " + string(l_sqldbcode) + "~n" + &
                      "Error on row: " + string(l_sql_error_row) + "~n~n" +  &
	   		   	    "Database error text:~n" + s_sqlerrtext
     MessageBox(s_title_detail, s_error_detail)														  
  	  //plexus.i_class_message.show_message(s_error_show)
	  IF l_sql_error_row >= 0 THEN
      	 If IsValid(dw_current_dw) THEN dw_current_dw.ScrollToRow(l_sql_error_row) 				
	  END IF
  END IF
ELSE
  //plexus.i_class_message.show_message("PLEXUS_ERROR_PREFERENCES~nNo data found in table preferences.~nContact the Conceptware hotline.")
END IF
//--------------------------------------------------------------------------------
// ignore PB messages
return(1)

end event

event editchanged;dec d_null
SetNull(d_null)

IF Len(data) = 0 THEN
   this.SetItem (row, string(dwo.Name), d_null)
END IF

return 0	

end event

on uo_data_window.create
end on

on uo_data_window.destroy
end on

event retrievestart;if rowcount( )>0 then
	//don't savepoisition if their is no row ...
	savepositionstate( )
end if
end event

event retrieveend;if rowcount>0 then
	restorepositionstate( )
end if
end event

event rowfocuschanged;
if isvalid(w_cw_statusbar) then w_cw_statusbar.wf_set_rowpos(currentrow, rowcount())
end event

event itemfocuschanged;if ib_editmask_autoselect then
	if describe("#"+string(dwo.id)+".editmask.mask") <> '?' then
		selecttext( 1, 99 )	//len( lookupdisplay( row, "#"+string(dwo.id) ) )
	end if
end if
end event

event losefocus;if isvalid(w_cw_statusbar) then w_cw_statusbar.wf_set_rowpos(-1, -1)
end event

event getfocus;if isvalid(w_cw_statusbar) then w_cw_statusbar.wf_set_rowpos(getrow(), rowcount())
end event

event constructor;is_last_dataobject = this.dataobject

if ib_alternative_row_colors and is_grid() then of_set_alternative_colors(il_linecolor_odd, il_linecolor_even)

end event

