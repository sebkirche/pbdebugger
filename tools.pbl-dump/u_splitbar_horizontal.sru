﻿$PBExportHeader$u_splitbar_horizontal.sru
$PBExportComments$Horizontal splitbar object
forward
global type u_splitbar_horizontal from statictext
end type
end forward

global type u_splitbar_horizontal from statictext
integer width = 901
integer height = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string pointer = "SizeNS!"
long textcolor = 33554432
long backcolor = 255
boolean focusrectangle = false
event mousedown pbm_lbuttondown
event mousemove pbm_mousemove
event mouseup pbm_lbuttonup
end type
global u_splitbar_horizontal u_splitbar_horizontal

type prototypes
Function ulong GetSysColor ( &
	integer nindex &
	) Library "user32.dll"

end prototypes

type variables
Window iw_parent
String is_myname
PowerObject ipo_parent
Dragobject idrg_top[]
Dragobject idrg_bottom[]
Boolean ib_livesizing
String is_company
String is_appname
Integer ii_minrange = 100
Integer ii_maxrange = 100

powerobject ipo_resizer

Boolean ib_keep_offsets = false
long il_offsets_top[]
boolean ib_keep_dims_top[]
long il_offsets_bottom[]
boolean ib_keep_dims_bottom[]
end variables

forward prototypes
public function unsignedlong of_get_syscolor (integer ai_index)
public subroutine of_set_livesizing (boolean ab_flag)
public function window of_get_parentwindow ()
public function string of_get_objectname ()
public subroutine of_set_bottomobject (ref dragobject adrg_bottom)
public subroutine of_get_location ()
public subroutine of_set_location ()
public subroutine of_arrange_objects ()
public subroutine of_set_minsize (integer ai_minrange, integer ai_maxrange)
public subroutine setresizer (powerobject apo_resizer)
public subroutine of_set_topobject (ref dragobject adrg_top, boolean ab_keep_dim)
public subroutine of_set_topobject (ref dragobject adrg_top)
public subroutine of_set_bottomobject (ref dragobject adrg_bottom, boolean ab_keep_dim)
end prototypes

event mousedown;// make sure object stays on top
this.SetPosition(ToTop!)

// set color to button shadow
If Not ib_livesizing Then
	this.BackColor = of_get_syscolor(16)
End If

end event

event mousemove;Integer li_pointer, li_minrange, li_maxrange
DragObject ldrg_parent

// if left button pressed, move object
If KeyDown(keyLeftButton!) Then
	// get location of mouse pointer
	If ipo_parent.TypeOf() = Window! Then
		li_pointer = iw_parent.PointerY()
	Else
		ldrg_parent = ipo_parent
		li_pointer = ldrg_parent.PointerY()
	End If
	// calculate the valid range of movement
	li_minrange = idrg_top[1].y + ii_minrange
	li_maxrange = (idrg_bottom[1].y + idrg_bottom[1].height) - ii_maxrange
	// move the splitbar if within the range
	If li_pointer > li_minrange And li_pointer < li_maxrange Then
		// move splitbar to mouse location
		this.Y = li_pointer
		// resize objects if using livesizing
		If ib_livesizing Then
			of_arrange_objects()
		End If
	End If
End If

end event

event mouseup;// arrange objects
of_arrange_objects()

// restore color to match background
If Not ib_livesizing Then
	this.BackColor = iw_parent.BackColor
End If

end event

public function unsignedlong of_get_syscolor (integer ai_index);// These are the argument values
//
//        Object          Value         Object          Value
// --------------------- ------- --------------------- -------
// Scroll Bar Background     0
// Desktop Background        1   Inactive Border          11
// Active Title Bar          2   App Work Space           12
// Inactive Title Bar        3   Highlight                13
// Menu                      4   Highlight Text           14
// Window                    5   Button Face              15
// Window Frame              6   Button Shadow            16
// Menu Text                 7   Gray Text                17
// Window Text               8   Button Text              18
// Title Bar Text            9   Inactive Title Bar Text  19
// Active Border            10   Button Highlight         20

// ToolTip Text             23   ToolTip Background       24

Return GetSysColor(ai_index)

end function

public subroutine of_set_livesizing (boolean ab_flag);// set livesizing flag
ib_livesizing = ab_flag

end subroutine

public function window of_get_parentwindow ();PowerObject	lpo_parent
Window lw_window

// loop thru parents until a window is found
lpo_parent = this.GetParent()
Do While lpo_parent.TypeOf() <> Window! and IsValid (lpo_parent)
	lpo_parent = lpo_parent.GetParent()
Loop

// set return to the window or null if not found
If IsValid (lpo_parent) Then
	lw_window = lpo_parent
Else
	SetNull(lw_window)
End If

Return lw_window

end function

public function string of_get_objectname ();PowerObject	lpo_parent
String ls_object

// loop thru parents building object name
lpo_parent = this.GetParent()
ls_object = this.ClassName()
Do While lpo_parent.TypeOf() <> Window! and IsValid (lpo_parent)
	ls_object = lpo_parent.ClassName() + "." + ls_object
	lpo_parent = lpo_parent.GetParent()
Loop

Return ls_object

end function

public subroutine of_set_bottomobject (ref dragobject adrg_bottom);of_set_bottomobject( adrg_bottom, false)
end subroutine

public subroutine of_get_location ();// this function loads current location from the registry

String ls_regkey, ls_value
Long ll_position

ls_regkey  = "HKEY_CURRENT_USER\Software\" + is_company
ls_regkey += "\" + is_appname + "\SplitBars"

// set value in registry
RegistryGet(ls_regkey, is_myname, RegString!, ls_value)

// move object to prior location
ll_position = Long(ls_value)
If ll_position > 0 Then
	this.Y = ll_position
	of_arrange_objects()
End If

end subroutine

public subroutine of_set_location ();// this function saves current location in the registry

String ls_regkey

ls_regkey  = "HKEY_CURRENT_USER\Software\" + is_company
ls_regkey += "\" + is_appname + "\SplitBars"

// set value in registry
RegistrySet(ls_regkey, is_myname, String(this.y))

end subroutine

public subroutine of_arrange_objects ();// resize and arrange dragobjects
nv_auto_resizer lnv_resizer

Integer li_cnt, li_max, li_maxsize

If UpperBound(idrg_top) = 0 Then Return
If UpperBound(idrg_bottom) = 0 Then Return

iw_parent.SetRedraw(False)

// resize the top dragobjects
li_max = UpperBound(idrg_top)
FOR li_cnt = 1 TO li_max
	if ib_keep_dims_top[li_cnt] then
		if ib_keep_offsets then
			idrg_top[li_cnt].y = this.y - il_offsets_top[li_cnt] - idrg_top[li_cnt].height
		else
			idrg_top[li_cnt].y = this.y - idrg_top[li_cnt].height
		end if
	else
		idrg_top[li_cnt].height = this.y - idrg_top[li_cnt].y
		if ib_keep_offsets then idrg_top[li_cnt].height -= il_offsets_top[li_cnt]
	end if
	
	if isvalid( ipo_resizer ) then
		lnv_resizer = ipo_resizer.dynamic of_findobject( idrg_top[li_cnt] )
		if isvalid( lnv_resizer ) then
			lnv_resizer.of_y_changed( idrg_top[li_cnt].y, idrg_top[li_cnt].height, true )
		end if
	end if	
NEXT

// resize the bottom dragobjects
li_max = UpperBound(idrg_bottom)
FOR li_cnt = 1 TO li_max
	li_maxsize = (idrg_bottom[li_cnt].y + idrg_bottom[li_cnt].height)	

	if ib_keep_dims_bottom[li_cnt] then
		if ib_keep_offsets then
			idrg_bottom[li_cnt].y = this.y + this.height + il_offsets_bottom[li_cnt]
		else
			idrg_bottom[li_cnt].y = this.y + this.height
		end if
	else
		idrg_bottom[li_cnt].y = this.y + this.height
		idrg_bottom[li_cnt].height = li_maxsize - idrg_bottom[li_cnt].y		
		if ib_keep_offsets then
			idrg_bottom[li_cnt].y += il_offsets_bottom[li_cnt]
			idrg_bottom[li_cnt].height -= il_offsets_bottom[li_cnt]
		end if
	end if
	if isvalid( ipo_resizer ) then
		lnv_resizer = ipo_resizer.dynamic of_findobject( idrg_bottom[li_cnt] )
		if isvalid( lnv_resizer ) then
			lnv_resizer.of_y_changed( idrg_bottom[li_cnt].y, idrg_bottom[li_cnt].height, false )
		end if
	end if		
NEXT

iw_parent.SetRedraw(True)

end subroutine

public subroutine of_set_minsize (integer ai_minrange, integer ai_maxrange);// set minimum size
ii_minrange = ai_minrange
ii_maxrange = ai_maxrange

end subroutine

public subroutine setresizer (powerobject apo_resizer);ipo_resizer = apo_resizer
end subroutine

public subroutine of_set_topobject (ref dragobject adrg_top, boolean ab_keep_dim);Integer li_max, li_range

li_max = UpperBound(idrg_top) + 1

// set drag top object
idrg_top[li_max] = adrg_top
il_offsets_top[li_max] = this.y  - adrg_top.height - adrg_top.y
ib_keep_dims_top[li_max] = ab_keep_dim
//// arrange objects
//of_arrange_objects()
//
end subroutine

public subroutine of_set_topobject (ref dragobject adrg_top);of_set_topobject( adrg_top, false )
end subroutine

public subroutine of_set_bottomobject (ref dragobject adrg_bottom, boolean ab_keep_dim);Integer li_max, li_range

li_max = UpperBound(idrg_bottom) + 1

// set bottom drag object
idrg_bottom[li_max] = adrg_bottom
il_offsets_bottom[li_max] = adrg_bottom.y - this.y - this.height
ib_keep_dims_bottom[li_max] = ab_keep_dim
//// arrange objects
//of_arrange_objects()
//
end subroutine

event constructor;//Application la_app

// set identification variables
iw_parent = this.of_get_parentwindow()
ipo_parent = this.GetParent()
is_myname = iw_parent.ClassName() + "." + this.of_get_objectname()

// default appname/company
//la_app = GetApplication()
//is_appname = gs_appname //la_app.AppName
//is_company = gs_company //"My Company"

// set color to match background
this.BackColor = iw_parent.BackColor

end event

on u_splitbar_horizontal.create
end on

on u_splitbar_horizontal.destroy
end on

