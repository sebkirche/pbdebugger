$PBExportHeader$w_cw_statusbar.srw
forward
global type w_cw_statusbar from window
end type
type st_user_border from statictext within w_cw_statusbar
end type
type st_logindate_border from statictext within w_cw_statusbar
end type
type ln_far_left from line within w_cw_statusbar
end type
type st_logindate from statictext within w_cw_statusbar
end type
type st_user from statictext within w_cw_statusbar
end type
end forward

global type w_cw_statusbar from window
integer width = 942
integer height = 84
boolean border = false
windowtype windowtype = child!
long backcolor = 67108864
st_user_border st_user_border
st_logindate_border st_logindate_border
ln_far_left ln_far_left
st_logindate st_logindate
st_user st_user
end type
global w_cw_statusbar w_cw_statusbar

type prototypes
Function integer GetClassName ( &
	ulong hWind, &
	Ref string name, &
	int cbmax &
	) Library "user32.dll" Alias For "GetClassNameW"

Function ulong GetWindow ( &
	ulong hWind, &
	uint fuRel &
	) Library "user32.dll"

Function ulong SetParent ( &
	ulong hChild, &
	ulong hParent &
	) Library "user32.dll"

end prototypes

type variables
public:
constant integer ST_TYPE_TEXT = 1

constant integer ST_AUTOSIZE = -1

//positions of cells
constant integer ST_ROWS_POS		= 1
constant integer ST_USER_POS		= 2
constant integer ST_PROFILE_POS	= 3
constant integer ST_DATE_POS		= 4

//indexes of the fields for parameter passing
constant integer ST_PARAM_CELL_WIDTH 	= 1
constant integer ST_PARAM_CELL_TYPE		= 2
constant integer ST_PARAM_TEXT 			= 3
constant integer ST_PARAM_TEXT_FONT 	= 4
constant integer ST_PARAM_TEXT_SIZE 	= 5

private:
String is_classname
Integer ii_width

window iw_parent
any ia_items[]
any ia_controls[]
statictext ist_boxes[]

unvo_gdi iuo_gdi
string is_default_font 		= "arial"
integer il_default_fontsize	= 8
end variables

forward prototypes
public subroutine wf_reposition ()
public subroutine wf_setparent ()
public subroutine wf_set_user (string as_user)
public subroutine wf_set_logindate (date ada_logindate)
public subroutine wf_set_text (integer ai_item, string as_txt)
public subroutine wf_set_font (integer ai_item, string as_fontname, integer ai_size)
public subroutine wf_set_database (string as_dbname)
public subroutine wf_set_rowpos (long al_row, long al_total)
end prototypes

public subroutine wf_reposition ();Integer li_share

this.setredraw(false)

//resize boxes
statictext st
string ls_txt
long ll_width
any item[]
int i
ii_width = PixelsToUnits(2,XPixelsToUnits!)
for i = 1 to upperbound(ia_items)
	item = ia_items[i]
	choose case item[ST_PARAM_CELL_TYPE]
		case ST_TYPE_TEXT
			ls_txt = ' ' + item[ST_PARAM_TEXT]
			ll_width = item[ST_PARAM_CELL_WIDTH]
				if upperbound(item) > ST_PARAM_TEXT then
					if ll_width = ST_AUTOSIZE then ll_width = iuo_gdi.of_getstringwidth(iw_parent, ls_txt, item[ST_PARAM_TEXT_FONT] , item[ST_PARAM_TEXT_SIZE] , false, false)
				else
					if ll_width = ST_AUTOSIZE then ll_width = iuo_gdi.of_getstringwidth(iw_parent, ls_txt, is_default_font , il_default_fontsize , false, false)
				end if
			ist_boxes[i].width = PixelsToUnits(ll_width,XPixelsToUnits!)
			ist_boxes[i].x = ii_width + PixelsToUnits(1,XPixelsToUnits!)
			st = ia_controls[i]
			st.width = PixelsToUnits(ll_width - 2,XPixelsToUnits!)
			st.x = ii_width + PixelsToUnits(2,XPixelsToUnits!)
	end choose
	ii_width += PixelsToUnits(ll_width + 1,XPixelsToUnits!)
next
ii_width += PixelsToUnits(2,XPixelsToUnits!)
this.width = ii_width

// if the window would be more than 2/3
// of width hide it off to the right
li_share = (iw_parent.width / 3) * 2
If this.ii_width > li_share Then
	this.x = iw_parent.width
Else
	If iw_parent.WindowState = Maximized! Then
		this.x = iw_parent.width - ii_width - PixelsToUnits(8,XPixelsToUnits!) //- 25
	Else
		this.x = iw_parent.width - ii_width - PixelsToUnits(18,XPixelsToUnits!) //- 90
	End If
End If
this.y = 5

this.setredraw(true)

// update date/time
this.Event Timer()

end subroutine

public subroutine wf_setparent ();String ls_name
ULong lul_hwnd
Integer li_rc

// find the microhelp handle
lul_hwnd = GetWindow(Handle( iw_parent ), 5)
DO UNTIL lul_hwnd = 0
	ls_name = Space(25)
	li_rc = GetClassName(lul_hwnd, ls_name, Len(ls_name))
	If ls_name = is_classname Then
		lul_hwnd = SetParent(Handle(this), lul_hwnd)
		lul_hwnd = 0
	Else
		lul_hwnd = GetWindow(lul_hwnd, 2)
	End If
LOOP

end subroutine

public subroutine wf_set_user (string as_user);// set message

wf_set_text(ST_USER_POS, ' ' + as_user + ' ')

end subroutine

public subroutine wf_set_logindate (date ada_logindate);string ls_logindate 
ls_logindate  = string( ada_logindate)//, "dd/mm/YYYY" ) //use the regional settings
wf_set_text(st_date_pos, ' ' + ls_logindate + ' ')

end subroutine

public subroutine wf_set_text (integer ai_item, string as_txt);// set message
statictext st
any item[]

if ai_item <= upperbound(ia_items) then
	item = ia_items[ai_item]
	if item[ST_PARAM_CELL_TYPE] = ST_TYPE_TEXT then
		st = ia_controls[ai_item]
		st.text = as_txt
		item[ST_PARAM_TEXT] = as_txt
		ia_items[ai_item] = item
		if item[ST_PARAM_CELL_WIDTH] = ST_AUTOSIZE then wf_reposition( )
	end if
end if



end subroutine

public subroutine wf_set_font (integer ai_item, string as_fontname, integer ai_size);// set message
statictext st
any item[]

if ai_item <= upperbound(ia_items) then
	item = ia_items[ai_item]
	if item[ST_PARAM_CELL_TYPE] = ST_TYPE_TEXT then
		st = ia_controls[ai_item]
		st.facename = as_fontname
		st.textsize = - ai_size
		item[ST_PARAM_TEXT_FONT] = as_fontname
		item[ST_PARAM_TEXT_SIZE] = ai_size
		ia_items[ai_item] = item
	end if
end if

end subroutine

public subroutine wf_set_database (string as_dbname);// set message

wf_set_text(ST_PROFILE_POS, ' ' + as_dbname + ' ')

end subroutine

public subroutine wf_set_rowpos (long al_row, long al_total);string ls_pos
// set row position

if al_row < 0 or al_total < 0 then
	ls_pos=''
else
	choose case "F" //plexus.i_class_user.get_user_language()
		case "E"
			ls_pos = "Row " + string(al_row) + " of " + string(al_total)
		case "D"
			ls_pos = "Row " + string(al_row) + " of " + string(al_total)
		case "F"
			ls_pos = "Ligne " + string(al_row) + " sur " + string(al_total)
	end choose		
end if

wf_set_text(ST_ROWS_POS, ' ' + ls_pos + ' ')

end subroutine

on w_cw_statusbar.create
this.st_user_border=create st_user_border
this.st_logindate_border=create st_logindate_border
this.ln_far_left=create ln_far_left
this.st_logindate=create st_logindate
this.st_user=create st_user
this.Control[]={this.st_user_border,&
this.st_logindate_border,&
this.ln_far_left,&
this.st_logindate,&
this.st_user}
end on

on w_cw_statusbar.destroy
destroy(this.st_user_border)
destroy(this.st_logindate_border)
destroy(this.ln_far_left)
destroy(this.st_logindate)
destroy(this.st_user)
end on

event open;Environment le_env
nv_va_arg params
statictext st
any item[]
int i, nb, i_ret
long ll_width
string ls_txt
iw_parent = w_mdi_frame
//iw_parent = GetParent()
//iw_parent = w_frame

this.setredraw(false)

params = message.powerObjectParm
if isvalid(params) then
	nb = params.get_count()
	ii_width = PixelsToUnits(2,XPixelsToUnits!)
	for i = 1 to nb
		item = params.get_member(i)
		ia_items[i] = item
		choose case item[ST_PARAM_CELL_TYPE]
			case ST_TYPE_TEXT
				ls_txt = ' ' + item[ST_PARAM_TEXT]
				ll_width = item[ST_PARAM_CELL_WIDTH]
				if upperbound(item) > ST_PARAM_TEXT then
					if ll_width = ST_AUTOSIZE then ll_width = iuo_gdi.of_getstringwidth(iw_parent, ls_txt, item[ST_PARAM_TEXT_FONT] , item[ST_PARAM_TEXT_SIZE] , false, false)
				else
					if ll_width = ST_AUTOSIZE then ll_width = iuo_gdi.of_getstringwidth(iw_parent, ls_txt, is_default_font , il_default_fontsize , false, false)
				end if
				st = create statictext
				if isvalid(st) then
					st.width = PixelsToUnits(ll_width,XPixelsToUnits!)
					st.height = 64
					st.backcolor = this.backcolor
					st.focusrectangle = false
					st.border = true
					st.borderstyle = StyleLowered!
					//st.borderColor = 0
							
					i_ret = this.openuserobject(st, ii_width + PixelsToUnits(1,XPixelsToUnits!), 4)
					ist_boxes[i] = st
				end if
				st = create statictext
				if isvalid(st) then
					st.width = PixelsToUnits(ll_width - 2,XPixelsToUnits!)
					st.height = 64 - 8
					st.text = ls_txt
					//st.alignment = Right!
					st.backcolor = this.backcolor
					//st.textcolor = 0
					st.facename = is_default_font
					st.textsize = - il_default_fontsize
					st.focusrectangle = false
					st.border = false
					st.bringToTop = true
					//st.visible = true
							
					i_ret = this.openuserobject(st, ii_width + PixelsToUnits(2,XPixelsToUnits!), 8)
					//iw_parent.openuserobject(st)
					//if i_ret = 1 then SetParent(handle(st), handle(this))
					ia_controls[i] = st
				end if
		end choose
		ii_width += PixelsToUnits(ll_width + 1,XPixelsToUnits!)
		
	next
	//ii_width += 3
end if
ii_width += PixelsToUnits(2,XPixelsToUnits!)

GetEnvironment(le_env)

// determine position of window within microhelp bar
//ii_width = st_logindate.x + st_logindate.width + 25
this.width = ii_width

// set object class name
If le_env.PBMajorRevision = 10 And &
	le_env.PBMinorRevision = 5 Then
	// PowerBuilder 10.5
	is_classname = "FNHELP105"
Else
	is_classname = "FNHELP" + &
		String(le_env.PBMajorRevision) + String(le_env.pbminorrevision)
End If

//wf_set_user( plexus.i_class_user.get_user_id() )
//wf_set_logindate( plexus.i_class_user.get_login_date() )

// set parenthood
this.wf_setparent()

// position the window
this.wf_reposition()

this.setredraw(true)


end event

type st_user_border from statictext within w_cw_statusbar
boolean visible = false
integer x = 14
integer y = 4
integer width = 567
integer height = 64
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type st_logindate_border from statictext within w_cw_statusbar
boolean visible = false
integer x = 594
integer y = 4
integer width = 338
integer height = 64
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type ln_far_left from line within w_cw_statusbar
long linecolor = 16777215
integer linethickness = 4
integer beginy = 4
integer endy = 68
end type

type st_logindate from statictext within w_cw_statusbar
boolean visible = false
integer x = 599
integer y = 8
integer width = 325
integer height = 56
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
string text = "31/12/2007"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_user from statictext within w_cw_statusbar
boolean visible = false
integer x = 18
integer y = 8
integer width = 553
integer height = 56
boolean bringtotop = true
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "MS Sans Serif"
long backcolor = 79741120
string text = "C"
boolean focusrectangle = false
end type

event clicked;//String ls_name
//
//// get window classname
//ls_name = Space(25)
//GetClassName(Handle(Parent), ls_name, Len(ls_name))
//
//MessageBox("Window Class", ls_name)
//
end event

