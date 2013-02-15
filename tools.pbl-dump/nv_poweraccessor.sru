$PBExportHeader$nv_poweraccessor.sru
forward
global type nv_poweraccessor from nonvisualobject
end type
end forward

global type nv_poweraccessor from nonvisualobject autoinstantiate
end type

type variables
/**
 *
 * This allow to do some reflexion like operation by emulation
 *
 * It will allow to use Accessors getter and setter on properties of object when relevant.
 *
 *
 * eg.: poweraccessor.getProperty( myPowerObject, "tab_1.tabpage_1.ddlb_user.tag") => Any
 *
 **/
end variables

forward prototypes
public function any getproperty (powerobject apow_object, string as_fullqualifiedpropertyname)
public function string getdatatype (powerobject apow_object)
public function any get_window_property (window aw_win, string as_fullqualifiedpropertyname)
public function powerobject get_control (powerobject apow_object, ref string as_fullqualifiedpropertyname)
public function any get_classdefinition_property (classdefinition acd_def, string as_fullqualifiedpropertyname)
public function any get_tab_property (tab atab_obj, string as_fullqualifiedpropertyname)
public function any get_userobject_property (userobject auo_obj, string as_fullqualifiedpropertyname)
public function any get_singlelineedit_property (singlelineedit asle_obj, string as_fullqualifiedpropertyname)
public function any get_multilineedit_property (multilineedit amle_obj, string as_fullqualifiedpropertyname)
public function any get_statictext_property (statictext ast_obj, string as_fullqualifiedpropertyname)
public function iterator getcontrols (powerobject apow_parent)
public function any get_commandbutton_property (commandbutton acb_obj, string as_fullqualifiedpropertyname)
public function any get_listbox_property (listbox alb_obj, string as_fullqualifiedpropertyname)
public function any get_treeview_property (treeview atv_obj, string as_fullqualifiedpropertyname)
public function any get_olecontrol_property (olecontrol aole_obj, string as_fullqualifiedpropertyname)
public function any get_inkpicture_property (inkpicture aip_obj, string as_fullqualifiedpropertyname)
public function any get_inkedit_property (inkedit aie_obj, string as_fullqualifiedpropertyname)
public function any get_animation_property (animation aam_obj, string as_fullqualifiedpropertyname)
public function any get_datepicker_property (datepicker adp_obj, string as_fullqualifiedpropertyname)
public function any get_monthcalendar_property (monthcalendar amc_obj, string as_fullqualifiedpropertyname)
public function any get_graph_property (graph agr_obj, string as_fullqualifiedpropertyname)
public function any get_datawindow_property (datawindow adw_obj, string as_fullqualifiedpropertyname)
public function any get_listview_property (listview alv_obj, string as_fullqualifiedpropertyname)
public function any get_picturelistbox_property (picturelistbox aplb_obj, string as_fullqualifiedpropertyname)
public function any get_dropdownpicturelistbox_property (dropdownpicturelistbox adplb_obj, string as_fullqualifiedpropertyname)
public function any get_dropdownlistbox_property (dropdownlistbox addlb_obj, string as_fullqualifiedpropertyname)
public function any get_vprogressbar_property (vprogressbar avpb_obj, string as_fullqualifiedpropertyname)
public function any get_hprogressbar_property (hprogressbar ahpb_obj, string as_fullqualifiedpropertyname)
public function any get_vtrackbar_property (vtrackbar avtb_obj, string as_fullqualifiedpropertyname)
public function any get_htrackbar_property (htrackbar ahtb_obj, string as_fullqualifiedpropertyname)
public function any get_vscrollbar_property (vscrollbar avsb_obj, string as_fullqualifiedpropertyname)
public function any get_hscrollbar_property (hscrollbar ahsb_obj, string as_fullqualifiedpropertyname)
public function any get_richtextedit_property (richtextedit arte_obj, string as_fullqualifiedpropertyname)
public function any get_editmask_property (editmask aem_obj, string as_fullqualifiedpropertyname)
public function any get_picturehyperlink_property (picturehyperlink aphl_obj, string as_fullqualifiedpropertyname)
public function any get_picture_property (picture ap_obj, string as_fullqualifiedpropertyname)
public function any get_statichyperlink_property (statichyperlink ashl_obj, string as_fullqualifiedpropertyname)
public function any get_radiobutton_property (radiobutton arb_obj, string as_fullqualifiedpropertyname)
public function any get_checkbox_property (checkbox acbx_obj, string as_fullqualifiedpropertyname)
public function any get_picturebutton_property (picturebutton apb_obj, string as_fullqualifiedpropertyname)
public function any get_groupbox_property (groupbox agb_obj, string as_fullqualifiedpropertyname)
public function any get_line_property (line aln_obj, string as_fullqualifiedpropertyname)
public function any get_oval_property (oval aov_obj, string as_fullqualifiedpropertyname)
public function any get_rectangle_property (rectangle ar_obj, string as_fullqualifiedpropertyname)
public function any get_roundrectangle_property (roundrectangle arr_obj, string as_fullqualifiedpropertyname)
public subroutine setproperty (powerobject apow_object, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_window_property (window aw_win, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_classdefinition_property (classdefinition acd_def, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_tab_property (tab atab_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_userobject_property (userobject auo_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_statictext_property (statictext ast_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_singlelineedit_property (singlelineedit asle_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_multilineedit_property (multilineedit amle_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_commandbutton_property (commandbutton acb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_listbox_property (listbox alb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_treeview_property (treeview atv_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_olecontrol_property (olecontrol aole_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_inkpicture_property (inkpicture aip_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_inkedit_property (inkedit aie_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_animation_property (animation aam_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_datepicker_property (datepicker adp_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_monthcalendar_property (monthcalendar amc_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_graph_property (graph agr_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_datawindow_property (datawindow adw_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_listview_property (listview alv_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_picturelistbox_property (picturelistbox aplb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_dropdownlistbox_property (dropdownlistbox addlb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_dropdownpicturelistbox_property (dropdownpicturelistbox adplb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_vprogressbar_property (vprogressbar avpb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_hprogressbar_property (hprogressbar ahpb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_vtrackbar_property (vtrackbar avtb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_htrackbar_property (htrackbar ahtb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_vscrollbar_property (vscrollbar avsb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_hscrollbar_property (hscrollbar ahsb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_richtextedit_property (richtextedit arte_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_editmask_property (editmask aem_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_picturehyperlink_property (picturehyperlink aphl_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_picture_property (picture ap_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_statichyperlink_property (statichyperlink ashl_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_radiobutton_property (radiobutton arb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_checkbox_property (checkbox acbx_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_picturebutton_property (picturebutton apb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_groupbox_property (groupbox agb_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_line_property (line aln_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_oval_property (oval aov_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_rectangle_property (rectangle ar_obj, string as_fullqualifiedpropertyname, any aa_value)
public subroutine set_roundrectangle_property (roundrectangle arr_obj, string as_fullqualifiedpropertyname, any aa_value)
public function string getfullqualifiedname (powerobject apow_obj)
public function anyiterator getproperties (powerobject apow_obj)
public function anyiterator getproperties (powerobject apow_obj, string as_type)
public function any get_menu_property (menu am_obj, string as_fullqualifiedpropertyname)
public subroutine set_menu_property (menu am_obj, string as_fullqualifiedpropertyname, any aa_value)
public function iterator getcontrols (powerobject apow_parent, boolean ab_recurse)
public function any get_menucascade_property (menucascade amc_obj, string as_fullqualifiedpropertyname)
public subroutine set_menucascade_property (menucascade amc_obj, string as_fullqualifiedpropertyname, any aa_value)
public function window getparentwindow (powerobject apow_obj)
public function any get_dwcontrol_property (nv_dwcontrol adwc_obj, string as_fullqualifiedpropertyname)
public subroutine set_dwcontrol_property (nv_dwcontrol adwc_obj, string as_fullqualifiedpropertyname, any aa_value)
end prototypes

public function any getproperty (powerobject apow_object, string as_fullqualifiedpropertyname);if isnull( apow_object ) or not isvalid( apow_object ) then 
	debug_message( classname(), "getProperty( NotValidObject!, " + as_fullqualifiedpropertyname + ") Called with an invalid object !" )
	return apow_object
end if
//debug_message( classname(), "getProperty( " + apow_object.classname() + ", " + as_fullqualifiedpropertyname + ")" )
choose case getDataType( apow_object )
	case "window" ;	return get_window_property( apow_object, as_fullqualifiedpropertyname )
	case "classdefinition" ; return get_classdefinition_property( apow_object, as_fullqualifiedpropertyname )
	case "tab" ; return get_tab_property( apow_object, as_fullqualifiedpropertyname )
	case "userobject" ; return get_userobject_property( apow_object, as_fullqualifiedpropertyname )	
	case "singlelineedit" ; return get_singlelineedit_property( apow_object, as_fullqualifiedpropertyname )	
	case "multilineedit" ; return get_multilineedit_property( apow_object, as_fullqualifiedpropertyname )			
	case "statictext" ; return get_statictext_property( apow_object, as_fullqualifiedpropertyname )			
	case "commandbutton" ; return get_commandbutton_property( apow_object, as_fullqualifiedpropertyname )			
	case "listbox" ; return get_listbox_property(apow_object, as_fullqualifiedpropertyname )
	case "treeview" ; return get_treeview_property(apow_object, as_fullqualifiedpropertyname )
	case "olecontrol" ; return get_olecontrol_property(apow_object, as_fullqualifiedpropertyname )
	case "inkpicture" ; return get_inkpicture_property(apow_object, as_fullqualifiedpropertyname )		
	case "inkedit" ; return get_inkedit_property(apow_object, as_fullqualifiedpropertyname )		
	case "animation" ; return get_animation_property(apow_object, as_fullqualifiedpropertyname )		
	case "datepicker" ; return get_datepicker_property(apow_object, as_fullqualifiedpropertyname )				
	case "monthcalendar" ; return get_monthcalendar_property(apow_object, as_fullqualifiedpropertyname )						
	case "graph" ; return get_graph_property(apow_object, as_fullqualifiedpropertyname )								
	case "datawindow" ; return get_datawindow_property(apow_object, as_fullqualifiedpropertyname )										
	case "listview" ; return get_listview_property(apow_object, as_fullqualifiedpropertyname )												
	case "picturelistbox" ; return get_picturelistbox_property(apow_object, as_fullqualifiedpropertyname )														
	case "dropdownlistbox" ; return get_dropdownlistbox_property(apow_object, as_fullqualifiedpropertyname )														
	case "dropdownpicturelistbox" ; return get_dropdownpicturelistbox_property(apow_object, as_fullqualifiedpropertyname )																
	case "vprogressbar" ; return get_vprogressbar_property(apow_object, as_fullqualifiedpropertyname )
	case "hprogressbar" ; return get_hprogressbar_property(apow_object, as_fullqualifiedpropertyname )		
	case "vtrackbar" ; return get_vtrackbar_property(apow_object, as_fullqualifiedpropertyname )
	case "htrackbar" ; return get_htrackbar_property(apow_object, as_fullqualifiedpropertyname )		
	case "vscrollbar" ; return get_vscrollbar_property(apow_object, as_fullqualifiedpropertyname )		
	case "hscrollbar" ; return get_hscrollbar_property(apow_object, as_fullqualifiedpropertyname )				
	case "richtextedit" ; return get_richtextedit_property( apow_object, as_fullqualifiedpropertyname )
	case "editmask" ; return get_editmask_property( apow_object, as_fullqualifiedpropertyname )
	case "picturehyperlink" ; return get_picturehyperlink_property( apow_object, as_fullqualifiedpropertyname )
	case "picture" ; return get_picture_property( apow_object, as_fullqualifiedpropertyname )
	case "statichyperlink" ; return get_statichyperlink_property( apow_object, as_fullqualifiedpropertyname )
	case "radiobutton" ; return get_radiobutton_property( apow_object, as_fullqualifiedpropertyname )
	case "checkbox" ; return get_checkbox_property( apow_object, as_fullqualifiedpropertyname )
	case "picturebutton" ; return get_picturebutton_property( apow_object, as_fullqualifiedpropertyname )
	case "groupbox" ; return get_groupbox_property( apow_object, as_fullqualifiedpropertyname )
	case "line" ; return get_line_property( apow_object, as_fullqualifiedpropertyname )
	case "oval" ; return get_oval_property( apow_object, as_fullqualifiedpropertyname )
	case "rectangle" ; return get_rectangle_property( apow_object, as_fullqualifiedpropertyname )
	case "roundrectangle" ; return get_roundrectangle_property( apow_object, as_fullqualifiedpropertyname )
	case "menu" ; return get_menu_property( apow_object, as_fullqualifiedpropertyname )
	case "menucascade" ; return get_menucascade_property( apow_object, as_fullqualifiedpropertyname )		
	case "nv_dwcontrol" ; return get_dwcontrol_property( apow_object, as_fullqualifiedpropertyname )
	case else
		debug_message( classname(), "getProperty : Unhandled datatype: " + getDataType( apow_object ) )
end choose

return apow_object
end function

public function string getdatatype (powerobject apow_object);classdefinition lcd_def
lcd_def = apow_object.classdefinition
if lcd_def.DataTypeOf = "nonvisualobject" and lcd_def.name="nv_dwcontrol" then
	return lcd_def.name
end if
return lcd_def.DataTypeOf
end function

public function any get_window_property (window aw_win, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...

debug_message( classname(), aw_win.classname() + ", " + as_fullqualifiedpropertyname )

if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aw_win, as_fullqualifiedpropertyname )
//	debug_message( classname(), "Getting control... " + lpow_control.classname() +" for " + as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname	
	case "accessiblerole" ; return aw_win.accessiblerole
	case "border" ; return aw_win.border
	case "bringtotop" ; return aw_win.bringtotop
	case "center" ; return aw_win.center
	case "clientedge" ; return aw_win.clientedge
	case "contexthelp" ; return aw_win.contexthelp
	case "controlmenu" ; return aw_win.controlmenu
	case "enabled" ; return aw_win.enabled
	case "hscrollbar" ; return aw_win.hscrollbar
	case "keyboardicon" ; return aw_win.keyboardicon
	case "maxbox" ; return aw_win.maxbox
	case "minbox" ; return aw_win.minbox
	case "palettewindow" ; return aw_win.palettewindow
	case "resizable" ; return aw_win.resizable
	case "righttoleft" ; return aw_win.righttoleft
	case "titlebar" ; return aw_win.titlebar		
	case "toolbarvisible" ; return aw_win.toolbarvisible
	case "visible" ; return aw_win.visible
	case "vscrollbar" ; return aw_win.vscrollbar
	case "columnsperpage" ; return aw_win.columnsperpage
	case "height" ; return aw_win.height
	case "linesperpage" ; return aw_win.linesperpage
	case "toolbarheight" ; return aw_win.toolbarheight
	case "toolbarwidth" ; return aw_win.toolbarwidth
	case "toolbarx" ; return aw_win.toolbarx		
	case "toolbary" ; return aw_win.toolbary
	case "unitspercolumn" ; return aw_win.unitspercolumn
	case "unitsperline" ; return aw_win.unitsperline
	case "width" ; return aw_win.width
	case "x" ; return aw_win.x
	case "y" ; return aw_win.y
	case "backcolor" ; return aw_win.backcolor
	case "menuid" ; return aw_win.menuid
	case "accessibledescription" ; return aw_win.accessibledescription
	case "accessiblename" ; return aw_win.accessiblename	
	case "icon" ; return aw_win.icon
	case "menuname" ; return aw_win.menuname
	case "pointer" ; return aw_win.pointer
	case "tag" ; return aw_win.tag
	case "title" ; return aw_win.title
	case "toolbaralignment" ; return aw_win.toolbaralignment
	case "windowstate" ; return aw_win.windowstate
	case "windowtype" ; return aw_win.windowtype
	case else ; debug_message( classname(), "get_window_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function powerobject get_control (powerobject apow_object, ref string as_fullqualifiedpropertyname);//debug_message( classname(), "get_control( " + apow_object.classname() + ", " + as_fullqualifiedpropertyname + ")" )

powerobject lpow_control
string ls_controlname
long i

if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	ls_controlname = pop_str( as_fullqualifiedpropertyname, "." )
else
	ls_controlname = as_fullqualifiedpropertyname
	as_fullqualifiedpropertyname = ""
end if

if ls_controlname = "classdefinition" then	return apow_object.classdefinition
if apow_object.classname() = ls_controlname then return apow_object

choose case getdatatype( apow_object )
	case "window"
		window lw_win
		lw_win = apow_object
		for i = 1 to upperbound( lw_win.control[] )
			if lw_win.control[i].classname() = ls_controlname then
				lpow_control = lw_win.control[i]
				return lpow_control
			end if
		next
	case "userobject"
		userobject luo_obj
		luo_obj = apow_object
		for i = 1 to upperbound( luo_obj.control[] )
			if luo_obj.control[i].classname() = ls_controlname then
				lpow_control = luo_obj.control[i]
				return lpow_control
			end if
		next		
	case "tab"
		tab ltab_obj
		ltab_obj = apow_object
		for i = 1 to upperbound( ltab_obj.control[] )
			if ltab_obj.control[i].classname() = ls_controlname then
				lpow_control = ltab_obj.control[i]
				return lpow_control
			end if
		next		
	case "menu"
		menu lmenu_obj
		lmenu_obj = apow_object
		for i = 1 to upperbound( lmenu_obj.item[] )
			if lmenu_obj.item[i].classname() = ls_controlname then
				lpow_control = lmenu_obj.item[i]
				return lpow_control
			end if
		next
	case "datawindow"
		nv_dwcontrol ldwc
		datawindow ldw
		ldw = apow_object
		ldwc.setControl( ldw, ls_controlname )
		//On pourrait utiliser cette fonction non documenté : 
		/*
		dwObject ldwo_object
		ldwo_object = dw_control.object.__get_attribute("t_1", false) 
		*/
		return ldwc
	case else
		debug_message( classname(), "get_control : unhandled datatype : " + getdatatype( apow_object ) )
end choose
debug_message( classname(), "get_control : can't find required control : " + ls_controlname )
return lpow_control
end function

public function any get_classdefinition_property (classdefinition acd_def, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( acd_def, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "isautoinstantiate" ; return acd_def.isautoinstantiate
	case "isstructure" ; return acd_def.isstructure
	case "issystemtype" ; return acd_def.issystemtype
	case "isvariablelength" ; return acd_def.isvariablelength
	case "isvisualtype" ; return acd_def.isvisualtype
	case "ancestor" ; return acd_def.ancestor
//	case "nestedclasslists[]" ; return acd_def.nestedclasslists[]
	case "parentclass" ; return acd_def.parentclass
//	case "scriptlist[]" ; return acd_def.scriptlist[]
	case "datatypeof" ; return acd_def.datatypeof
	case "libraryname" ; return acd_def.libraryname
	case "name" ; return acd_def.name
	case "category" ; return acd_def.category
//	case "variablelist[]" ; return acd_def.variablelist[]
	case else ; debug_message( classname(), "get_classdefinition_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_tab_property (tab atab_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( atab_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "accessiblerole" ; return atab_obj.accessiblerole
	case "alignment" ; return atab_obj.alignment
	case "boldselectedtext" ; return atab_obj.boldselectedtext
	case "bringtotop" ; return atab_obj.bringtotop
	case "createondemand" ; return atab_obj.createondemand
	case "dragauto" ; return atab_obj.dragauto
	case "enabled" ; return atab_obj.enabled
	case "fixedwidth" ; return atab_obj.fixedwidth
	case "focusonbuttondown" ; return atab_obj.focusonbuttondown
	case "italic" ; return atab_obj.italic
	case "multiline" ; return atab_obj.multiline
	case "perpendiculartext" ; return atab_obj.perpendiculartext
	case "pictureonright" ; return atab_obj.pictureonright
	case "powertips" ; return atab_obj.powertips
	case "raggedright" ; return atab_obj.raggedright
	case "showpicture" ; return atab_obj.showpicture
	case "showtext" ; return atab_obj.showtext
	case "underline" ; return atab_obj.underline
	case "visible" ; return atab_obj.visible
	case "fontcharset" ; return atab_obj.fontcharset
	case "fontfamily" ; return atab_obj.fontfamily
	case "fontpitch" ; return atab_obj.fontpitch
	case "height" ; return atab_obj.height
	case "selectedtab" ; return atab_obj.selectedtab
	case "taborder" ; return atab_obj.taborder
	case "textsize" ; return atab_obj.textsize
	case "weight" ; return atab_obj.weight
	case "width" ; return atab_obj.width
	case "x" ; return atab_obj.x
	case "y" ; return atab_obj.y
	case "backcolor" ; return atab_obj.backcolor
	case "accessibledescription" ; return atab_obj.accessibledescription
	case "accessiblename" ; return atab_obj.accessiblename	
	case "dragicon" ; return atab_obj.dragicon
	case "facename" ; return atab_obj.facename
	case "pointer" ; return atab_obj.pointer
	case "tag" ; return atab_obj.tag
	case else ; debug_message( classname(), "get_tab_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_userobject_property (userobject auo_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( auo_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return auo_obj.classdefinition
	case "tag" ; return auo_obj.tag
	case "visible" ; return auo_obj.visible
	case "accessiblename" ; return auo_obj.accessiblename
	case "accessibledescription" ; return auo_obj.accessibledescription
	case "accessiblerole" ; return auo_obj.accessiblerole
	case "x" ; return auo_obj.x
	case "y" ; return auo_obj.y
	case "width" ; return auo_obj.width
	case "height" ; return auo_obj.height
	case "taborder" ; return auo_obj.taborder
	case "dragicon" ; return auo_obj.dragicon
	case "dragauto" ; return auo_obj.dragauto
	case "bringtotop" ; return auo_obj.bringtotop
	case "enabled" ; return auo_obj.enabled
	case "hscrollbar" ; return auo_obj.hscrollbar
	case "vscrollbar" ; return auo_obj.vscrollbar
	case "border" ; return auo_obj.border
	case "objecttype" ; return auo_obj.objecttype
	case "control" ; return auo_obj.control
	case "backcolor" ; return auo_obj.backcolor
	case "pointer" ; return auo_obj.pointer
	case "classname" ; return auo_obj.classname
	case "libraryname" ; return auo_obj.libraryname
	case "text" ; return auo_obj.text
	case "style" ; return auo_obj.style
	case "unitsperline" ; return auo_obj.unitsperline
	case "linesperpage" ; return auo_obj.linesperpage
	case "unitspercolumn" ; return auo_obj.unitspercolumn
	case "columnsperpage" ; return auo_obj.columnsperpage
	case "borderstyle" ; return auo_obj.borderstyle
	case "tabtextcolor" ; return auo_obj.tabtextcolor
	case "tabbackcolor" ; return auo_obj.tabbackcolor
	case "picturename" ; return auo_obj.picturename
	case "picturemaskcolor" ; return auo_obj.picturemaskcolor
	case "powertiptext" ; return auo_obj.powertiptext
	case else ; debug_message( classname(), "get_userobject_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_singlelineedit_property (singlelineedit asle_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( asle_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return asle_obj.classdefinition
	case "tag" ; return asle_obj.tag
	case "visible" ; return asle_obj.visible
	case "accessiblename" ; return asle_obj.accessiblename
	case "accessibledescription" ; return asle_obj.accessibledescription
	case "accessiblerole" ; return asle_obj.accessiblerole
	case "x" ; return asle_obj.x
	case "y" ; return asle_obj.y
	case "width" ; return asle_obj.width
	case "height" ; return asle_obj.height
	case "taborder" ; return asle_obj.taborder
	case "dragicon" ; return asle_obj.dragicon
	case "dragauto" ; return asle_obj.dragauto
	case "bringtotop" ; return asle_obj.bringtotop
	case "textsize" ; return asle_obj.textsize
	case "weight" ; return asle_obj.weight
	case "fontcharset" ; return asle_obj.fontcharset
	case "fontpitch" ; return asle_obj.fontpitch
	case "fontfamily" ; return asle_obj.fontfamily
	case "facename" ; return asle_obj.facename
	case "italic" ; return asle_obj.italic
	case "underline" ; return asle_obj.underline
	case "pointer" ; return asle_obj.pointer
	case "textcolor" ; return asle_obj.textcolor
	case "backcolor" ; return asle_obj.backcolor
	case "enabled" ; return asle_obj.enabled
	case "text" ; return asle_obj.text
	case "border" ; return asle_obj.border
	case "autohscroll" ; return asle_obj.autohscroll
	case "password" ; return asle_obj.password
	case "textcase" ; return asle_obj.textcase
	case "limit" ; return asle_obj.limit
	case "accelerator" ; return asle_obj.accelerator
	case "displayonly" ; return asle_obj.displayonly
	case "borderstyle" ; return asle_obj.borderstyle
	case "hideselection" ; return asle_obj.hideselection
	case "righttoleft" ; return asle_obj.righttoleft
	case "imemode" ; return asle_obj.imemode
	case else ; debug_message( classname(), "get_singlelineedit_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_multilineedit_property (multilineedit amle_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( amle_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return amle_obj.classdefinition
	case "tag" ; return amle_obj.tag
	case "visible" ; return amle_obj.visible
	case "accessiblename" ; return amle_obj.accessiblename
	case "accessibledescription" ; return amle_obj.accessibledescription
	case "accessiblerole" ; return amle_obj.accessiblerole
	case "x" ; return amle_obj.x
	case "y" ; return amle_obj.y
	case "width" ; return amle_obj.width
	case "height" ; return amle_obj.height
	case "taborder" ; return amle_obj.taborder
	case "dragicon" ; return amle_obj.dragicon
	case "dragauto" ; return amle_obj.dragauto
	case "bringtotop" ; return amle_obj.bringtotop
	case "textsize" ; return amle_obj.textsize
	case "weight" ; return amle_obj.weight
	case "fontcharset" ; return amle_obj.fontcharset
	case "fontpitch" ; return amle_obj.fontpitch
	case "fontfamily" ; return amle_obj.fontfamily
	case "facename" ; return amle_obj.facename
	case "italic" ; return amle_obj.italic
	case "underline" ; return amle_obj.underline
	case "pointer" ; return amle_obj.pointer
	case "textcolor" ; return amle_obj.textcolor
	case "backcolor" ; return amle_obj.backcolor
	case "enabled" ; return amle_obj.enabled
	case "text" ; return amle_obj.text
	case "border" ; return amle_obj.border
	case "hscrollbar" ; return amle_obj.hscrollbar
	case "vscrollbar" ; return amle_obj.vscrollbar
	case "autohscroll" ; return amle_obj.autohscroll
	case "autovscroll" ; return amle_obj.autovscroll
	case "alignment" ; return amle_obj.alignment
	case "textcase" ; return amle_obj.textcase
	case "limit" ; return amle_obj.limit
	case "tabstop" ; return amle_obj.tabstop
	case "accelerator" ; return amle_obj.accelerator
	case "displayonly" ; return amle_obj.displayonly
	case "borderstyle" ; return amle_obj.borderstyle
	case "hideselection" ; return amle_obj.hideselection
	case "ignoredefaultbutton" ; return amle_obj.ignoredefaultbutton
	case "righttoleft" ; return amle_obj.righttoleft
	case "imemode" ; return amle_obj.imemode
	case else ; debug_message( classname(), "get_multilineedit_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_statictext_property (statictext ast_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ast_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return ast_obj.classdefinition
	case "tag" ; return ast_obj.tag
	case "visible" ; return ast_obj.visible
	case "accessiblename" ; return ast_obj.accessiblename
	case "accessibledescription" ; return ast_obj.accessibledescription
	case "accessiblerole" ; return ast_obj.accessiblerole
	case "x" ; return ast_obj.x
	case "y" ; return ast_obj.y
	case "width" ; return ast_obj.width
	case "height" ; return ast_obj.height
	case "taborder" ; return ast_obj.taborder
	case "dragicon" ; return ast_obj.dragicon
	case "dragauto" ; return ast_obj.dragauto
	case "bringtotop" ; return ast_obj.bringtotop
	case "textsize" ; return ast_obj.textsize
	case "weight" ; return ast_obj.weight
	case "fontcharset" ; return ast_obj.fontcharset
	case "fontpitch" ; return ast_obj.fontpitch
	case "fontfamily" ; return ast_obj.fontfamily
	case "facename" ; return ast_obj.facename
	case "italic" ; return ast_obj.italic
	case "underline" ; return ast_obj.underline
	case "pointer" ; return ast_obj.pointer
	case "textcolor" ; return ast_obj.textcolor
	case "backcolor" ; return ast_obj.backcolor
	case "enabled" ; return ast_obj.enabled
	case "text" ; return ast_obj.text
	case "alignment" ; return ast_obj.alignment
	case "border" ; return ast_obj.border
	case "bordercolor" ; return ast_obj.bordercolor
	case "fillpattern" ; return ast_obj.fillpattern
	case "borderstyle" ; return ast_obj.borderstyle
	case "focusrectangle" ; return ast_obj.focusrectangle
	case "righttoleft" ; return ast_obj.righttoleft
	case "disabledlook" ; return ast_obj.disabledlook

	case else ; debug_message( classname(), "get_statictext_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function iterator getcontrols (powerobject apow_parent);return getControls( apow_parent, true )
//iterator iter
//iterator childs
//
////iter._add( /*powerobject apo_item */)
//long i
//choose case getdatatype( apow_parent )
//	case "window"
//		window lw
//		lw = apow_parent
//		for i = 1 to upperbound( lw.control[] )
//			iter._add( lw.control[i] )
//			childs = getControls( lw.control[i] )
//			do while childs.hasnext( )
//				iter._add( childs.getNext() )
//			loop			
//		next
//	case "tab"
//		tab ltab
//		ltab = apow_parent
//		for i = 1 to upperbound( ltab.control[] )
//			iter._add( ltab.control[i] )
//			childs = getControls( ltab.control[i] )
//			do while childs.hasnext( )
//				iter._add( childs.getNext() )
//			loop			
//		next		
//	case "userobject"
//		userobject luo
//		luo = apow_parent
//		for i = 1 to upperbound( luo.control[] )
//			iter._add( luo.control[i] )
//			childs = getControls( luo.control[i] )
//			do while childs.hasnext( )
//				iter._add( childs.getNext() )
//			loop			
//		next	
//	case "menu"
//		menu lmenu
//		lmenu = apow_parent
//		for i = 1 to upperbound( lmenu.item[] )
//			iter._add( lmenu.item[i] )
//			childs = getControls( lmenu.item[i] )
//			do while childs.hasnext( )
//				iter._add( childs.getNext() )
//			loop			
//		next			
////	case "datawindow"	// TODO : look behind for all [visible] controls and properties...
//	case else
////		debug_message( classname(), "getControls( " + apow_parent.classname() + " unhandled datatype: " + getdatatype( apow_parent ) + ")" )
//end choose
//
//return iter
end function

public function any get_commandbutton_property (commandbutton acb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( acb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return acb_obj.classdefinition
	case "tag" ; return acb_obj.tag
	case "visible" ; return acb_obj.visible
	case "accessiblename" ; return acb_obj.accessiblename
	case "accessibledescription" ; return acb_obj.accessibledescription
	case "accessiblerole" ; return acb_obj.accessiblerole
	case "x" ; return acb_obj.x
	case "y" ; return acb_obj.y
	case "width" ; return acb_obj.width
	case "height" ; return acb_obj.height
	case "taborder" ; return acb_obj.taborder
	case "dragicon" ; return acb_obj.dragicon
	case "dragauto" ; return acb_obj.dragauto
	case "bringtotop" ; return acb_obj.bringtotop
	case "textsize" ; return acb_obj.textsize
	case "weight" ; return acb_obj.weight
	case "fontcharset" ; return acb_obj.fontcharset
	case "fontpitch" ; return acb_obj.fontpitch
	case "fontfamily" ; return acb_obj.fontfamily
	case "facename" ; return acb_obj.facename
	case "italic" ; return acb_obj.italic
	case "underline" ; return acb_obj.underline
	case "pointer" ; return acb_obj.pointer
	case "enabled" ; return acb_obj.enabled
	case "text" ; return acb_obj.text
	case "cancel" ; return acb_obj.cancel
	case "default" ; return acb_obj.default
	case "flatstyle" ; return acb_obj.flatstyle

	case else ; debug_message( classname(), "get_commandbutton_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_listbox_property (listbox alb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( alb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return alb_obj.classdefinition
	case "tag" ; return alb_obj.tag
	case "visible" ; return alb_obj.visible
	case "accessiblename" ; return alb_obj.accessiblename
	case "accessibledescription" ; return alb_obj.accessibledescription
	case "accessiblerole" ; return alb_obj.accessiblerole
	case "x" ; return alb_obj.x
	case "y" ; return alb_obj.y
	case "width" ; return alb_obj.width
	case "height" ; return alb_obj.height
	case "taborder" ; return alb_obj.taborder
	case "dragicon" ; return alb_obj.dragicon
	case "dragauto" ; return alb_obj.dragauto
	case "bringtotop" ; return alb_obj.bringtotop
	case "textsize" ; return alb_obj.textsize
	case "weight" ; return alb_obj.weight
	case "fontcharset" ; return alb_obj.fontcharset
	case "fontpitch" ; return alb_obj.fontpitch
	case "fontfamily" ; return alb_obj.fontfamily
	case "facename" ; return alb_obj.facename
	case "italic" ; return alb_obj.italic
	case "underline" ; return alb_obj.underline
	case "pointer" ; return alb_obj.pointer
	case "textcolor" ; return alb_obj.textcolor
	case "backcolor" ; return alb_obj.backcolor
	case "enabled" ; return alb_obj.enabled
	case "border" ; return alb_obj.border
	case "hscrollbar" ; return alb_obj.hscrollbar
	case "vscrollbar" ; return alb_obj.vscrollbar
	case "sorted" ; return alb_obj.sorted
	case "multiselect" ; return alb_obj.multiselect
	case "tabstop" ; return alb_obj.tabstop
	case "item" ; return alb_obj.item
	case "accelerator" ; return alb_obj.accelerator
	case "borderstyle" ; return alb_obj.borderstyle
	case "extendedselect" ; return alb_obj.extendedselect
	case "disablenoscroll" ; return alb_obj.disablenoscroll
	case "righttoleft" ; return alb_obj.righttoleft
	case else ; debug_message( classname(), "get_listbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_treeview_property (treeview atv_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( atv_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return atv_obj.classdefinition
	case "tag" ; return atv_obj.tag
	case "visible" ; return atv_obj.visible
	case "accessiblename" ; return atv_obj.accessiblename
	case "accessibledescription" ; return atv_obj.accessibledescription
	case "accessiblerole" ; return atv_obj.accessiblerole
	case "x" ; return atv_obj.x
	case "y" ; return atv_obj.y
	case "width" ; return atv_obj.width
	case "height" ; return atv_obj.height
	case "taborder" ; return atv_obj.taborder
	case "dragicon" ; return atv_obj.dragicon
	case "dragauto" ; return atv_obj.dragauto
	case "bringtotop" ; return atv_obj.bringtotop
	case "textsize" ; return atv_obj.textsize
	case "weight" ; return atv_obj.weight
	case "fontcharset" ; return atv_obj.fontcharset
	case "fontpitch" ; return atv_obj.fontpitch
	case "fontfamily" ; return atv_obj.fontfamily
	case "facename" ; return atv_obj.facename
	case "italic" ; return atv_obj.italic
	case "underline" ; return atv_obj.underline
	case "pointer" ; return atv_obj.pointer
	case "textcolor" ; return atv_obj.textcolor
	case "backcolor" ; return atv_obj.backcolor
	case "enabled" ; return atv_obj.enabled
	case "border" ; return atv_obj.border
	case "accelerator" ; return atv_obj.accelerator
	case "borderstyle" ; return atv_obj.borderstyle
	case "indent" ; return atv_obj.indent
	case "editlabels" ; return atv_obj.editlabels
	case "deleteitems" ; return atv_obj.deleteitems
	case "hasbuttons" ; return atv_obj.hasbuttons
	case "haslines" ; return atv_obj.haslines
	case "linesatroot" ; return atv_obj.linesatroot
	case "disabledragdrop" ; return atv_obj.disabledragdrop
	case "hideselection" ; return atv_obj.hideselection
	case "tooltips" ; return atv_obj.tooltips
	case "checkboxes" ; return atv_obj.checkboxes
	case "trackselect" ; return atv_obj.trackselect
	case "fullrowselect" ; return atv_obj.fullrowselect
	case "singleexpand" ; return atv_obj.singleexpand
	case "sorttype" ; return atv_obj.sorttype
	case "picturename" ; return atv_obj.picturename
	case "picturewidth" ; return atv_obj.picturewidth
	case "pictureheight" ; return atv_obj.pictureheight
	case "picturemaskcolor" ; return atv_obj.picturemaskcolor
	case "statepicturename" ; return atv_obj.statepicturename
	case "statepicturewidth" ; return atv_obj.statepicturewidth
	case "statepictureheight" ; return atv_obj.statepictureheight
	case "statepicturemaskcolor" ; return atv_obj.statepicturemaskcolor
	case "imemode" ; return atv_obj.imemode
	case "righttoleft" ; return atv_obj.righttoleft
	case "layoutrtl" ; return atv_obj.layoutrtl
	case else ; debug_message( classname(), "get_treeview_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_olecontrol_property (olecontrol aole_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aole_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return aole_obj.classdefinition
	case "tag" ; return aole_obj.tag
	case "visible" ; return aole_obj.visible
	case "accessiblename" ; return aole_obj.accessiblename
	case "accessibledescription" ; return aole_obj.accessibledescription
	case "accessiblerole" ; return aole_obj.accessiblerole
	case "x" ; return aole_obj.x
	case "y" ; return aole_obj.y
	case "width" ; return aole_obj.width
	case "height" ; return aole_obj.height
	case "taborder" ; return aole_obj.taborder
	case "dragicon" ; return aole_obj.dragicon
	case "dragauto" ; return aole_obj.dragauto
	case "bringtotop" ; return aole_obj.bringtotop
//	case "anchor" ; return aole_obj.anchor
	case "object" ; return aole_obj.object
	case "enabled" ; return aole_obj.enabled
	case "border" ; return aole_obj.border
	case "borderstyle" ; return aole_obj.borderstyle
	case "backcolor" ; return aole_obj.backcolor
	case "pointer" ; return aole_obj.pointer
	case "focusrectangle" ; return aole_obj.focusrectangle
	case "isdragtarget" ; return aole_obj.isdragtarget
	case "classlongname" ; return aole_obj.classlongname
	case "classshortname" ; return aole_obj.classshortname
//	case "binarykey" ; return aole_obj.binarykey
//	case "binaryindex" ; return aole_obj.binaryindex
	case "displayname" ; return aole_obj.displayname
	case else ; debug_message( classname(), "get_olecontrol_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_inkpicture_property (inkpicture aip_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aip_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return aip_obj.classdefinition
	case "tag" ; return aip_obj.tag
	case "visible" ; return aip_obj.visible
	case "accessiblename" ; return aip_obj.accessiblename
	case "accessibledescription" ; return aip_obj.accessibledescription
	case "accessiblerole" ; return aip_obj.accessiblerole
	case "x" ; return aip_obj.x
	case "y" ; return aip_obj.y
	case "width" ; return aip_obj.width
	case "height" ; return aip_obj.height
	case "taborder" ; return aip_obj.taborder
	case "dragicon" ; return aip_obj.dragicon
	case "dragauto" ; return aip_obj.dragauto
	case "bringtotop" ; return aip_obj.bringtotop
	case "autoerase" ; return aip_obj.autoerase
	case "backcolor" ; return aip_obj.backcolor
	case "border" ; return aip_obj.border
	case "borderstyle" ; return aip_obj.borderstyle
	case "collectionmode" ; return aip_obj.collectionmode
	case "dynamicrendering" ; return aip_obj.dynamicrendering
	case "editmode" ; return aip_obj.editmode
	case "erasermode" ; return aip_obj.erasermode
	case "eraserwidth" ; return aip_obj.eraserwidth
	case "enabled" ; return aip_obj.enabled
	case "highcontrastink" ; return aip_obj.highcontrastink
	case "ignorepressure" ; return aip_obj.ignorepressure
	case "inkantialiased" ; return aip_obj.inkantialiased
	case "inkcolor" ; return aip_obj.inkcolor
	case "inkfilename" ; return aip_obj.inkfilename
	case "inkheight" ; return aip_obj.inkheight
	case "inktransparency" ; return aip_obj.inktransparency
	case "inkwidth" ; return aip_obj.inkwidth
	case "inkenabled" ; return aip_obj.inkenabled
	case "marginx" ; return aip_obj.marginx
	case "marginy" ; return aip_obj.marginy
	case "pointer" ; return aip_obj.pointer
	case "pentip" ; return aip_obj.pentip
	case "picturefilename" ; return aip_obj.picturefilename
	case "picturesizemode" ; return aip_obj.picturesizemode
	case "powertiptext" ; return aip_obj.powertiptext
	case "status" ; return aip_obj.status

	case else ; debug_message( classname(), "get_inkpicture_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_inkedit_property (inkedit aie_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aie_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return aie_obj.classdefinition
	case "tag" ; return aie_obj.tag
	case "visible" ; return aie_obj.visible
	case "accessiblename" ; return aie_obj.accessiblename
	case "accessibledescription" ; return aie_obj.accessibledescription
	case "accessiblerole" ; return aie_obj.accessiblerole
	case "x" ; return aie_obj.x
	case "y" ; return aie_obj.y
	case "width" ; return aie_obj.width
	case "height" ; return aie_obj.height
	case "taborder" ; return aie_obj.taborder
	case "dragicon" ; return aie_obj.dragicon
	case "dragauto" ; return aie_obj.dragauto
	case "bringtotop" ; return aie_obj.bringtotop
	case "alignment" ; return aie_obj.alignment
	case "backcolor" ; return aie_obj.backcolor
	case "border" ; return aie_obj.border
	case "borderstyle" ; return aie_obj.borderstyle
	case "displayonly" ; return aie_obj.displayonly
	case "enabled" ; return aie_obj.enabled
	case "factoid" ; return aie_obj.factoid
	case "hscrollbar" ; return aie_obj.hscrollbar
	case "righttoleft" ; return aie_obj.righttoleft
	case "ignorepressure" ; return aie_obj.ignorepressure
	case "inkantialiased" ; return aie_obj.inkantialiased
	case "inkcolor" ; return aie_obj.inkcolor
	case "inkheight" ; return aie_obj.inkheight
	case "inkmode" ; return aie_obj.inkmode
	case "inktransparency" ; return aie_obj.inktransparency
	case "inkwidth" ; return aie_obj.inkwidth
	case "insertastext" ; return aie_obj.insertastext
	case "limit" ; return aie_obj.limit
	case "pointer" ; return aie_obj.pointer
	case "pentip" ; return aie_obj.pentip
	case "recognitiontimer" ; return aie_obj.recognitiontimer
	case "status" ; return aie_obj.status
	case "textcolor" ; return aie_obj.textcolor
	case "text" ; return aie_obj.text
	case "textsize" ; return aie_obj.textsize
	case "weight" ; return aie_obj.weight
	case "fontcharset" ; return aie_obj.fontcharset
	case "fontpitch" ; return aie_obj.fontpitch
	case "fontfamily" ; return aie_obj.fontfamily
	case "facename" ; return aie_obj.facename
	case "italic" ; return aie_obj.italic
	case "underline" ; return aie_obj.underline
	case "usemouseforinput" ; return aie_obj.usemouseforinput
	case "vscrollbar" ; return aie_obj.vscrollbar
	case "modified" ; return aie_obj.modified

	case else ; debug_message( classname(), "get_inkedit_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_animation_property (animation aam_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aam_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return aam_obj.classdefinition
	case "tag" ; return aam_obj.tag
	case "visible" ; return aam_obj.visible
	case "accessiblename" ; return aam_obj.accessiblename
	case "accessibledescription" ; return aam_obj.accessibledescription
	case "accessiblerole" ; return aam_obj.accessiblerole
	case "x" ; return aam_obj.x
	case "y" ; return aam_obj.y
	case "width" ; return aam_obj.width
	case "height" ; return aam_obj.height
	case "taborder" ; return aam_obj.taborder
	case "dragicon" ; return aam_obj.dragicon
	case "dragauto" ; return aam_obj.dragauto
	case "bringtotop" ; return aam_obj.bringtotop
	case "pointer" ; return aam_obj.pointer
	case "enabled" ; return aam_obj.enabled
	case "originalsize" ; return aam_obj.originalsize
	case "border" ; return aam_obj.border
	case "borderstyle" ; return aam_obj.borderstyle
	case "powertiptext" ; return aam_obj.powertiptext
	case "animationname" ; return aam_obj.animationname
	case "autoplay" ; return aam_obj.autoplay
	case "transparent" ; return aam_obj.transparent

	case else ; debug_message( classname(), "get_animation_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_datepicker_property (datepicker adp_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( adp_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return adp_obj.classdefinition
	case "tag" ; return adp_obj.tag
	case "visible" ; return adp_obj.visible
	case "accessiblename" ; return adp_obj.accessiblename
	case "accessibledescription" ; return adp_obj.accessibledescription
	case "accessiblerole" ; return adp_obj.accessiblerole
	case "x" ; return adp_obj.x
	case "y" ; return adp_obj.y
	case "width" ; return adp_obj.width
	case "height" ; return adp_obj.height
	case "taborder" ; return adp_obj.taborder
	case "dragicon" ; return adp_obj.dragicon
	case "dragauto" ; return adp_obj.dragauto
	case "bringtotop" ; return adp_obj.bringtotop
	case "accelerator" ; return adp_obj.accelerator
	case "pointer" ; return adp_obj.pointer
	case "border" ; return adp_obj.border
	case "borderstyle" ; return adp_obj.borderstyle
	case "enabled" ; return adp_obj.enabled
	case "righttoleft" ; return adp_obj.righttoleft
	case "allowedit" ; return adp_obj.allowedit
	case "showupdown" ; return adp_obj.showupdown
	case "dropdownright" ; return adp_obj.dropdownright
	case "format" ; return adp_obj.format
	case "customformat" ; return adp_obj.customformat
	case "maxdate" ; return adp_obj.maxdate
	case "mindate" ; return adp_obj.mindate
	case "text" ; return adp_obj.text
	case "datevalue" ; return adp_obj.datevalue
	case "timevalue" ; return adp_obj.timevalue
	case "value" ; return adp_obj.value
	case "textsize" ; return adp_obj.textsize
	case "fontweight" ; return adp_obj.fontweight
	case "fontcharset" ; return adp_obj.fontcharset
	case "fontpitch" ; return adp_obj.fontpitch
	case "fontfamily" ; return adp_obj.fontfamily
	case "facename" ; return adp_obj.facename
	case "italic" ; return adp_obj.italic
	case "underline" ; return adp_obj.underline
	case "calendartextsize" ; return adp_obj.calendartextsize
	case "calendarfontweight" ; return adp_obj.calendarfontweight
	case "calendarfontcharset" ; return adp_obj.calendarfontcharset
	case "calendarfontpitch" ; return adp_obj.calendarfontpitch
	case "calendarfontfamily" ; return adp_obj.calendarfontfamily
	case "calendarfontname" ; return adp_obj.calendarfontname
	case "calendaritalic" ; return adp_obj.calendaritalic
	case "calendarunderline" ; return adp_obj.calendarunderline
	case "calendartextcolor" ; return adp_obj.calendartextcolor
	case "calendartitletextcolor" ; return adp_obj.calendartitletextcolor
	case "calendartrailingtextcolor" ; return adp_obj.calendartrailingtextcolor
	case "calendarbackcolor" ; return adp_obj.calendarbackcolor
	case "calendartitlebackcolor" ; return adp_obj.calendartitlebackcolor
	case "firstdayofweek" ; return adp_obj.firstdayofweek
	case "todaysection" ; return adp_obj.todaysection
	case "todaycircle" ; return adp_obj.todaycircle
	case "weeknumbers" ; return adp_obj.weeknumbers

		
	case else ; debug_message( classname(), "get_datepicker_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_monthcalendar_property (monthcalendar amc_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( amc_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return amc_obj.classdefinition
	case "tag" ; return amc_obj.tag
	case "visible" ; return amc_obj.visible
	case "accessiblename" ; return amc_obj.accessiblename
	case "accessibledescription" ; return amc_obj.accessibledescription
	case "accessiblerole" ; return amc_obj.accessiblerole
	case "x" ; return amc_obj.x
	case "y" ; return amc_obj.y
	case "width" ; return amc_obj.width
	case "height" ; return amc_obj.height
	case "taborder" ; return amc_obj.taborder
	case "dragicon" ; return amc_obj.dragicon
	case "dragauto" ; return amc_obj.dragauto
	case "bringtotop" ; return amc_obj.bringtotop
	case "textsize" ; return amc_obj.textsize
	case "weight" ; return amc_obj.weight
	case "fontcharset" ; return amc_obj.fontcharset
	case "fontpitch" ; return amc_obj.fontpitch
	case "fontfamily" ; return amc_obj.fontfamily
	case "facename" ; return amc_obj.facename
	case "italic" ; return amc_obj.italic
	case "underline" ; return amc_obj.underline
	case "pointer" ; return amc_obj.pointer
	case "enabled" ; return amc_obj.enabled
	case "textcolor" ; return amc_obj.textcolor
	case "titletextcolor" ; return amc_obj.titletextcolor
	case "trailingtextcolor" ; return amc_obj.trailingtextcolor
	case "backcolor" ; return amc_obj.backcolor
	case "monthbackcolor" ; return amc_obj.monthbackcolor
	case "titlebackcolor" ; return amc_obj.titlebackcolor
	case "firstdayofweek" ; return amc_obj.firstdayofweek
	case "maxselectcount" ; return amc_obj.maxselectcount
	case "scrollrate" ; return amc_obj.scrollrate
	case "todaysection" ; return amc_obj.todaysection
	case "todaycircle" ; return amc_obj.todaycircle
	case "weeknumbers" ; return amc_obj.weeknumbers
	case "border" ; return amc_obj.border
	case "borderstyle" ; return amc_obj.borderstyle
	case "autosize" ; return amc_obj.autosize
	case "accelerator" ; return amc_obj.accelerator

	case else ; debug_message( classname(), "get_monthcalendar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_graph_property (graph agr_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( agr_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return agr_obj.classdefinition
	case "tag" ; return agr_obj.tag
	case "visible" ; return agr_obj.visible
	case "accessiblename" ; return agr_obj.accessiblename
	case "accessibledescription" ; return agr_obj.accessibledescription
	case "accessiblerole" ; return agr_obj.accessiblerole
	case "x" ; return agr_obj.x
	case "y" ; return agr_obj.y
	case "width" ; return agr_obj.width
	case "height" ; return agr_obj.height
	case "taborder" ; return agr_obj.taborder
	case "dragicon" ; return agr_obj.dragicon
	case "dragauto" ; return agr_obj.dragauto
	case "bringtotop" ; return agr_obj.bringtotop
	case "pointer" ; return agr_obj.pointer
	case "enabled" ; return agr_obj.enabled
	case "border" ; return agr_obj.border
	case "graphtype" ; return agr_obj.graphtype
	case "textcolor" ; return agr_obj.textcolor
	case "backcolor" ; return agr_obj.backcolor
	case "shadecolor" ; return agr_obj.shadecolor
	case "overlappercent" ; return agr_obj.overlappercent
	case "spacing" ; return agr_obj.spacing
	case "title" ; return agr_obj.title
	case "titledispattr" ; return agr_obj.titledispattr
	case "elevation" ; return agr_obj.elevation
	case "rotation" ; return agr_obj.rotation
	case "perspective" ; return agr_obj.perspective
	case "depth" ; return agr_obj.depth
	case "series" ; return agr_obj.series
	case "category" ; return agr_obj.category
	case "values" ; return agr_obj.values
	case "legend" ; return agr_obj.legend
	case "legenddispattr" ; return agr_obj.legenddispattr
	case "borderstyle" ; return agr_obj.borderstyle
	case "focusrectangle" ; return agr_obj.focusrectangle
	case "plotnulldata" ; return agr_obj.plotnulldata
	case "seriessort" ; return agr_obj.seriessort
	case "categorysort" ; return agr_obj.categorysort
	case "piedispattr" ; return agr_obj.piedispattr
	case else ; debug_message( classname(), "get_graph_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_datawindow_property (datawindow adw_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( adw_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return adw_obj.classdefinition
	case "tag" ; return adw_obj.tag
	case "visible" ; return adw_obj.visible
	case "accessiblename" ; return adw_obj.accessiblename
	case "accessibledescription" ; return adw_obj.accessibledescription
	case "accessiblerole" ; return adw_obj.accessiblerole
	case "x" ; return adw_obj.x
	case "y" ; return adw_obj.y
	case "width" ; return adw_obj.width
	case "height" ; return adw_obj.height
	case "taborder" ; return adw_obj.taborder
	case "dragicon" ; return adw_obj.dragicon
	case "dragauto" ; return adw_obj.dragauto
	case "bringtotop" ; return adw_obj.bringtotop
	case "enabled" ; return adw_obj.enabled
	case "titlebar" ; return adw_obj.titlebar
	case "title" ; return adw_obj.title
	case "dataobject" ; return adw_obj.dataobject
	case "controlmenu" ; return adw_obj.controlmenu
	case "minbox" ; return adw_obj.minbox
	case "maxbox" ; return adw_obj.maxbox
	case "hscrollbar" ; return adw_obj.hscrollbar
	case "vscrollbar" ; return adw_obj.vscrollbar
	case "resizable" ; return adw_obj.resizable
	case "border" ; return adw_obj.border
	case "icon" ; return adw_obj.icon
	case "hsplitscroll" ; return adw_obj.hsplitscroll
	case "livescroll" ; return adw_obj.livescroll
	case "borderstyle" ; return adw_obj.borderstyle
	case "object" ; return adw_obj.object
	case "righttoleft" ; return adw_obj.righttoleft

	case else ; debug_message( classname(), "get_datawindow_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_listview_property (listview alv_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( alv_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return alv_obj.classdefinition
	case "tag" ; return alv_obj.tag
	case "visible" ; return alv_obj.visible
	case "accessiblename" ; return alv_obj.accessiblename
	case "accessibledescription" ; return alv_obj.accessibledescription
	case "accessiblerole" ; return alv_obj.accessiblerole
	case "x" ; return alv_obj.x
	case "y" ; return alv_obj.y
	case "width" ; return alv_obj.width
	case "height" ; return alv_obj.height
	case "taborder" ; return alv_obj.taborder
	case "dragicon" ; return alv_obj.dragicon
	case "dragauto" ; return alv_obj.dragauto
	case "bringtotop" ; return alv_obj.bringtotop
	case "textsize" ; return alv_obj.textsize
	case "weight" ; return alv_obj.weight
	case "fontcharset" ; return alv_obj.fontcharset
	case "fontpitch" ; return alv_obj.fontpitch
	case "fontfamily" ; return alv_obj.fontfamily
	case "facename" ; return alv_obj.facename
	case "italic" ; return alv_obj.italic
	case "underline" ; return alv_obj.underline
	case "pointer" ; return alv_obj.pointer
	case "textcolor" ; return alv_obj.textcolor
	case "backcolor" ; return alv_obj.backcolor
	case "enabled" ; return alv_obj.enabled
	case "border" ; return alv_obj.border
	case "accelerator" ; return alv_obj.accelerator
	case "borderstyle" ; return alv_obj.borderstyle
	case "autoarrange" ; return alv_obj.autoarrange
	case "buttonheader" ; return alv_obj.buttonheader
	case "deleteitems" ; return alv_obj.deleteitems
	case "editlabels" ; return alv_obj.editlabels
	case "extendedselect" ; return alv_obj.extendedselect
	case "fixedlocations" ; return alv_obj.fixedlocations
	case "showheader" ; return alv_obj.showheader
	case "labelwrap" ; return alv_obj.labelwrap
	case "scrolling" ; return alv_obj.scrolling
	case "hideselection" ; return alv_obj.hideselection
	case "checkboxes" ; return alv_obj.checkboxes
	case "trackselect" ; return alv_obj.trackselect
	case "oneclickactivate" ; return alv_obj.oneclickactivate
	case "twoclickactivate" ; return alv_obj.twoclickactivate
	case "gridlines" ; return alv_obj.gridlines
	case "headerdragdrop" ; return alv_obj.headerdragdrop
	case "fullrowselect" ; return alv_obj.fullrowselect
	case "underlinecold" ; return alv_obj.underlinecold
	case "underlinehot" ; return alv_obj.underlinehot
	case "sorttype" ; return alv_obj.sorttype
	case "view" ; return alv_obj.view
	case "item" ; return alv_obj.item
	case "itempictureindex" ; return alv_obj.itempictureindex
	case "largepicturename" ; return alv_obj.largepicturename
	case "largepicturewidth" ; return alv_obj.largepicturewidth
	case "largepictureheight" ; return alv_obj.largepictureheight
	case "largepicturemaskcolor" ; return alv_obj.largepicturemaskcolor
	case "smallpicturename" ; return alv_obj.smallpicturename
	case "smallpicturewidth" ; return alv_obj.smallpicturewidth
	case "smallpictureheight" ; return alv_obj.smallpictureheight
	case "smallpicturemaskcolor" ; return alv_obj.smallpicturemaskcolor
	case "statepicturename" ; return alv_obj.statepicturename
	case "statepicturewidth" ; return alv_obj.statepicturewidth
	case "statepictureheight" ; return alv_obj.statepictureheight
	case "statepicturemaskcolor" ; return alv_obj.statepicturemaskcolor
	case "imemode" ; return alv_obj.imemode
	case "righttoleft" ; return alv_obj.righttoleft
	case "layoutrtl" ; return alv_obj.layoutrtl

	case else ; debug_message( classname(), "get_listview_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_picturelistbox_property (picturelistbox aplb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aplb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return aplb_obj.classdefinition
	case "tag" ; return aplb_obj.tag
	case "visible" ; return aplb_obj.visible
	case "accessiblename" ; return aplb_obj.accessiblename
	case "accessibledescription" ; return aplb_obj.accessibledescription
	case "accessiblerole" ; return aplb_obj.accessiblerole
	case "x" ; return aplb_obj.x
	case "y" ; return aplb_obj.y
	case "width" ; return aplb_obj.width
	case "height" ; return aplb_obj.height
	case "taborder" ; return aplb_obj.taborder
	case "dragicon" ; return aplb_obj.dragicon
	case "dragauto" ; return aplb_obj.dragauto
	case "bringtotop" ; return aplb_obj.bringtotop
	case "textsize" ; return aplb_obj.textsize
	case "weight" ; return aplb_obj.weight
	case "fontcharset" ; return aplb_obj.fontcharset
	case "fontpitch" ; return aplb_obj.fontpitch
	case "fontfamily" ; return aplb_obj.fontfamily
	case "facename" ; return aplb_obj.facename
	case "italic" ; return aplb_obj.italic
	case "underline" ; return aplb_obj.underline
	case "pointer" ; return aplb_obj.pointer
	case "textcolor" ; return aplb_obj.textcolor
	case "backcolor" ; return aplb_obj.backcolor
	case "enabled" ; return aplb_obj.enabled
	case "border" ; return aplb_obj.border
	case "hscrollbar" ; return aplb_obj.hscrollbar
	case "vscrollbar" ; return aplb_obj.vscrollbar
	case "sorted" ; return aplb_obj.sorted
	case "multiselect" ; return aplb_obj.multiselect
	case "tabstop" ; return aplb_obj.tabstop
	case "item" ; return aplb_obj.item
	case "accelerator" ; return aplb_obj.accelerator
	case "borderstyle" ; return aplb_obj.borderstyle
	case "extendedselect" ; return aplb_obj.extendedselect
	case "disablenoscroll" ; return aplb_obj.disablenoscroll
	case "righttoleft" ; return aplb_obj.righttoleft
	case "itempictureindex" ; return aplb_obj.itempictureindex
	case "picturename" ; return aplb_obj.picturename
	case "picturewidth" ; return aplb_obj.picturewidth
	case "pictureheight" ; return aplb_obj.pictureheight
	case "picturemaskcolor" ; return aplb_obj.picturemaskcolor

	case else ; debug_message( classname(), "get_picturelistbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_dropdownpicturelistbox_property (dropdownpicturelistbox adplb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( adplb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return adplb_obj.classdefinition
	case "tag" ; return adplb_obj.tag
	case "visible" ; return adplb_obj.visible
	case "accessiblename" ; return adplb_obj.accessiblename
	case "accessibledescription" ; return adplb_obj.accessibledescription
	case "accessiblerole" ; return adplb_obj.accessiblerole
	case "x" ; return adplb_obj.x
	case "y" ; return adplb_obj.y
	case "width" ; return adplb_obj.width
	case "height" ; return adplb_obj.height
	case "taborder" ; return adplb_obj.taborder
	case "dragicon" ; return adplb_obj.dragicon
	case "dragauto" ; return adplb_obj.dragauto
	case "bringtotop" ; return adplb_obj.bringtotop
//	case "__init_imemode" ; return adplb_obj.__init_imemode
	case "textsize" ; return adplb_obj.textsize
	case "weight" ; return adplb_obj.weight
	case "fontcharset" ; return adplb_obj.fontcharset
	case "fontpitch" ; return adplb_obj.fontpitch
	case "fontfamily" ; return adplb_obj.fontfamily
	case "facename" ; return adplb_obj.facename
	case "italic" ; return adplb_obj.italic
	case "underline" ; return adplb_obj.underline
	case "pointer" ; return adplb_obj.pointer
	case "textcolor" ; return adplb_obj.textcolor
	case "backcolor" ; return adplb_obj.backcolor
	case "enabled" ; return adplb_obj.enabled
	case "text" ; return adplb_obj.text
	case "allowedit" ; return adplb_obj.allowedit
	case "autohscroll" ; return adplb_obj.autohscroll
	case "border" ; return adplb_obj.border
	case "sorted" ; return adplb_obj.sorted
	case "showlist" ; return adplb_obj.showlist
	case "hscrollbar" ; return adplb_obj.hscrollbar
	case "vscrollbar" ; return adplb_obj.vscrollbar
	case "limit" ; return adplb_obj.limit
	case "item" ; return adplb_obj.item
	case "accelerator" ; return adplb_obj.accelerator
	case "borderstyle" ; return adplb_obj.borderstyle
	case "righttoleft" ; return adplb_obj.righttoleft
	case "imemode" ; return adplb_obj.imemode
	case "itempictureindex" ; return adplb_obj.itempictureindex
	case "picturename" ; return adplb_obj.picturename
	case "picturewidth" ; return adplb_obj.picturewidth
	case "pictureheight" ; return adplb_obj.pictureheight
	case "picturemaskcolor" ; return adplb_obj.picturemaskcolor

	case else ; debug_message( classname(), "get_dropdownpicturelistbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_dropdownlistbox_property (dropdownlistbox addlb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( addlb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return addlb_obj.classdefinition
	case "tag" ; return addlb_obj.tag
	case "visible" ; return addlb_obj.visible
	case "accessiblename" ; return addlb_obj.accessiblename
	case "accessibledescription" ; return addlb_obj.accessibledescription
	case "accessiblerole" ; return addlb_obj.accessiblerole
	case "x" ; return addlb_obj.x
	case "y" ; return addlb_obj.y
	case "width" ; return addlb_obj.width
	case "height" ; return addlb_obj.height
	case "taborder" ; return addlb_obj.taborder
	case "dragicon" ; return addlb_obj.dragicon
	case "dragauto" ; return addlb_obj.dragauto
	case "bringtotop" ; return addlb_obj.bringtotop
	case "textsize" ; return addlb_obj.textsize
	case "weight" ; return addlb_obj.weight
	case "fontcharset" ; return addlb_obj.fontcharset
	case "fontpitch" ; return addlb_obj.fontpitch
	case "fontfamily" ; return addlb_obj.fontfamily
	case "facename" ; return addlb_obj.facename
	case "italic" ; return addlb_obj.italic
	case "underline" ; return addlb_obj.underline
	case "pointer" ; return addlb_obj.pointer
	case "textcolor" ; return addlb_obj.textcolor
	case "backcolor" ; return addlb_obj.backcolor
	case "enabled" ; return addlb_obj.enabled
	case "text" ; return addlb_obj.text
	case "allowedit" ; return addlb_obj.allowedit
	case "autohscroll" ; return addlb_obj.autohscroll
	case "border" ; return addlb_obj.border
	case "sorted" ; return addlb_obj.sorted
	case "showlist" ; return addlb_obj.showlist
	case "hscrollbar" ; return addlb_obj.hscrollbar
	case "vscrollbar" ; return addlb_obj.vscrollbar
	case "limit" ; return addlb_obj.limit
	case "item" ; return addlb_obj.item
	case "accelerator" ; return addlb_obj.accelerator
	case "borderstyle" ; return addlb_obj.borderstyle
	case "righttoleft" ; return addlb_obj.righttoleft
	case "imemode" ; return addlb_obj.imemode
	case else ; debug_message( classname(), "get_dropdownlistbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_vprogressbar_property (vprogressbar avpb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( avpb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return avpb_obj.classdefinition
	case "tag" ; return avpb_obj.tag
	case "visible" ; return avpb_obj.visible
	case "accessiblename" ; return avpb_obj.accessiblename
	case "accessibledescription" ; return avpb_obj.accessibledescription
	case "accessiblerole" ; return avpb_obj.accessiblerole
	case "x" ; return avpb_obj.x
	case "y" ; return avpb_obj.y
	case "width" ; return avpb_obj.width
	case "height" ; return avpb_obj.height
	case "taborder" ; return avpb_obj.taborder
	case "dragicon" ; return avpb_obj.dragicon
	case "dragauto" ; return avpb_obj.dragauto
	case "bringtotop" ; return avpb_obj.bringtotop
	case "pointer" ; return avpb_obj.pointer
	case "minposition" ; return avpb_obj.minposition
	case "maxposition" ; return avpb_obj.maxposition
	case "position" ; return avpb_obj.position
	case "setstep" ; return avpb_obj.setstep
	case "smoothscroll" ; return avpb_obj.smoothscroll
	case else ; debug_message( classname(), "get_vprogressbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_hprogressbar_property (hprogressbar ahpb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ahpb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
 case "classdefinition" ; return ahpb_obj.classdefinition
	case "tag" ; return ahpb_obj.tag
	case "visible" ; return ahpb_obj.visible
	case "accessiblename" ; return ahpb_obj.accessiblename
	case "accessibledescription" ; return ahpb_obj.accessibledescription
	case "accessiblerole" ; return ahpb_obj.accessiblerole
	case "x" ; return ahpb_obj.x
	case "y" ; return ahpb_obj.y
	case "width" ; return ahpb_obj.width
	case "height" ; return ahpb_obj.height
	case "taborder" ; return ahpb_obj.taborder
	case "dragicon" ; return ahpb_obj.dragicon
	case "dragauto" ; return ahpb_obj.dragauto
	case "bringtotop" ; return ahpb_obj.bringtotop
	case "pointer" ; return ahpb_obj.pointer
	case "minposition" ; return ahpb_obj.minposition
	case "maxposition" ; return ahpb_obj.maxposition
	case "position" ; return ahpb_obj.position
	case "setstep" ; return ahpb_obj.setstep
	case "smoothscroll" ; return ahpb_obj.smoothscroll
	case else ; debug_message( classname(), "get_hprogressbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_vtrackbar_property (vtrackbar avtb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( avtb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return avtb_obj.classdefinition
	case "tag" ; return avtb_obj.tag
	case "visible" ; return avtb_obj.visible
	case "accessiblename" ; return avtb_obj.accessiblename
	case "accessibledescription" ; return avtb_obj.accessibledescription
	case "accessiblerole" ; return avtb_obj.accessiblerole
	case "x" ; return avtb_obj.x
	case "y" ; return avtb_obj.y
	case "width" ; return avtb_obj.width
	case "height" ; return avtb_obj.height
	case "taborder" ; return avtb_obj.taborder
	case "dragicon" ; return avtb_obj.dragicon
	case "dragauto" ; return avtb_obj.dragauto
	case "bringtotop" ; return avtb_obj.bringtotop
	case "pointer" ; return avtb_obj.pointer
	case "minposition" ; return avtb_obj.minposition
	case "maxposition" ; return avtb_obj.maxposition
	case "position" ; return avtb_obj.position
	case "tickfrequency" ; return avtb_obj.tickfrequency
	case "pagesize" ; return avtb_obj.pagesize
	case "linesize" ; return avtb_obj.linesize
	case "slidersize" ; return avtb_obj.slidersize
	case "slider" ; return avtb_obj.slider
	case "tickmarks" ; return avtb_obj.tickmarks
	case else ; debug_message( classname(), "get_vtrackbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_htrackbar_property (htrackbar ahtb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ahtb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return ahtb_obj.classdefinition
	case "tag" ; return ahtb_obj.tag
	case "visible" ; return ahtb_obj.visible
	case "accessiblename" ; return ahtb_obj.accessiblename
	case "accessibledescription" ; return ahtb_obj.accessibledescription
	case "accessiblerole" ; return ahtb_obj.accessiblerole
	case "x" ; return ahtb_obj.x
	case "y" ; return ahtb_obj.y
	case "width" ; return ahtb_obj.width
	case "height" ; return ahtb_obj.height
	case "taborder" ; return ahtb_obj.taborder
	case "dragicon" ; return ahtb_obj.dragicon
	case "dragauto" ; return ahtb_obj.dragauto
	case "bringtotop" ; return ahtb_obj.bringtotop
	case "pointer" ; return ahtb_obj.pointer
	case "minposition" ; return ahtb_obj.minposition
	case "maxposition" ; return ahtb_obj.maxposition
	case "position" ; return ahtb_obj.position
	case "tickfrequency" ; return ahtb_obj.tickfrequency
	case "pagesize" ; return ahtb_obj.pagesize
	case "linesize" ; return ahtb_obj.linesize
	case "slidersize" ; return ahtb_obj.slidersize
	case "slider" ; return ahtb_obj.slider
	case "tickmarks" ; return ahtb_obj.tickmarks
	case else ; debug_message( classname(), "get_htrackbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_vscrollbar_property (vscrollbar avsb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( avsb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return avsb_obj.classdefinition
	case "tag" ; return avsb_obj.tag
	case "visible" ; return avsb_obj.visible
	case "accessiblename" ; return avsb_obj.accessiblename
	case "accessibledescription" ; return avsb_obj.accessibledescription
	case "accessiblerole" ; return avsb_obj.accessiblerole
	case "x" ; return avsb_obj.x
	case "y" ; return avsb_obj.y
	case "width" ; return avsb_obj.width
	case "height" ; return avsb_obj.height
	case "taborder" ; return avsb_obj.taborder
	case "dragicon" ; return avsb_obj.dragicon
	case "dragauto" ; return avsb_obj.dragauto
	case "bringtotop" ; return avsb_obj.bringtotop
	case "pointer" ; return avsb_obj.pointer
	case "stdwidth" ; return avsb_obj.stdwidth
	case "minposition" ; return avsb_obj.minposition
	case "maxposition" ; return avsb_obj.maxposition
	case "position" ; return avsb_obj.position
	case else ; debug_message( classname(), "get_vscrollbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_hscrollbar_property (hscrollbar ahsb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ahsb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return ahsb_obj.classdefinition
	case "tag" ; return ahsb_obj.tag
	case "visible" ; return ahsb_obj.visible
	case "accessiblename" ; return ahsb_obj.accessiblename
	case "accessibledescription" ; return ahsb_obj.accessibledescription
	case "accessiblerole" ; return ahsb_obj.accessiblerole
	case "x" ; return ahsb_obj.x
	case "y" ; return ahsb_obj.y
	case "width" ; return ahsb_obj.width
	case "height" ; return ahsb_obj.height
	case "taborder" ; return ahsb_obj.taborder
	case "dragicon" ; return ahsb_obj.dragicon
	case "dragauto" ; return ahsb_obj.dragauto
	case "bringtotop" ; return ahsb_obj.bringtotop
	case "pointer" ; return ahsb_obj.pointer
	case "stdheight" ; return ahsb_obj.stdheight
	case "minposition" ; return ahsb_obj.minposition
	case "maxposition" ; return ahsb_obj.maxposition
	case "position" ; return ahsb_obj.position
	case else ; debug_message( classname(), "get_hscrollbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_richtextedit_property (richtextedit arte_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( arte_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return arte_obj.classdefinition
	case "tag" ; return arte_obj.tag
	case "visible" ; return arte_obj.visible
	case "accessiblename" ; return arte_obj.accessiblename
	case "accessibledescription" ; return arte_obj.accessibledescription
	case "accessiblerole" ; return arte_obj.accessiblerole
	case "x" ; return arte_obj.x
	case "y" ; return arte_obj.y
	case "width" ; return arte_obj.width
	case "height" ; return arte_obj.height
	case "taborder" ; return arte_obj.taborder
	case "dragicon" ; return arte_obj.dragicon
	case "dragauto" ; return arte_obj.dragauto
	case "bringtotop" ; return arte_obj.bringtotop
	case "textsize" ; return arte_obj.textsize
	case "weight" ; return arte_obj.weight
	case "fontcharset" ; return arte_obj.fontcharset
	case "fontpitch" ; return arte_obj.fontpitch
	case "fontfamily" ; return arte_obj.fontfamily
	case "facename" ; return arte_obj.facename
	case "italic" ; return arte_obj.italic
	case "underline" ; return arte_obj.underline
	case "pointer" ; return arte_obj.pointer
	case "enabled" ; return arte_obj.enabled
	case "border" ; return arte_obj.border
	case "hscrollbar" ; return arte_obj.hscrollbar
	case "vscrollbar" ; return arte_obj.vscrollbar
	case "accelerator" ; return arte_obj.accelerator
	case "borderstyle" ; return arte_obj.borderstyle
	case "backcolor" ; return arte_obj.backcolor
	case "resizable" ; return arte_obj.resizable
	case "modified" ; return arte_obj.modified
	case "wordwrap" ; return arte_obj.wordwrap
	case "picturesasframe" ; return arte_obj.picturesasframe
	case "returnsvisible" ; return arte_obj.returnsvisible
	case "spacesvisible" ; return arte_obj.spacesvisible
	case "tabsvisible" ; return arte_obj.tabsvisible
	case "controlcharsvisible" ; return arte_obj.controlcharsvisible
	case "inputfieldbackcolor" ; return arte_obj.inputfieldbackcolor
	case "inputfieldsvisible" ; return arte_obj.inputfieldsvisible
	case "inputfieldnamesvisible" ; return arte_obj.inputfieldnamesvisible
	case "rulerbar" ; return arte_obj.rulerbar
	case "tabbar" ; return arte_obj.tabbar
	case "statusbar" ; return arte_obj.statusbar
	case "toolbar" ; return arte_obj.toolbar
	case "headerfooter" ; return arte_obj.headerfooter
	case "popmenu" ; return arte_obj.popmenu
	case "undodepth" ; return arte_obj.undodepth
	case "leftmargin" ; return arte_obj.leftmargin
	case "topmargin" ; return arte_obj.topmargin
	case "rightmargin" ; return arte_obj.rightmargin
	case "bottommargin" ; return arte_obj.bottommargin
	case "documentname" ; return arte_obj.documentname
	case "displayonly" ; return arte_obj.displayonly
	case "imemode" ; return arte_obj.imemode
	case "selectedstartpos" ; return arte_obj.selectedstartpos
	case "selectedtextlength" ; return arte_obj.selectedtextlength		
	case else ; debug_message( classname(), "get_richtextedit_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_editmask_property (editmask aem_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aem_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return aem_obj.classdefinition
	case "tag" ; return aem_obj.tag
	case "visible" ; return aem_obj.visible
	case "accessiblename" ; return aem_obj.accessiblename
	case "accessibledescription" ; return aem_obj.accessibledescription
	case "accessiblerole" ; return aem_obj.accessiblerole
	case "x" ; return aem_obj.x
	case "y" ; return aem_obj.y
	case "width" ; return aem_obj.width
	case "height" ; return aem_obj.height
	case "taborder" ; return aem_obj.taborder
	case "dragicon" ; return aem_obj.dragicon
	case "dragauto" ; return aem_obj.dragauto
	case "bringtotop" ; return aem_obj.bringtotop
//	case "__init_imemode" ; return aem_obj.__init_imemode
	case "textsize" ; return aem_obj.textsize
	case "weight" ; return aem_obj.weight
	case "fontcharset" ; return aem_obj.fontcharset
	case "fontpitch" ; return aem_obj.fontpitch
	case "fontfamily" ; return aem_obj.fontfamily
	case "facename" ; return aem_obj.facename
	case "italic" ; return aem_obj.italic
	case "underline" ; return aem_obj.underline
	case "pointer" ; return aem_obj.pointer
	case "textcolor" ; return aem_obj.textcolor
	case "backcolor" ; return aem_obj.backcolor
	case "enabled" ; return aem_obj.enabled
	case "text" ; return aem_obj.text
	case "border" ; return aem_obj.border
	case "hscrollbar" ; return aem_obj.hscrollbar
	case "vscrollbar" ; return aem_obj.vscrollbar
	case "autohscroll" ; return aem_obj.autohscroll
	case "autovscroll" ; return aem_obj.autovscroll
	case "alignment" ; return aem_obj.alignment
	case "textcase" ; return aem_obj.textcase
	case "limit" ; return aem_obj.limit
	case "tabstop" ; return aem_obj.tabstop
	case "accelerator" ; return aem_obj.accelerator
	case "displayonly" ; return aem_obj.displayonly
	case "borderstyle" ; return aem_obj.borderstyle
	case "hideselection" ; return aem_obj.hideselection
	case "ignoredefaultbutton" ; return aem_obj.ignoredefaultbutton
	case "righttoleft" ; return aem_obj.righttoleft
	case "imemode" ; return aem_obj.imemode
	case "maskdatatype" ; return aem_obj.maskdatatype
	case "mask" ; return aem_obj.mask
	case "autoskip" ; return aem_obj.autoskip
	case "spin" ; return aem_obj.spin
	case "displaydata" ; return aem_obj.displaydata
	case "increment" ; return aem_obj.increment
	case "minmax" ; return aem_obj.minmax
	case "usecodetable" ; return aem_obj.usecodetable
	case "dropdowncalendar" ; return aem_obj.dropdowncalendar
	case "dropdownright" ; return aem_obj.dropdownright
	case "calendartextcolor" ; return aem_obj.calendartextcolor
	case "calendartitletextcolor" ; return aem_obj.calendartitletextcolor
	case "calendartrailingtextcolor" ; return aem_obj.calendartrailingtextcolor
	case "calendarbackcolor" ; return aem_obj.calendarbackcolor
	case "calendartitlebackcolor" ; return aem_obj.calendartitlebackcolor
	case else ; debug_message( classname(), "get_editmask_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_picturehyperlink_property (picturehyperlink aphl_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aphl_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return aphl_obj.classdefinition
	case "tag" ; return aphl_obj.tag
	case "visible" ; return aphl_obj.visible
	case "accessiblename" ; return aphl_obj.accessiblename
	case "accessibledescription" ; return aphl_obj.accessibledescription
	case "accessiblerole" ; return aphl_obj.accessiblerole
	case "x" ; return aphl_obj.x
	case "y" ; return aphl_obj.y
	case "width" ; return aphl_obj.width
	case "height" ; return aphl_obj.height
	case "taborder" ; return aphl_obj.taborder
	case "dragicon" ; return aphl_obj.dragicon
	case "dragauto" ; return aphl_obj.dragauto
	case "bringtotop" ; return aphl_obj.bringtotop
	case "pointer" ; return aphl_obj.pointer
	case "enabled" ; return aphl_obj.enabled
	case "originalsize" ; return aphl_obj.originalsize
	case "picturename" ; return aphl_obj.picturename
	case "invert" ; return aphl_obj.invert
	case "border" ; return aphl_obj.border
	case "borderstyle" ; return aphl_obj.borderstyle
	case "focusrectangle" ; return aphl_obj.focusrectangle
	case "map3dcolors" ; return aphl_obj.map3dcolors
	case "powertiptext" ; return aphl_obj.powertiptext
	case "url" ; return aphl_obj.url
	case else ; debug_message( classname(), "get_picturehyperlink_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_picture_property (picture ap_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ap_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return ap_obj.classdefinition
	case "tag" ; return ap_obj.tag
	case "visible" ; return ap_obj.visible
	case "accessiblename" ; return ap_obj.accessiblename
	case "accessibledescription" ; return ap_obj.accessibledescription
	case "accessiblerole" ; return ap_obj.accessiblerole
	case "x" ; return ap_obj.x
	case "y" ; return ap_obj.y
	case "width" ; return ap_obj.width
	case "height" ; return ap_obj.height
	case "taborder" ; return ap_obj.taborder
	case "dragicon" ; return ap_obj.dragicon
	case "dragauto" ; return ap_obj.dragauto
	case "bringtotop" ; return ap_obj.bringtotop
	case "pointer" ; return ap_obj.pointer
	case "enabled" ; return ap_obj.enabled
	case "originalsize" ; return ap_obj.originalsize
	case "picturename" ; return ap_obj.picturename
	case "invert" ; return ap_obj.invert
	case "border" ; return ap_obj.border
	case "borderstyle" ; return ap_obj.borderstyle
	case "focusrectangle" ; return ap_obj.focusrectangle
	case "map3dcolors" ; return ap_obj.map3dcolors
	case "powertiptext" ; return ap_obj.powertiptext
	case else ; debug_message( classname(), "get_picture_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_statichyperlink_property (statichyperlink ashl_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ashl_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return ashl_obj.classdefinition
	case "tag" ; return ashl_obj.tag
	case "visible" ; return ashl_obj.visible
	case "accessiblename" ; return ashl_obj.accessiblename
	case "accessibledescription" ; return ashl_obj.accessibledescription
	case "accessiblerole" ; return ashl_obj.accessiblerole
	case "x" ; return ashl_obj.x
	case "y" ; return ashl_obj.y
	case "width" ; return ashl_obj.width
	case "height" ; return ashl_obj.height
	case "taborder" ; return ashl_obj.taborder
	case "dragicon" ; return ashl_obj.dragicon
	case "dragauto" ; return ashl_obj.dragauto
	case "bringtotop" ; return ashl_obj.bringtotop
	case "textsize" ; return ashl_obj.textsize
	case "weight" ; return ashl_obj.weight
	case "fontcharset" ; return ashl_obj.fontcharset
	case "fontpitch" ; return ashl_obj.fontpitch
	case "fontfamily" ; return ashl_obj.fontfamily
	case "facename" ; return ashl_obj.facename
	case "italic" ; return ashl_obj.italic
	case "underline" ; return ashl_obj.underline
	case "pointer" ; return ashl_obj.pointer
	case "textcolor" ; return ashl_obj.textcolor
	case "backcolor" ; return ashl_obj.backcolor
	case "enabled" ; return ashl_obj.enabled
	case "text" ; return ashl_obj.text
	case "alignment" ; return ashl_obj.alignment
	case "border" ; return ashl_obj.border
	case "bordercolor" ; return ashl_obj.bordercolor
	case "fillpattern" ; return ashl_obj.fillpattern
	case "borderstyle" ; return ashl_obj.borderstyle
	case "focusrectangle" ; return ashl_obj.focusrectangle
	case "righttoleft" ; return ashl_obj.righttoleft
	case "disabledlook" ; return ashl_obj.disabledlook
	case "url" ; return ashl_obj.url
	case else ; debug_message( classname(), "get_statichyperlink_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_radiobutton_property (radiobutton arb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( arb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return arb_obj.classdefinition
	case "tag" ; return arb_obj.tag
	case "visible" ; return arb_obj.visible
	case "accessiblename" ; return arb_obj.accessiblename
	case "accessibledescription" ; return arb_obj.accessibledescription
	case "accessiblerole" ; return arb_obj.accessiblerole
	case "x" ; return arb_obj.x
	case "y" ; return arb_obj.y
	case "width" ; return arb_obj.width
	case "height" ; return arb_obj.height
	case "taborder" ; return arb_obj.taborder
	case "dragicon" ; return arb_obj.dragicon
	case "dragauto" ; return arb_obj.dragauto
	case "bringtotop" ; return arb_obj.bringtotop
	case "textsize" ; return arb_obj.textsize
	case "weight" ; return arb_obj.weight
	case "fontcharset" ; return arb_obj.fontcharset
	case "fontpitch" ; return arb_obj.fontpitch
	case "fontfamily" ; return arb_obj.fontfamily
	case "facename" ; return arb_obj.facename
	case "italic" ; return arb_obj.italic
	case "underline" ; return arb_obj.underline
	case "pointer" ; return arb_obj.pointer
	case "textcolor" ; return arb_obj.textcolor
	case "backcolor" ; return arb_obj.backcolor
	case "enabled" ; return arb_obj.enabled
	case "text" ; return arb_obj.text
	case "checked" ; return arb_obj.checked
	case "automatic" ; return arb_obj.automatic
	case "lefttext" ; return arb_obj.lefttext
	case "borderstyle" ; return arb_obj.borderstyle
	case "righttoleft" ; return arb_obj.righttoleft
	case else ; debug_message( classname(), "get_radiobutton_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_checkbox_property (checkbox acbx_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( acbx_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return acbx_obj.classdefinition
	case "tag" ; return acbx_obj.tag
	case "visible" ; return acbx_obj.visible
	case "accessiblename" ; return acbx_obj.accessiblename
	case "accessibledescription" ; return acbx_obj.accessibledescription
	case "accessiblerole" ; return acbx_obj.accessiblerole
	case "x" ; return acbx_obj.x
	case "y" ; return acbx_obj.y
	case "width" ; return acbx_obj.width
	case "height" ; return acbx_obj.height
	case "taborder" ; return acbx_obj.taborder
	case "dragicon" ; return acbx_obj.dragicon
	case "dragauto" ; return acbx_obj.dragauto
	case "bringtotop" ; return acbx_obj.bringtotop
	case "textsize" ; return acbx_obj.textsize
	case "weight" ; return acbx_obj.weight
	case "fontcharset" ; return acbx_obj.fontcharset
	case "fontpitch" ; return acbx_obj.fontpitch
	case "fontfamily" ; return acbx_obj.fontfamily
	case "facename" ; return acbx_obj.facename
	case "italic" ; return acbx_obj.italic
	case "underline" ; return acbx_obj.underline
	case "pointer" ; return acbx_obj.pointer
	case "textcolor" ; return acbx_obj.textcolor
	case "backcolor" ; return acbx_obj.backcolor
	case "enabled" ; return acbx_obj.enabled
	case "text" ; return acbx_obj.text
	case "automatic" ; return acbx_obj.automatic
	case "checked" ; return acbx_obj.checked
	case "lefttext" ; return acbx_obj.lefttext
	case "threestate" ; return acbx_obj.threestate
	case "thirdstate" ; return acbx_obj.thirdstate
	case "borderstyle" ; return acbx_obj.borderstyle
	case "righttoleft" ; return acbx_obj.righttoleft

	case else ; debug_message( classname(), "get_checkbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_picturebutton_property (picturebutton apb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( apb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return apb_obj.classdefinition
	case "tag" ; return apb_obj.tag
	case "visible" ; return apb_obj.visible
	case "accessiblename" ; return apb_obj.accessiblename
	case "accessibledescription" ; return apb_obj.accessibledescription
	case "accessiblerole" ; return apb_obj.accessiblerole
	case "x" ; return apb_obj.x
	case "y" ; return apb_obj.y
	case "width" ; return apb_obj.width
	case "height" ; return apb_obj.height
	case "taborder" ; return apb_obj.taborder
	case "dragicon" ; return apb_obj.dragicon
	case "dragauto" ; return apb_obj.dragauto
	case "bringtotop" ; return apb_obj.bringtotop
	case "textsize" ; return apb_obj.textsize
	case "weight" ; return apb_obj.weight
	case "fontcharset" ; return apb_obj.fontcharset
	case "fontpitch" ; return apb_obj.fontpitch
	case "fontfamily" ; return apb_obj.fontfamily
	case "facename" ; return apb_obj.facename
	case "italic" ; return apb_obj.italic
	case "underline" ; return apb_obj.underline
	case "pointer" ; return apb_obj.pointer
	case "enabled" ; return apb_obj.enabled
	case "text" ; return apb_obj.text
	case "cancel" ; return apb_obj.cancel
	case "default" ; return apb_obj.default
	case "flatstyle" ; return apb_obj.flatstyle
	case "originalsize" ; return apb_obj.originalsize
	case "picturename" ; return apb_obj.picturename
	case "disabledname" ; return apb_obj.disabledname
	case "htextalign" ; return apb_obj.htextalign
	case "vtextalign" ; return apb_obj.vtextalign
	case "map3dcolors" ; return apb_obj.map3dcolors
	case "powertiptext" ; return apb_obj.powertiptext

	case else ; debug_message( classname(), "get_picturebutton_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_groupbox_property (groupbox agb_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( agb_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return agb_obj.classdefinition
	case "tag" ; return agb_obj.tag
	case "visible" ; return agb_obj.visible
	case "accessiblename" ; return agb_obj.accessiblename
	case "accessibledescription" ; return agb_obj.accessibledescription
	case "accessiblerole" ; return agb_obj.accessiblerole
	case "x" ; return agb_obj.x
	case "y" ; return agb_obj.y
	case "width" ; return agb_obj.width
	case "height" ; return agb_obj.height
	case "taborder" ; return agb_obj.taborder
	case "dragicon" ; return agb_obj.dragicon
	case "dragauto" ; return agb_obj.dragauto
	case "bringtotop" ; return agb_obj.bringtotop
	case "textsize" ; return agb_obj.textsize
	case "weight" ; return agb_obj.weight
	case "fontcharset" ; return agb_obj.fontcharset
	case "fontpitch" ; return agb_obj.fontpitch
	case "fontfamily" ; return agb_obj.fontfamily
	case "facename" ; return agb_obj.facename
	case "italic" ; return agb_obj.italic
	case "underline" ; return agb_obj.underline
	case "pointer" ; return agb_obj.pointer
	case "textcolor" ; return agb_obj.textcolor
	case "backcolor" ; return agb_obj.backcolor
	case "enabled" ; return agb_obj.enabled
	case "text" ; return agb_obj.text
	case "borderstyle" ; return agb_obj.borderstyle
	case "righttoleft" ; return agb_obj.righttoleft

	case else ; debug_message( classname(), "get_groupbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_line_property (line aln_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aln_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return aln_obj.classdefinition
	case "tag" ; return aln_obj.tag
	case "visible" ; return aln_obj.visible
	case "linecolor" ; return aln_obj.linecolor
	case "linestyle" ; return aln_obj.linestyle
	case "linethickness" ; return aln_obj.linethickness
	case "beginx" ; return aln_obj.beginx
	case "beginy" ; return aln_obj.beginy
	case "endx" ; return aln_obj.endx
	case "endy" ; return aln_obj.endy
	case else ; debug_message( classname(), "get_line_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_oval_property (oval aov_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aov_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return aov_obj.classdefinition
	case "tag" ; return aov_obj.tag
	case "visible" ; return aov_obj.visible
	case "linecolor" ; return aov_obj.linecolor
	case "linestyle" ; return aov_obj.linestyle
	case "linethickness" ; return aov_obj.linethickness
	case "fillcolor" ; return aov_obj.fillcolor
	case "fillpattern" ; return aov_obj.fillpattern
	case "x" ; return aov_obj.x
	case "y" ; return aov_obj.y
	case "width" ; return aov_obj.width
	case "height" ; return aov_obj.height
	case else ; debug_message( classname(), "get_oval_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_rectangle_property (rectangle ar_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ar_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return ar_obj.classdefinition
	case "tag" ; return ar_obj.tag
	case "visible" ; return ar_obj.visible
	case "linecolor" ; return ar_obj.linecolor
	case "linestyle" ; return ar_obj.linestyle
	case "linethickness" ; return ar_obj.linethickness
	case "fillcolor" ; return ar_obj.fillcolor
	case "fillpattern" ; return ar_obj.fillpattern
	case "x" ; return ar_obj.x
	case "y" ; return ar_obj.y
	case "width" ; return ar_obj.width
	case "height" ; return ar_obj.height
	case else ; debug_message( classname(), "get_rectangle_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public function any get_roundrectangle_property (roundrectangle arr_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( arr_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return arr_obj.classdefinition
	case "tag" ; return arr_obj.tag
	case "visible" ; return arr_obj.visible
	case "linecolor" ; return arr_obj.linecolor
	case "linestyle" ; return arr_obj.linestyle
	case "linethickness" ; return arr_obj.linethickness
	case "fillcolor" ; return arr_obj.fillcolor
	case "fillpattern" ; return arr_obj.fillpattern
	case "x" ; return arr_obj.x
	case "y" ; return arr_obj.y
	case "width" ; return arr_obj.width
	case "height" ; return arr_obj.height
	case "cornerheight" ; return arr_obj.cornerheight
	case "cornerwidth" ; return arr_obj.cornerwidth
	case else ; debug_message( classname(), "get_roundrectangle_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public subroutine setproperty (powerobject apow_object, string as_fullqualifiedpropertyname, any aa_value);if isnull( apow_object ) or not isvalid( apow_object ) then 
	debug_message( classname(), "setProperty( NotValidObject!, " + as_fullqualifiedpropertyname + ", " + string( aa_value ) + ") Called with an invalid object !" )
	return
end if
//debug_message( classname(), "setProperty( " + apow_object.classname() + ", " + as_fullqualifiedpropertyname + "," + string( aa_value ) + ")" )

choose case getDataType( apow_object )		
	case "window" ;	 set_window_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "classdefinition" ;  set_classdefinition_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "tab" ;  set_tab_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "userobject" ;  set_userobject_property( apow_object, as_fullqualifiedpropertyname, aa_value )	
	case "statictext" ;  set_statictext_property( apow_object, as_fullqualifiedpropertyname, aa_value )			
	case "singlelineedit" ;  set_singlelineedit_property( apow_object, as_fullqualifiedpropertyname, aa_value )	
	case "multilineedit" ;  set_multilineedit_property( apow_object, as_fullqualifiedpropertyname, aa_value )			
	case "commandbutton" ;  set_commandbutton_property( apow_object, as_fullqualifiedpropertyname, aa_value )			
	case "listbox" ;  set_listbox_property(apow_object, as_fullqualifiedpropertyname, aa_value )
	case "treeview" ;  set_treeview_property(apow_object, as_fullqualifiedpropertyname, aa_value )
	case "olecontrol" ;  set_olecontrol_property(apow_object, as_fullqualifiedpropertyname, aa_value )
	case "inkpicture" ;  set_inkpicture_property(apow_object, as_fullqualifiedpropertyname, aa_value )		
	case "inkedit" ;  set_inkedit_property(apow_object, as_fullqualifiedpropertyname, aa_value )		
	case "animation" ;  set_animation_property(apow_object, as_fullqualifiedpropertyname, aa_value )		
	case "datepicker" ;  set_datepicker_property(apow_object, as_fullqualifiedpropertyname, aa_value )				
	case "monthcalendar" ;  set_monthcalendar_property(apow_object, as_fullqualifiedpropertyname, aa_value )						
	case "graph" ;  set_graph_property(apow_object, as_fullqualifiedpropertyname, aa_value )								
	case "datawindow" ;  set_datawindow_property(apow_object, as_fullqualifiedpropertyname, aa_value )										
	case "listview" ;  set_listview_property(apow_object, as_fullqualifiedpropertyname, aa_value )												
	case "picturelistbox" ;  set_picturelistbox_property(apow_object, as_fullqualifiedpropertyname, aa_value )														
	case "dropdownlistbox" ;  set_dropdownlistbox_property(apow_object, as_fullqualifiedpropertyname, aa_value )														
	case "dropdownpicturelistbox" ;  set_dropdownpicturelistbox_property(apow_object, as_fullqualifiedpropertyname, aa_value )																
	case "vprogressbar" ;  set_vprogressbar_property(apow_object, as_fullqualifiedpropertyname, aa_value )
	case "hprogressbar" ;  set_hprogressbar_property(apow_object, as_fullqualifiedpropertyname, aa_value )		
	case "vtrackbar" ;  set_vtrackbar_property(apow_object, as_fullqualifiedpropertyname, aa_value )
	case "htrackbar" ;  set_htrackbar_property(apow_object, as_fullqualifiedpropertyname, aa_value )		
	case "vscrollbar" ;  set_vscrollbar_property(apow_object, as_fullqualifiedpropertyname, aa_value )		
	case "hscrollbar" ;  set_hscrollbar_property(apow_object, as_fullqualifiedpropertyname, aa_value )				
	case "richtextedit" ;  set_richtextedit_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "editmask" ;  set_editmask_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "picturehyperlink" ;  set_picturehyperlink_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "picture" ;  set_picture_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "statichyperlink" ;  set_statichyperlink_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "radiobutton" ;  set_radiobutton_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "checkbox" ;  set_checkbox_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "picturebutton" ;  set_picturebutton_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "groupbox" ;  set_groupbox_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "line" ;  set_line_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "oval" ;  set_oval_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "rectangle" ;  set_rectangle_property( apow_object, as_fullqualifiedpropertyname, aa_value )
	case "roundrectangle" ;  set_roundrectangle_property( apow_object, as_fullqualifiedpropertyname, aa_value )	
	case "menu" ;  set_menu_property( apow_object, as_fullqualifiedpropertyname, aa_value )			
	case "menucascade" ;  set_menucascade_property( apow_object, as_fullqualifiedpropertyname, aa_value )	
	case "nv_dwcontrol" ; set_dwcontrol_property( apow_object, as_fullqualifiedpropertyname, aa_value )	
	case else
		debug_message( classname(), "setProperty : Unhandled datatype: " + getDataType( apow_object ) )
end choose

end subroutine

public subroutine set_window_property (window aw_win, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...

//debug_message( classname(), "set_window_property: "+aw_win.classname() + ", " + as_fullqualifiedpropertyname )

if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aw_win, as_fullqualifiedpropertyname )
//	debug_message( classname(), "Getting control... " + lpow_control.classname() +" for " + as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname	
	case "accessiblerole" ; aw_win.accessiblerole = aa_value
	case "border" ; aw_win.border = aa_value
	case "bringtotop" ; aw_win.bringtotop = aa_value
	case "center" ; aw_win.center = aa_value
	case "clientedge" ; aw_win.clientedge = aa_value
	case "contexthelp" ; aw_win.contexthelp = aa_value
	case "controlmenu" ; aw_win.controlmenu = aa_value
	case "enabled" ; aw_win.enabled = aa_value
	case "hscrollbar" ; aw_win.hscrollbar = aa_value
	case "keyboardicon" ; aw_win.keyboardicon = aa_value
	case "maxbox" ; aw_win.maxbox = aa_value
	case "minbox" ; aw_win.minbox = aa_value
	case "palettewindow" ; aw_win.palettewindow = aa_value
	case "resizable" ; aw_win.resizable = aa_value
	case "righttoleft" ; aw_win.righttoleft = aa_value
//	case "titlebar" ; aw_win.titlebar		 = aa_value
	case "toolbarvisible" ; aw_win.toolbarvisible = aa_value
	case "visible" ; aw_win.visible = aa_value
	case "vscrollbar" ; aw_win.vscrollbar = aa_value
	case "columnsperpage" ; aw_win.columnsperpage = aa_value
	case "height" ; aw_win.height = aa_value
	case "linesperpage" ; aw_win.linesperpage = aa_value
	case "toolbarheight" ; aw_win.toolbarheight = aa_value
	case "toolbarwidth" ; aw_win.toolbarwidth = aa_value
	case "toolbarx" ; aw_win.toolbarx		 = aa_value
	case "toolbary" ; aw_win.toolbary = aa_value
	case "unitspercolumn" ; aw_win.unitspercolumn = aa_value
	case "unitsperline" ; aw_win.unitsperline = aa_value
	case "width" ; aw_win.width = aa_value
	case "x" ; aw_win.x = aa_value
	case "y" ; aw_win.y = aa_value
	case "backcolor" ; aw_win.backcolor = aa_value
	case "menuid" ; aw_win.menuid = aa_value
	case "accessibledescription" ; aw_win.accessibledescription = aa_value
	case "accessiblename" ; aw_win.accessiblename	 = aa_value
	case "icon" ; aw_win.icon = aa_value
	case "menuname" ; aw_win.menuname = aa_value
	case "pointer" ; aw_win.pointer = aa_value
	case "tag" ; aw_win.tag = aa_value
	case "title" ; aw_win.title = aa_value
	case "toolbaralignment" ; aw_win.toolbaralignment = aa_value
	case "windowstate" ; aw_win.windowstate = aa_value
//	case "windowtype" ; aw_win.windowtype = aa_value
	case else ; debug_message( classname(), "set_window_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_classdefinition_property (classdefinition acd_def, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( acd_def, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname,aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "isautoinstantiate" ; acd_def.isautoinstantiate = aa_value
//	case "isstructure" ; acd_def.isstructure = aa_value
//	case "issystemtype" ; acd_def.issystemtype = aa_value
//	case "isvariablelength" ; acd_def.isvariablelength = aa_value
//	case "isvisualtype" ; acd_def.isvisualtype = aa_value
//	case "ancestor" ; acd_def.ancestor = aa_value
//	case "nestedclasslists[]" ; acd_def.nestedclasslists[] = aa_value
//	case "parentclass" ; acd_def.parentclass = aa_value
//	case "scriptlist[]" ; acd_def.scriptlist[] = aa_value
//	case "datatypeof" ; acd_def.datatypeof = aa_value
//	case "libraryname" ; acd_def.libraryname = aa_value
//	case "name" ; acd_def.name = aa_value
//	case "category" ; acd_def.category = aa_value
//	case "variablelist[]" ; acd_def.variablelist[] = aa_value
	case ""
	case else ; debug_message( classname(), "set_classdefinition_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose
end subroutine

public subroutine set_tab_property (tab atab_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( atab_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
	case "accessiblerole" ; atab_obj.accessiblerole = aa_value
	case "alignment" ; atab_obj.alignment = aa_value
	case "boldselectedtext" ; atab_obj.boldselectedtext = aa_value
	case "bringtotop" ; atab_obj.bringtotop = aa_value
	case "createondemand" ; atab_obj.createondemand = aa_value
	case "dragauto" ; atab_obj.dragauto = aa_value
	case "enabled" ; atab_obj.enabled = aa_value
	case "fixedwidth" ; atab_obj.fixedwidth = aa_value
	case "focusonbuttondown" ; atab_obj.focusonbuttondown = aa_value
	case "italic" ; atab_obj.italic = aa_value
	case "multiline" ; atab_obj.multiline = aa_value
	case "perpendiculartext" ; atab_obj.perpendiculartext = aa_value
	case "pictureonright" ; atab_obj.pictureonright = aa_value
	case "powertips" ; atab_obj.powertips = aa_value
	case "raggedright" ; atab_obj.raggedright = aa_value
	case "showpicture" ; atab_obj.showpicture = aa_value
	case "showtext" ; atab_obj.showtext = aa_value
	case "underline" ; atab_obj.underline = aa_value
	case "visible" ; atab_obj.visible = aa_value
	case "fontcharset" ; atab_obj.fontcharset = aa_value
	case "fontfamily" ; atab_obj.fontfamily = aa_value
	case "fontpitch" ; atab_obj.fontpitch = aa_value
	case "height" ; atab_obj.height = aa_value
	case "selectedtab" ; atab_obj.selectedtab = aa_value
	case "taborder" ; atab_obj.taborder = aa_value
	case "textsize" ; atab_obj.textsize = aa_value
	case "weight" ; atab_obj.weight = aa_value
	case "width" ; atab_obj.width = aa_value
	case "x" ; atab_obj.x = aa_value
	case "y" ; atab_obj.y = aa_value
	case "backcolor" ; atab_obj.backcolor = aa_value
	case "accessibledescription" ; atab_obj.accessibledescription = aa_value
	case "accessiblename" ; atab_obj.accessiblename	 = aa_value
	case "dragicon" ; atab_obj.dragicon = aa_value
	case "facename" ; atab_obj.facename = aa_value
	case "pointer" ; atab_obj.pointer = aa_value
	case "tag" ; atab_obj.tag = aa_value
	case else ; debug_message( classname(), "set_tab_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return
end subroutine

public subroutine set_userobject_property (userobject auo_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( auo_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; auo_obj.classdefinition = aa_value
	case "tag" ; auo_obj.tag = aa_value
	case "visible" ; auo_obj.visible = aa_value
	case "accessiblename" ; auo_obj.accessiblename = aa_value
	case "accessibledescription" ; auo_obj.accessibledescription = aa_value
	case "accessiblerole" ; auo_obj.accessiblerole = aa_value
	case "x" ; auo_obj.x = aa_value
	case "y" ; auo_obj.y = aa_value
	case "width" ; auo_obj.width = aa_value
	case "height" ; auo_obj.height = aa_value
	case "taborder" ; auo_obj.taborder = aa_value
	case "dragicon" ; auo_obj.dragicon = aa_value
	case "dragauto" ; auo_obj.dragauto = aa_value
	case "bringtotop" ; auo_obj.bringtotop = aa_value
	case "enabled" ; auo_obj.enabled = aa_value
	case "hscrollbar" ; auo_obj.hscrollbar = aa_value
	case "vscrollbar" ; auo_obj.vscrollbar = aa_value
	case "border" ; auo_obj.border = aa_value
//	case "objecttype" ; auo_obj.objecttype = aa_value
//	case "control" ; auo_obj.control = aa_value
	case "backcolor" ; auo_obj.backcolor = aa_value
	case "pointer" ; auo_obj.pointer = aa_value
	case "classname" ; auo_obj.classname = aa_value
	case "libraryname" ; auo_obj.libraryname = aa_value
	case "text" ; auo_obj.text = aa_value
	case "style" ; auo_obj.style = aa_value
	case "unitsperline" ; auo_obj.unitsperline = aa_value
	case "linesperpage" ; auo_obj.linesperpage = aa_value
	case "unitspercolumn" ; auo_obj.unitspercolumn = aa_value
	case "columnsperpage" ; auo_obj.columnsperpage = aa_value
	case "borderstyle" ; auo_obj.borderstyle = aa_value
	case "tabtextcolor" ; auo_obj.tabtextcolor = aa_value
	case "tabbackcolor" ; auo_obj.tabbackcolor = aa_value
	case "picturename" ; auo_obj.picturename = aa_value
	case "picturemaskcolor" ; auo_obj.picturemaskcolor = aa_value
	case "powertiptext" ; auo_obj.powertiptext = aa_value
	case else ; debug_message( classname(), "set_userobject_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_statictext_property (statictext ast_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ast_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; ast_obj.classdefinition = aa_value
	case "tag" ; ast_obj.tag = aa_value
	case "visible" ; ast_obj.visible = aa_value
	case "accessiblename" ; ast_obj.accessiblename = aa_value
	case "accessibledescription" ; ast_obj.accessibledescription = aa_value
	case "accessiblerole" ; ast_obj.accessiblerole = aa_value
	case "x" ; ast_obj.x = aa_value
	case "y" ; ast_obj.y = aa_value
	case "width" ; ast_obj.width = aa_value
	case "height" ; ast_obj.height = aa_value
	case "taborder" ; ast_obj.taborder = aa_value
	case "dragicon" ; ast_obj.dragicon = aa_value
	case "dragauto" ; ast_obj.dragauto = aa_value
	case "bringtotop" ; ast_obj.bringtotop = aa_value
	case "textsize" ; ast_obj.textsize = aa_value
	case "weight" ; ast_obj.weight = aa_value
	case "fontcharset" ; ast_obj.fontcharset = aa_value
	case "fontpitch" ; ast_obj.fontpitch = aa_value
	case "fontfamily" ; ast_obj.fontfamily = aa_value
	case "facename" ; ast_obj.facename = aa_value
	case "italic" ; ast_obj.italic = aa_value
	case "underline" ; ast_obj.underline = aa_value
	case "pointer" ; ast_obj.pointer = aa_value
	case "textcolor" ; ast_obj.textcolor = aa_value
	case "backcolor" ; ast_obj.backcolor = aa_value
	case "enabled" ; ast_obj.enabled = aa_value
	case "text" ; ast_obj.text = aa_value
	case "alignment" ; ast_obj.alignment = aa_value
	case "border" ; ast_obj.border = aa_value
	case "bordercolor" ; ast_obj.bordercolor = aa_value
	case "fillpattern" ; ast_obj.fillpattern = aa_value
	case "borderstyle" ; ast_obj.borderstyle = aa_value
	case "focusrectangle" ; ast_obj.focusrectangle = aa_value
	case "righttoleft" ; ast_obj.righttoleft = aa_value
	case "disabledlook" ; ast_obj.disabledlook = aa_value

	case else ; debug_message( classname(), "set_statictext_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_singlelineedit_property (singlelineedit asle_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( asle_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; asle_obj.classdefinition = aa_value
	case "tag" ; asle_obj.tag = aa_value
	case "visible" ; asle_obj.visible = aa_value
	case "accessiblename" ; asle_obj.accessiblename = aa_value
	case "accessibledescription" ; asle_obj.accessibledescription = aa_value
	case "accessiblerole" ; asle_obj.accessiblerole = aa_value
	case "x" ; asle_obj.x = aa_value
	case "y" ; asle_obj.y = aa_value
	case "width" ; asle_obj.width = aa_value
	case "height" ; asle_obj.height = aa_value
	case "taborder" ; asle_obj.taborder = aa_value
	case "dragicon" ; asle_obj.dragicon = aa_value
	case "dragauto" ; asle_obj.dragauto = aa_value
	case "bringtotop" ; asle_obj.bringtotop = aa_value
	case "textsize" ; asle_obj.textsize = aa_value
	case "weight" ; asle_obj.weight = aa_value
	case "fontcharset" ; asle_obj.fontcharset = aa_value
	case "fontpitch" ; asle_obj.fontpitch = aa_value
	case "fontfamily" ; asle_obj.fontfamily = aa_value
	case "facename" ; asle_obj.facename = aa_value
	case "italic" ; asle_obj.italic = aa_value
	case "underline" ; asle_obj.underline = aa_value
	case "pointer" ; asle_obj.pointer = aa_value
	case "textcolor" ; asle_obj.textcolor = aa_value
	case "backcolor" ; asle_obj.backcolor = aa_value
	case "enabled" ; asle_obj.enabled = aa_value
	case "text" ; asle_obj.text = aa_value
	case "border" ; asle_obj.border = aa_value
	case "autohscroll" ; asle_obj.autohscroll = aa_value
	case "password" ; asle_obj.password = aa_value
	case "textcase" ; asle_obj.textcase = aa_value
	case "limit" ; asle_obj.limit = aa_value
	case "accelerator" ; asle_obj.accelerator = aa_value
	case "displayonly" ; asle_obj.displayonly = aa_value
	case "borderstyle" ; asle_obj.borderstyle = aa_value
	case "hideselection" ; asle_obj.hideselection = aa_value
	case "righttoleft" ; asle_obj.righttoleft = aa_value
	case "imemode" ; asle_obj.imemode = aa_value
	case else ; debug_message( classname(), "set_singlelineedit_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_multilineedit_property (multilineedit amle_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( amle_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; amle_obj.classdefinition = aa_value
	case "tag" ; amle_obj.tag = aa_value
	case "visible" ; amle_obj.visible = aa_value
	case "accessiblename" ; amle_obj.accessiblename = aa_value
	case "accessibledescription" ; amle_obj.accessibledescription = aa_value
	case "accessiblerole" ; amle_obj.accessiblerole = aa_value
	case "x" ; amle_obj.x = aa_value
	case "y" ; amle_obj.y = aa_value
	case "width" ; amle_obj.width = aa_value
	case "height" ; amle_obj.height = aa_value
	case "taborder" ; amle_obj.taborder = aa_value
	case "dragicon" ; amle_obj.dragicon = aa_value
	case "dragauto" ; amle_obj.dragauto = aa_value
	case "bringtotop" ; amle_obj.bringtotop = aa_value
	case "textsize" ; amle_obj.textsize = aa_value
	case "weight" ; amle_obj.weight = aa_value
	case "fontcharset" ; amle_obj.fontcharset = aa_value
	case "fontpitch" ; amle_obj.fontpitch = aa_value
	case "fontfamily" ; amle_obj.fontfamily = aa_value
	case "facename" ; amle_obj.facename = aa_value
	case "italic" ; amle_obj.italic = aa_value
	case "underline" ; amle_obj.underline = aa_value
	case "pointer" ; amle_obj.pointer = aa_value
	case "textcolor" ; amle_obj.textcolor = aa_value
	case "backcolor" ; amle_obj.backcolor = aa_value
	case "enabled" ; amle_obj.enabled = aa_value
	case "text" ; amle_obj.text = aa_value
	case "border" ; amle_obj.border = aa_value
	case "hscrollbar" ; amle_obj.hscrollbar = aa_value
	case "vscrollbar" ; amle_obj.vscrollbar = aa_value
	case "autohscroll" ; amle_obj.autohscroll = aa_value
	case "autovscroll" ; amle_obj.autovscroll = aa_value
	case "alignment" ; amle_obj.alignment = aa_value
	case "textcase" ; amle_obj.textcase = aa_value
	case "limit" ; amle_obj.limit = aa_value
	case "tabstop" ; amle_obj.tabstop = aa_value
	case "accelerator" ; amle_obj.accelerator = aa_value
	case "displayonly" ; amle_obj.displayonly = aa_value
	case "borderstyle" ; amle_obj.borderstyle = aa_value
	case "hideselection" ; amle_obj.hideselection = aa_value
	case "ignoredefaultbutton" ; amle_obj.ignoredefaultbutton = aa_value
	case "righttoleft" ; amle_obj.righttoleft = aa_value
	case "imemode" ; amle_obj.imemode = aa_value
	case else ; debug_message( classname(), "set_multilineedit_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_commandbutton_property (commandbutton acb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( acb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; acb_obj.classdefinition = aa_value
	case "tag" ; acb_obj.tag = aa_value
	case "visible" ; acb_obj.visible = aa_value
	case "accessiblename" ; acb_obj.accessiblename = aa_value
	case "accessibledescription" ; acb_obj.accessibledescription = aa_value
	case "accessiblerole" ; acb_obj.accessiblerole = aa_value
	case "x" ; acb_obj.x = aa_value
	case "y" ; acb_obj.y = aa_value
	case "width" ; acb_obj.width = aa_value
	case "height" ; acb_obj.height = aa_value
	case "taborder" ; acb_obj.taborder = aa_value
	case "dragicon" ; acb_obj.dragicon = aa_value
	case "dragauto" ; acb_obj.dragauto = aa_value
	case "bringtotop" ; acb_obj.bringtotop = aa_value
	case "textsize" ; acb_obj.textsize = aa_value
	case "weight" ; acb_obj.weight = aa_value
	case "fontcharset" ; acb_obj.fontcharset = aa_value
	case "fontpitch" ; acb_obj.fontpitch = aa_value
	case "fontfamily" ; acb_obj.fontfamily = aa_value
	case "facename" ; acb_obj.facename = aa_value
	case "italic" ; acb_obj.italic = aa_value
	case "underline" ; acb_obj.underline = aa_value
	case "pointer" ; acb_obj.pointer = aa_value
	case "enabled" ; acb_obj.enabled = aa_value
	case "text" ; acb_obj.text = aa_value
	case "cancel" ; acb_obj.cancel = aa_value
	case "default" ; acb_obj.default = aa_value
	case "flatstyle" ; acb_obj.flatstyle = aa_value

	case else ; debug_message( classname(), "set_commandbutton_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_listbox_property (listbox alb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( alb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; alb_obj.classdefinition = aa_value
	case "tag" ; alb_obj.tag = aa_value
	case "visible" ; alb_obj.visible = aa_value
	case "accessiblename" ; alb_obj.accessiblename = aa_value
	case "accessibledescription" ; alb_obj.accessibledescription = aa_value
	case "accessiblerole" ; alb_obj.accessiblerole = aa_value
	case "x" ; alb_obj.x = aa_value
	case "y" ; alb_obj.y = aa_value
	case "width" ; alb_obj.width = aa_value
	case "height" ; alb_obj.height = aa_value
	case "taborder" ; alb_obj.taborder = aa_value
	case "dragicon" ; alb_obj.dragicon = aa_value
	case "dragauto" ; alb_obj.dragauto = aa_value
	case "bringtotop" ; alb_obj.bringtotop = aa_value
	case "textsize" ; alb_obj.textsize = aa_value
	case "weight" ; alb_obj.weight = aa_value
	case "fontcharset" ; alb_obj.fontcharset = aa_value
	case "fontpitch" ; alb_obj.fontpitch = aa_value
	case "fontfamily" ; alb_obj.fontfamily = aa_value
	case "facename" ; alb_obj.facename = aa_value
	case "italic" ; alb_obj.italic = aa_value
	case "underline" ; alb_obj.underline = aa_value
	case "pointer" ; alb_obj.pointer = aa_value
	case "textcolor" ; alb_obj.textcolor = aa_value
	case "backcolor" ; alb_obj.backcolor = aa_value
	case "enabled" ; alb_obj.enabled = aa_value
	case "border" ; alb_obj.border = aa_value
	case "hscrollbar" ; alb_obj.hscrollbar = aa_value
	case "vscrollbar" ; alb_obj.vscrollbar = aa_value
	case "sorted" ; alb_obj.sorted = aa_value
	case "multiselect" ; alb_obj.multiselect = aa_value
	case "tabstop" ; alb_obj.tabstop = aa_value
//	case "item" ; alb_obj.item = aa_value
	case "accelerator" ; alb_obj.accelerator = aa_value
	case "borderstyle" ; alb_obj.borderstyle = aa_value
	case "extendedselect" ; alb_obj.extendedselect = aa_value
	case "disablenoscroll" ; alb_obj.disablenoscroll = aa_value
	case "righttoleft" ; alb_obj.righttoleft = aa_value
	case else ; debug_message( classname(), "set_listbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_treeview_property (treeview atv_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( atv_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; atv_obj.classdefinition = aa_value
	case "tag" ; atv_obj.tag = aa_value
	case "visible" ; atv_obj.visible = aa_value
	case "accessiblename" ; atv_obj.accessiblename = aa_value
	case "accessibledescription" ; atv_obj.accessibledescription = aa_value
	case "accessiblerole" ; atv_obj.accessiblerole = aa_value
	case "x" ; atv_obj.x = aa_value
	case "y" ; atv_obj.y = aa_value
	case "width" ; atv_obj.width = aa_value
	case "height" ; atv_obj.height = aa_value
	case "taborder" ; atv_obj.taborder = aa_value
	case "dragicon" ; atv_obj.dragicon = aa_value
	case "dragauto" ; atv_obj.dragauto = aa_value
	case "bringtotop" ; atv_obj.bringtotop = aa_value
	case "textsize" ; atv_obj.textsize = aa_value
	case "weight" ; atv_obj.weight = aa_value
	case "fontcharset" ; atv_obj.fontcharset = aa_value
	case "fontpitch" ; atv_obj.fontpitch = aa_value
	case "fontfamily" ; atv_obj.fontfamily = aa_value
	case "facename" ; atv_obj.facename = aa_value
	case "italic" ; atv_obj.italic = aa_value
	case "underline" ; atv_obj.underline = aa_value
	case "pointer" ; atv_obj.pointer = aa_value
	case "textcolor" ; atv_obj.textcolor = aa_value
	case "backcolor" ; atv_obj.backcolor = aa_value
	case "enabled" ; atv_obj.enabled = aa_value
	case "border" ; atv_obj.border = aa_value
	case "accelerator" ; atv_obj.accelerator = aa_value
	case "borderstyle" ; atv_obj.borderstyle = aa_value
	case "indent" ; atv_obj.indent = aa_value
	case "editlabels" ; atv_obj.editlabels = aa_value
	case "deleteitems" ; atv_obj.deleteitems = aa_value
	case "hasbuttons" ; atv_obj.hasbuttons = aa_value
	case "haslines" ; atv_obj.haslines = aa_value
	case "linesatroot" ; atv_obj.linesatroot = aa_value
	case "disabledragdrop" ; atv_obj.disabledragdrop = aa_value
	case "hideselection" ; atv_obj.hideselection = aa_value
	case "tooltips" ; atv_obj.tooltips = aa_value
	case "checkboxes" ; atv_obj.checkboxes = aa_value
	case "trackselect" ; atv_obj.trackselect = aa_value
	case "fullrowselect" ; atv_obj.fullrowselect = aa_value
	case "singleexpand" ; atv_obj.singleexpand = aa_value
	case "sorttype" ; atv_obj.sorttype = aa_value
//	case "picturename" ; atv_obj.picturename = aa_value
	case "picturewidth" ; atv_obj.picturewidth = aa_value
	case "pictureheight" ; atv_obj.pictureheight = aa_value
	case "picturemaskcolor" ; atv_obj.picturemaskcolor = aa_value
//	case "statepicturename" ; atv_obj.statepicturename = aa_value
	case "statepicturewidth" ; atv_obj.statepicturewidth = aa_value
	case "statepictureheight" ; atv_obj.statepictureheight = aa_value
	case "statepicturemaskcolor" ; atv_obj.statepicturemaskcolor = aa_value
	case "imemode" ; atv_obj.imemode = aa_value
	case "righttoleft" ; atv_obj.righttoleft = aa_value
	case "layoutrtl" ; atv_obj.layoutrtl = aa_value
	case else ; debug_message( classname(), "set_treeview_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_olecontrol_property (olecontrol aole_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aole_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; aole_obj.classdefinition = aa_value
	case "tag" ; aole_obj.tag = aa_value
	case "visible" ; aole_obj.visible = aa_value
	case "accessiblename" ; aole_obj.accessiblename = aa_value
	case "accessibledescription" ; aole_obj.accessibledescription = aa_value
	case "accessiblerole" ; aole_obj.accessiblerole = aa_value
	case "x" ; aole_obj.x = aa_value
	case "y" ; aole_obj.y = aa_value
	case "width" ; aole_obj.width = aa_value
	case "height" ; aole_obj.height = aa_value
	case "taborder" ; aole_obj.taborder = aa_value
	case "dragicon" ; aole_obj.dragicon = aa_value
	case "dragauto" ; aole_obj.dragauto = aa_value
	case "bringtotop" ; aole_obj.bringtotop = aa_value
//	case "anchor" ; aole_obj.anchor = aa_value
//	case "object" ; aole_obj.object = aa_value
	case "enabled" ; aole_obj.enabled = aa_value
	case "border" ; aole_obj.border = aa_value
	case "borderstyle" ; aole_obj.borderstyle = aa_value
	case "backcolor" ; aole_obj.backcolor = aa_value
	case "pointer" ; aole_obj.pointer = aa_value
	case "focusrectangle" ; aole_obj.focusrectangle = aa_value
	case "isdragtarget" ; aole_obj.isdragtarget = aa_value
//	case "classlongname" ; aole_obj.classlongname = aa_value
//	case "classshortname" ; aole_obj.classshortname = aa_value
//	case "binarykey" ; aole_obj.binarykey = aa_value
//	case "binaryindex" ; aole_obj.binaryindex = aa_value
	case "displayname" ; aole_obj.displayname = aa_value
	case else ; debug_message( classname(), "set_olecontrol_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_inkpicture_property (inkpicture aip_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aip_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; aip_obj.classdefinition = aa_value
	case "tag" ; aip_obj.tag = aa_value
	case "visible" ; aip_obj.visible = aa_value
	case "accessiblename" ; aip_obj.accessiblename = aa_value
	case "accessibledescription" ; aip_obj.accessibledescription = aa_value
	case "accessiblerole" ; aip_obj.accessiblerole = aa_value
	case "x" ; aip_obj.x = aa_value
	case "y" ; aip_obj.y = aa_value
	case "width" ; aip_obj.width = aa_value
	case "height" ; aip_obj.height = aa_value
	case "taborder" ; aip_obj.taborder = aa_value
	case "dragicon" ; aip_obj.dragicon = aa_value
	case "dragauto" ; aip_obj.dragauto = aa_value
	case "bringtotop" ; aip_obj.bringtotop = aa_value
	case "autoerase" ; aip_obj.autoerase = aa_value
	case "backcolor" ; aip_obj.backcolor = aa_value
	case "border" ; aip_obj.border = aa_value
	case "borderstyle" ; aip_obj.borderstyle = aa_value
	case "collectionmode" ; aip_obj.collectionmode = aa_value
	case "dynamicrendering" ; aip_obj.dynamicrendering = aa_value
	case "editmode" ; aip_obj.editmode = aa_value
	case "erasermode" ; aip_obj.erasermode = aa_value
	case "eraserwidth" ; aip_obj.eraserwidth = aa_value
	case "enabled" ; aip_obj.enabled = aa_value
	case "highcontrastink" ; aip_obj.highcontrastink = aa_value
	case "ignorepressure" ; aip_obj.ignorepressure = aa_value
	case "inkantialiased" ; aip_obj.inkantialiased = aa_value
	case "inkcolor" ; aip_obj.inkcolor = aa_value
//	case "inkfilename" ; aip_obj.inkfilename = aa_value
	case "inkheight" ; aip_obj.inkheight = aa_value
	case "inktransparency" ; aip_obj.inktransparency = aa_value
	case "inkwidth" ; aip_obj.inkwidth = aa_value
	case "inkenabled" ; aip_obj.inkenabled = aa_value
	case "marginx" ; aip_obj.marginx = aa_value
	case "marginy" ; aip_obj.marginy = aa_value
	case "pointer" ; aip_obj.pointer = aa_value
	case "pentip" ; aip_obj.pentip = aa_value
	case "picturefilename" ; aip_obj.picturefilename = aa_value
	case "picturesizemode" ; aip_obj.picturesizemode = aa_value
	case "powertiptext" ; aip_obj.powertiptext = aa_value
//	case "status" ; aip_obj.status = aa_value

	case else ; debug_message( classname(), "set_inkpicture_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_inkedit_property (inkedit aie_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aie_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; aie_obj.classdefinition = aa_value
	case "tag" ; aie_obj.tag = aa_value
	case "visible" ; aie_obj.visible = aa_value
	case "accessiblename" ; aie_obj.accessiblename = aa_value
	case "accessibledescription" ; aie_obj.accessibledescription = aa_value
	case "accessiblerole" ; aie_obj.accessiblerole = aa_value
	case "x" ; aie_obj.x = aa_value
	case "y" ; aie_obj.y = aa_value
	case "width" ; aie_obj.width = aa_value
	case "height" ; aie_obj.height = aa_value
	case "taborder" ; aie_obj.taborder = aa_value
	case "dragicon" ; aie_obj.dragicon = aa_value
	case "dragauto" ; aie_obj.dragauto = aa_value
	case "bringtotop" ; aie_obj.bringtotop = aa_value
	case "alignment" ; aie_obj.alignment = aa_value
	case "backcolor" ; aie_obj.backcolor = aa_value
	case "border" ; aie_obj.border = aa_value
	case "borderstyle" ; aie_obj.borderstyle = aa_value
	case "displayonly" ; aie_obj.displayonly = aa_value
	case "enabled" ; aie_obj.enabled = aa_value
	case "factoid" ; aie_obj.factoid = aa_value
	case "hscrollbar" ; aie_obj.hscrollbar = aa_value
	case "righttoleft" ; aie_obj.righttoleft = aa_value
	case "ignorepressure" ; aie_obj.ignorepressure = aa_value
	case "inkantialiased" ; aie_obj.inkantialiased = aa_value
	case "inkcolor" ; aie_obj.inkcolor = aa_value
	case "inkheight" ; aie_obj.inkheight = aa_value
	case "inkmode" ; aie_obj.inkmode = aa_value
	case "inktransparency" ; aie_obj.inktransparency = aa_value
	case "inkwidth" ; aie_obj.inkwidth = aa_value
	case "insertastext" ; aie_obj.insertastext = aa_value
	case "limit" ; aie_obj.limit = aa_value
	case "pointer" ; aie_obj.pointer = aa_value
	case "pentip" ; aie_obj.pentip = aa_value
	case "recognitiontimer" ; aie_obj.recognitiontimer = aa_value
//	case "status" ; aie_obj.status = aa_value
	case "textcolor" ; aie_obj.textcolor = aa_value
	case "text" ; aie_obj.text = aa_value
	case "textsize" ; aie_obj.textsize = aa_value
	case "weight" ; aie_obj.weight = aa_value
	case "fontcharset" ; aie_obj.fontcharset = aa_value
	case "fontpitch" ; aie_obj.fontpitch = aa_value
	case "fontfamily" ; aie_obj.fontfamily = aa_value
	case "facename" ; aie_obj.facename = aa_value
	case "italic" ; aie_obj.italic = aa_value
	case "underline" ; aie_obj.underline = aa_value
	case "usemouseforinput" ; aie_obj.usemouseforinput = aa_value
	case "vscrollbar" ; aie_obj.vscrollbar = aa_value
	case "modified" ; aie_obj.modified = aa_value

	case else ; debug_message( classname(), "set_inkedit_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_animation_property (animation aam_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aam_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; aam_obj.classdefinition = aa_value
	case "tag" ; aam_obj.tag = aa_value
	case "visible" ; aam_obj.visible = aa_value
	case "accessiblename" ; aam_obj.accessiblename = aa_value
	case "accessibledescription" ; aam_obj.accessibledescription = aa_value
	case "accessiblerole" ; aam_obj.accessiblerole = aa_value
	case "x" ; aam_obj.x = aa_value
	case "y" ; aam_obj.y = aa_value
	case "width" ; aam_obj.width = aa_value
	case "height" ; aam_obj.height = aa_value
	case "taborder" ; aam_obj.taborder = aa_value
	case "dragicon" ; aam_obj.dragicon = aa_value
	case "dragauto" ; aam_obj.dragauto = aa_value
	case "bringtotop" ; aam_obj.bringtotop = aa_value
	case "pointer" ; aam_obj.pointer = aa_value
	case "enabled" ; aam_obj.enabled = aa_value
	case "originalsize" ; aam_obj.originalsize = aa_value
	case "border" ; aam_obj.border = aa_value
	case "borderstyle" ; aam_obj.borderstyle = aa_value
	case "powertiptext" ; aam_obj.powertiptext = aa_value
	case "animationname" ; aam_obj.animationname = aa_value
	case "autoplay" ; aam_obj.autoplay = aa_value
	case "transparent" ; aam_obj.transparent = aa_value

	case else ; debug_message( classname(), "set_animation_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_datepicker_property (datepicker adp_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( adp_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; adp_obj.classdefinition = aa_value
	case "tag" ; adp_obj.tag = aa_value
	case "visible" ; adp_obj.visible = aa_value
	case "accessiblename" ; adp_obj.accessiblename = aa_value
	case "accessibledescription" ; adp_obj.accessibledescription = aa_value
	case "accessiblerole" ; adp_obj.accessiblerole = aa_value
	case "x" ; adp_obj.x = aa_value
	case "y" ; adp_obj.y = aa_value
	case "width" ; adp_obj.width = aa_value
	case "height" ; adp_obj.height = aa_value
	case "taborder" ; adp_obj.taborder = aa_value
	case "dragicon" ; adp_obj.dragicon = aa_value
	case "dragauto" ; adp_obj.dragauto = aa_value
	case "bringtotop" ; adp_obj.bringtotop = aa_value
	case "accelerator" ; adp_obj.accelerator = aa_value
	case "pointer" ; adp_obj.pointer = aa_value
	case "border" ; adp_obj.border = aa_value
	case "borderstyle" ; adp_obj.borderstyle = aa_value
	case "enabled" ; adp_obj.enabled = aa_value
	case "righttoleft" ; adp_obj.righttoleft = aa_value
	case "allowedit" ; adp_obj.allowedit = aa_value
	case "showupdown" ; adp_obj.showupdown = aa_value
	case "dropdownright" ; adp_obj.dropdownright = aa_value
	case "format" ; adp_obj.format = aa_value
	case "customformat" ; adp_obj.customformat = aa_value
	case "maxdate" ; adp_obj.maxdate = aa_value
	case "mindate" ; adp_obj.mindate = aa_value
//	case "text" ; adp_obj.text = aa_value
//	case "datevalue" ; adp_obj.datevalue = aa_value
//	case "timevalue" ; adp_obj.timevalue = aa_value
	case "value" ; adp_obj.value = aa_value
	case "textsize" ; adp_obj.textsize = aa_value
	case "fontweight" ; adp_obj.fontweight = aa_value
	case "fontcharset" ; adp_obj.fontcharset = aa_value
	case "fontpitch" ; adp_obj.fontpitch = aa_value
	case "fontfamily" ; adp_obj.fontfamily = aa_value
	case "facename" ; adp_obj.facename = aa_value
	case "italic" ; adp_obj.italic = aa_value
	case "underline" ; adp_obj.underline = aa_value
	case "calendartextsize" ; adp_obj.calendartextsize = aa_value
	case "calendarfontweight" ; adp_obj.calendarfontweight = aa_value
	case "calendarfontcharset" ; adp_obj.calendarfontcharset = aa_value
	case "calendarfontpitch" ; adp_obj.calendarfontpitch = aa_value
	case "calendarfontfamily" ; adp_obj.calendarfontfamily = aa_value
	case "calendarfontname" ; adp_obj.calendarfontname = aa_value
	case "calendaritalic" ; adp_obj.calendaritalic = aa_value
	case "calendarunderline" ; adp_obj.calendarunderline = aa_value
	case "calendartextcolor" ; adp_obj.calendartextcolor = aa_value
	case "calendartitletextcolor" ; adp_obj.calendartitletextcolor = aa_value
	case "calendartrailingtextcolor" ; adp_obj.calendartrailingtextcolor = aa_value
	case "calendarbackcolor" ; adp_obj.calendarbackcolor = aa_value
	case "calendartitlebackcolor" ; adp_obj.calendartitlebackcolor = aa_value
	case "firstdayofweek" ; adp_obj.firstdayofweek = aa_value
	case "todaysection" ; adp_obj.todaysection = aa_value
	case "todaycircle" ; adp_obj.todaycircle = aa_value
	case "weeknumbers" ; adp_obj.weeknumbers = aa_value

		
	case else ; debug_message( classname(), "get_datepicker_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_monthcalendar_property (monthcalendar amc_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( amc_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; amc_obj.classdefinition = aa_value
	case "tag" ; amc_obj.tag = aa_value
	case "visible" ; amc_obj.visible = aa_value
	case "accessiblename" ; amc_obj.accessiblename = aa_value
	case "accessibledescription" ; amc_obj.accessibledescription = aa_value
	case "accessiblerole" ; amc_obj.accessiblerole = aa_value
	case "x" ; amc_obj.x = aa_value
	case "y" ; amc_obj.y = aa_value
	case "width" ; amc_obj.width = aa_value
	case "height" ; amc_obj.height = aa_value
	case "taborder" ; amc_obj.taborder = aa_value
	case "dragicon" ; amc_obj.dragicon = aa_value
	case "dragauto" ; amc_obj.dragauto = aa_value
	case "bringtotop" ; amc_obj.bringtotop = aa_value
	case "textsize" ; amc_obj.textsize = aa_value
	case "weight" ; amc_obj.weight = aa_value
	case "fontcharset" ; amc_obj.fontcharset = aa_value
	case "fontpitch" ; amc_obj.fontpitch = aa_value
	case "fontfamily" ; amc_obj.fontfamily = aa_value
	case "facename" ; amc_obj.facename = aa_value
	case "italic" ; amc_obj.italic = aa_value
	case "underline" ; amc_obj.underline = aa_value
	case "pointer" ; amc_obj.pointer = aa_value
	case "enabled" ; amc_obj.enabled = aa_value
	case "textcolor" ; amc_obj.textcolor = aa_value
	case "titletextcolor" ; amc_obj.titletextcolor = aa_value
	case "trailingtextcolor" ; amc_obj.trailingtextcolor = aa_value
	case "backcolor" ; amc_obj.backcolor = aa_value
	case "monthbackcolor" ; amc_obj.monthbackcolor = aa_value
	case "titlebackcolor" ; amc_obj.titlebackcolor = aa_value
	case "firstdayofweek" ; amc_obj.firstdayofweek = aa_value
	case "maxselectcount" ; amc_obj.maxselectcount = aa_value
	case "scrollrate" ; amc_obj.scrollrate = aa_value
	case "todaysection" ; amc_obj.todaysection = aa_value
	case "todaycircle" ; amc_obj.todaycircle = aa_value
	case "weeknumbers" ; amc_obj.weeknumbers = aa_value
	case "border" ; amc_obj.border = aa_value
	case "borderstyle" ; amc_obj.borderstyle = aa_value
	case "autosize" ; amc_obj.autosize = aa_value
	case "accelerator" ; amc_obj.accelerator = aa_value

	case else ; debug_message( classname(), "get_monthcalendar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose


end subroutine

public subroutine set_graph_property (graph agr_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( agr_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; agr_obj.classdefinition = aa_value
	case "tag" ; agr_obj.tag = aa_value
	case "visible" ; agr_obj.visible = aa_value
	case "accessiblename" ; agr_obj.accessiblename = aa_value
	case "accessibledescription" ; agr_obj.accessibledescription = aa_value
	case "accessiblerole" ; agr_obj.accessiblerole = aa_value
	case "x" ; agr_obj.x = aa_value
	case "y" ; agr_obj.y = aa_value
	case "width" ; agr_obj.width = aa_value
	case "height" ; agr_obj.height = aa_value
	case "taborder" ; agr_obj.taborder = aa_value
	case "dragicon" ; agr_obj.dragicon = aa_value
	case "dragauto" ; agr_obj.dragauto = aa_value
	case "bringtotop" ; agr_obj.bringtotop = aa_value
	case "pointer" ; agr_obj.pointer = aa_value
	case "enabled" ; agr_obj.enabled = aa_value
	case "border" ; agr_obj.border = aa_value
	case "graphtype" ; agr_obj.graphtype = aa_value
	case "textcolor" ; agr_obj.textcolor = aa_value
	case "backcolor" ; agr_obj.backcolor = aa_value
	case "shadecolor" ; agr_obj.shadecolor = aa_value
	case "overlappercent" ; agr_obj.overlappercent = aa_value
	case "spacing" ; agr_obj.spacing = aa_value
	case "title" ; agr_obj.title = aa_value
	case "titledispattr" ; agr_obj.titledispattr = aa_value
	case "elevation" ; agr_obj.elevation = aa_value
	case "rotation" ; agr_obj.rotation = aa_value
	case "perspective" ; agr_obj.perspective = aa_value
	case "depth" ; agr_obj.depth = aa_value
	case "series" ; agr_obj.series = aa_value
	case "category" ; agr_obj.category = aa_value
	case "values" ; agr_obj.values = aa_value
	case "legend" ; agr_obj.legend = aa_value
	case "legenddispattr" ; agr_obj.legenddispattr = aa_value
	case "borderstyle" ; agr_obj.borderstyle = aa_value
	case "focusrectangle" ; agr_obj.focusrectangle = aa_value
	case "plotnulldata" ; agr_obj.plotnulldata = aa_value
	case "seriessort" ; agr_obj.seriessort = aa_value
	case "categorysort" ; agr_obj.categorysort = aa_value
	case "piedispattr" ; agr_obj.piedispattr = aa_value
	case else ; debug_message( classname(), "get_graph_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose


end subroutine

public subroutine set_datawindow_property (datawindow adw_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( adw_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; adw_obj.classdefinition = aa_value
	case "tag" ; adw_obj.tag = aa_value
	case "visible" ; adw_obj.visible = aa_value
	case "accessiblename" ; adw_obj.accessiblename = aa_value
	case "accessibledescription" ; adw_obj.accessibledescription = aa_value
	case "accessiblerole" ; adw_obj.accessiblerole = aa_value
	case "x" ; adw_obj.x = aa_value
	case "y" ; adw_obj.y = aa_value
	case "width" ; adw_obj.width = aa_value
	case "height" ; adw_obj.height = aa_value
	case "taborder" ; adw_obj.taborder = aa_value
	case "dragicon" ; adw_obj.dragicon = aa_value
	case "dragauto" ; adw_obj.dragauto = aa_value
	case "bringtotop" ; adw_obj.bringtotop = aa_value
	case "enabled" ; adw_obj.enabled = aa_value
	case "titlebar" ; adw_obj.titlebar = aa_value
	case "title" ; adw_obj.title = aa_value
	case "dataobject" ; adw_obj.dataobject = aa_value
	case "controlmenu" ; adw_obj.controlmenu = aa_value
	case "minbox" ; adw_obj.minbox = aa_value
	case "maxbox" ; adw_obj.maxbox = aa_value
	case "hscrollbar" ; adw_obj.hscrollbar = aa_value
	case "vscrollbar" ; adw_obj.vscrollbar = aa_value
	case "resizable" ; adw_obj.resizable = aa_value
	case "border" ; adw_obj.border = aa_value
	case "icon" ; adw_obj.icon = aa_value
	case "hsplitscroll" ; adw_obj.hsplitscroll = aa_value
	case "livescroll" ; adw_obj.livescroll = aa_value
	case "borderstyle" ; adw_obj.borderstyle = aa_value
	case "object" ; adw_obj.object = aa_value
	case "righttoleft" ; adw_obj.righttoleft = aa_value

	case else ; debug_message( classname(), "get_datawindow_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_listview_property (listview alv_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( alv_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; alv_obj.classdefinition = aa_value
	case "tag" ; alv_obj.tag = aa_value
	case "visible" ; alv_obj.visible = aa_value
	case "accessiblename" ; alv_obj.accessiblename = aa_value
	case "accessibledescription" ; alv_obj.accessibledescription = aa_value
	case "accessiblerole" ; alv_obj.accessiblerole = aa_value
	case "x" ; alv_obj.x = aa_value
	case "y" ; alv_obj.y = aa_value
	case "width" ; alv_obj.width = aa_value
	case "height" ; alv_obj.height = aa_value
	case "taborder" ; alv_obj.taborder = aa_value
	case "dragicon" ; alv_obj.dragicon = aa_value
	case "dragauto" ; alv_obj.dragauto = aa_value
	case "bringtotop" ; alv_obj.bringtotop = aa_value
	case "textsize" ; alv_obj.textsize = aa_value
	case "weight" ; alv_obj.weight = aa_value
	case "fontcharset" ; alv_obj.fontcharset = aa_value
	case "fontpitch" ; alv_obj.fontpitch = aa_value
	case "fontfamily" ; alv_obj.fontfamily = aa_value
	case "facename" ; alv_obj.facename = aa_value
	case "italic" ; alv_obj.italic = aa_value
	case "underline" ; alv_obj.underline = aa_value
	case "pointer" ; alv_obj.pointer = aa_value
	case "textcolor" ; alv_obj.textcolor = aa_value
	case "backcolor" ; alv_obj.backcolor = aa_value
	case "enabled" ; alv_obj.enabled = aa_value
	case "border" ; alv_obj.border = aa_value
	case "accelerator" ; alv_obj.accelerator = aa_value
	case "borderstyle" ; alv_obj.borderstyle = aa_value
	case "autoarrange" ; alv_obj.autoarrange = aa_value
	case "buttonheader" ; alv_obj.buttonheader = aa_value
	case "deleteitems" ; alv_obj.deleteitems = aa_value
	case "editlabels" ; alv_obj.editlabels = aa_value
	case "extendedselect" ; alv_obj.extendedselect = aa_value
	case "fixedlocations" ; alv_obj.fixedlocations = aa_value
	case "showheader" ; alv_obj.showheader = aa_value
	case "labelwrap" ; alv_obj.labelwrap = aa_value
	case "scrolling" ; alv_obj.scrolling = aa_value
	case "hideselection" ; alv_obj.hideselection = aa_value
	case "checkboxes" ; alv_obj.checkboxes = aa_value
	case "trackselect" ; alv_obj.trackselect = aa_value
	case "oneclickactivate" ; alv_obj.oneclickactivate = aa_value
	case "twoclickactivate" ; alv_obj.twoclickactivate = aa_value
	case "gridlines" ; alv_obj.gridlines = aa_value
	case "headerdragdrop" ; alv_obj.headerdragdrop = aa_value
	case "fullrowselect" ; alv_obj.fullrowselect = aa_value
	case "underlinecold" ; alv_obj.underlinecold = aa_value
	case "underlinehot" ; alv_obj.underlinehot = aa_value
	case "sorttype" ; alv_obj.sorttype = aa_value
	case "view" ; alv_obj.view = aa_value
//	case "item" ; alv_obj.item = aa_value
//	case "itempictureindex" ; alv_obj.itempictureindex = aa_value
//	case "largepicturename" ; alv_obj.largepicturename = aa_value
	case "largepicturewidth" ; alv_obj.largepicturewidth = aa_value
	case "largepictureheight" ; alv_obj.largepictureheight = aa_value
	case "largepicturemaskcolor" ; alv_obj.largepicturemaskcolor = aa_value
//	case "smallpicturename" ; alv_obj.smallpicturename = aa_value
	case "smallpicturewidth" ; alv_obj.smallpicturewidth = aa_value
	case "smallpictureheight" ; alv_obj.smallpictureheight = aa_value
	case "smallpicturemaskcolor" ; alv_obj.smallpicturemaskcolor = aa_value
//	case "statepicturename" ; alv_obj.statepicturename = aa_value
	case "statepicturewidth" ; alv_obj.statepicturewidth = aa_value
	case "statepictureheight" ; alv_obj.statepictureheight = aa_value
	case "statepicturemaskcolor" ; alv_obj.statepicturemaskcolor = aa_value
	case "imemode" ; alv_obj.imemode = aa_value
	case "righttoleft" ; alv_obj.righttoleft = aa_value
	case "layoutrtl" ; alv_obj.layoutrtl = aa_value

	case else ; debug_message( classname(), "get_listview_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose


end subroutine

public subroutine set_picturelistbox_property (picturelistbox aplb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aplb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; aplb_obj.classdefinition = aa_value
	case "tag" ; aplb_obj.tag = aa_value
	case "visible" ; aplb_obj.visible = aa_value
	case "accessiblename" ; aplb_obj.accessiblename = aa_value
	case "accessibledescription" ; aplb_obj.accessibledescription = aa_value
	case "accessiblerole" ; aplb_obj.accessiblerole = aa_value
	case "x" ; aplb_obj.x = aa_value
	case "y" ; aplb_obj.y = aa_value
	case "width" ; aplb_obj.width = aa_value
	case "height" ; aplb_obj.height = aa_value
	case "taborder" ; aplb_obj.taborder = aa_value
	case "dragicon" ; aplb_obj.dragicon = aa_value
	case "dragauto" ; aplb_obj.dragauto = aa_value
	case "bringtotop" ; aplb_obj.bringtotop = aa_value
	case "textsize" ; aplb_obj.textsize = aa_value
	case "weight" ; aplb_obj.weight = aa_value
	case "fontcharset" ; aplb_obj.fontcharset = aa_value
	case "fontpitch" ; aplb_obj.fontpitch = aa_value
	case "fontfamily" ; aplb_obj.fontfamily = aa_value
	case "facename" ; aplb_obj.facename = aa_value
	case "italic" ; aplb_obj.italic = aa_value
	case "underline" ; aplb_obj.underline = aa_value
	case "pointer" ; aplb_obj.pointer = aa_value
	case "textcolor" ; aplb_obj.textcolor = aa_value
	case "backcolor" ; aplb_obj.backcolor = aa_value
	case "enabled" ; aplb_obj.enabled = aa_value
	case "border" ; aplb_obj.border = aa_value
	case "hscrollbar" ; aplb_obj.hscrollbar = aa_value
	case "vscrollbar" ; aplb_obj.vscrollbar = aa_value
	case "sorted" ; aplb_obj.sorted = aa_value
	case "multiselect" ; aplb_obj.multiselect = aa_value
	case "tabstop" ; aplb_obj.tabstop = aa_value
//	case "item" ; aplb_obj.item = aa_value
	case "accelerator" ; aplb_obj.accelerator = aa_value
	case "borderstyle" ; aplb_obj.borderstyle = aa_value
	case "extendedselect" ; aplb_obj.extendedselect = aa_value
	case "disablenoscroll" ; aplb_obj.disablenoscroll = aa_value
	case "righttoleft" ; aplb_obj.righttoleft = aa_value
//	case "itempictureindex" ; aplb_obj.itempictureindex = aa_value
//	case "picturename" ; aplb_obj.picturename = aa_value
	case "picturewidth" ; aplb_obj.picturewidth = aa_value
	case "pictureheight" ; aplb_obj.pictureheight = aa_value
	case "picturemaskcolor" ; aplb_obj.picturemaskcolor = aa_value

	case else ; debug_message( classname(), "get_picturelistbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose


end subroutine

public subroutine set_dropdownlistbox_property (dropdownlistbox addlb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( addlb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; addlb_obj.classdefinition = aa_value
	case "tag" ; addlb_obj.tag = aa_value
	case "visible" ; addlb_obj.visible = aa_value
	case "accessiblename" ; addlb_obj.accessiblename = aa_value
	case "accessibledescription" ; addlb_obj.accessibledescription = aa_value
	case "accessiblerole" ; addlb_obj.accessiblerole = aa_value
	case "x" ; addlb_obj.x = aa_value
	case "y" ; addlb_obj.y = aa_value
	case "width" ; addlb_obj.width = aa_value
	case "height" ; addlb_obj.height = aa_value
	case "taborder" ; addlb_obj.taborder = aa_value
	case "dragicon" ; addlb_obj.dragicon = aa_value
	case "dragauto" ; addlb_obj.dragauto = aa_value
	case "bringtotop" ; addlb_obj.bringtotop = aa_value
	case "textsize" ; addlb_obj.textsize = aa_value
	case "weight" ; addlb_obj.weight = aa_value
	case "fontcharset" ; addlb_obj.fontcharset = aa_value
	case "fontpitch" ; addlb_obj.fontpitch = aa_value
	case "fontfamily" ; addlb_obj.fontfamily = aa_value
	case "facename" ; addlb_obj.facename = aa_value
	case "italic" ; addlb_obj.italic = aa_value
	case "underline" ; addlb_obj.underline = aa_value
	case "pointer" ; addlb_obj.pointer = aa_value
	case "textcolor" ; addlb_obj.textcolor = aa_value
	case "backcolor" ; addlb_obj.backcolor = aa_value
	case "enabled" ; addlb_obj.enabled = aa_value
	case "text" ; addlb_obj.text = aa_value
	case "allowedit" ; addlb_obj.allowedit = aa_value
	case "autohscroll" ; addlb_obj.autohscroll = aa_value
	case "border" ; addlb_obj.border = aa_value
	case "sorted" ; addlb_obj.sorted = aa_value
	case "showlist" ; addlb_obj.showlist = aa_value
	case "hscrollbar" ; addlb_obj.hscrollbar = aa_value
	case "vscrollbar" ; addlb_obj.vscrollbar = aa_value
	case "limit" ; addlb_obj.limit = aa_value
//	case "item" ; addlb_obj.item = aa_value
	case "accelerator" ; addlb_obj.accelerator = aa_value
	case "borderstyle" ; addlb_obj.borderstyle = aa_value
	case "righttoleft" ; addlb_obj.righttoleft = aa_value
	case "imemode" ; addlb_obj.imemode = aa_value
	case else ; debug_message( classname(), "get_dropdownlistbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_dropdownpicturelistbox_property (dropdownpicturelistbox adplb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( adplb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; adplb_obj.classdefinition = aa_value
	case "tag" ; adplb_obj.tag = aa_value
	case "visible" ; adplb_obj.visible = aa_value
	case "accessiblename" ; adplb_obj.accessiblename = aa_value
	case "accessibledescription" ; adplb_obj.accessibledescription = aa_value
	case "accessiblerole" ; adplb_obj.accessiblerole = aa_value
	case "x" ; adplb_obj.x = aa_value
	case "y" ; adplb_obj.y = aa_value
	case "width" ; adplb_obj.width = aa_value
	case "height" ; adplb_obj.height = aa_value
	case "taborder" ; adplb_obj.taborder = aa_value
	case "dragicon" ; adplb_obj.dragicon = aa_value
	case "dragauto" ; adplb_obj.dragauto = aa_value
	case "bringtotop" ; adplb_obj.bringtotop = aa_value
//	case "__init_imemode" ; adplb_obj.__init_imemode = aa_value
	case "textsize" ; adplb_obj.textsize = aa_value
	case "weight" ; adplb_obj.weight = aa_value
	case "fontcharset" ; adplb_obj.fontcharset = aa_value
	case "fontpitch" ; adplb_obj.fontpitch = aa_value
	case "fontfamily" ; adplb_obj.fontfamily = aa_value
	case "facename" ; adplb_obj.facename = aa_value
	case "italic" ; adplb_obj.italic = aa_value
	case "underline" ; adplb_obj.underline = aa_value
	case "pointer" ; adplb_obj.pointer = aa_value
	case "textcolor" ; adplb_obj.textcolor = aa_value
	case "backcolor" ; adplb_obj.backcolor = aa_value
	case "enabled" ; adplb_obj.enabled = aa_value
	case "text" ; adplb_obj.text = aa_value
	case "allowedit" ; adplb_obj.allowedit = aa_value
	case "autohscroll" ; adplb_obj.autohscroll = aa_value
	case "border" ; adplb_obj.border = aa_value
	case "sorted" ; adplb_obj.sorted = aa_value
	case "showlist" ; adplb_obj.showlist = aa_value
	case "hscrollbar" ; adplb_obj.hscrollbar = aa_value
	case "vscrollbar" ; adplb_obj.vscrollbar = aa_value
	case "limit" ; adplb_obj.limit = aa_value
//	case "item" ; adplb_obj.item = aa_value
	case "accelerator" ; adplb_obj.accelerator = aa_value
	case "borderstyle" ; adplb_obj.borderstyle = aa_value
	case "righttoleft" ; adplb_obj.righttoleft = aa_value
	case "imemode" ; adplb_obj.imemode = aa_value
//	case "itempictureindex" ; adplb_obj.itempictureindex = aa_value
//	case "picturename" ; adplb_obj.picturename = aa_value
	case "picturewidth" ; adplb_obj.picturewidth = aa_value
	case "pictureheight" ; adplb_obj.pictureheight = aa_value
	case "picturemaskcolor" ; adplb_obj.picturemaskcolor = aa_value

	case else ; debug_message( classname(), "set_dropdownpicturelistbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_vprogressbar_property (vprogressbar avpb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( avpb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; avpb_obj.classdefinition = aa_value
	case "tag" ; avpb_obj.tag = aa_value
	case "visible" ; avpb_obj.visible = aa_value
	case "accessiblename" ; avpb_obj.accessiblename = aa_value
	case "accessibledescription" ; avpb_obj.accessibledescription = aa_value
	case "accessiblerole" ; avpb_obj.accessiblerole = aa_value
	case "x" ; avpb_obj.x = aa_value
	case "y" ; avpb_obj.y = aa_value
	case "width" ; avpb_obj.width = aa_value
	case "height" ; avpb_obj.height = aa_value
	case "taborder" ; avpb_obj.taborder = aa_value
	case "dragicon" ; avpb_obj.dragicon = aa_value
	case "dragauto" ; avpb_obj.dragauto = aa_value
	case "bringtotop" ; avpb_obj.bringtotop = aa_value
	case "pointer" ; avpb_obj.pointer = aa_value
	case "minposition" ; avpb_obj.minposition = aa_value
	case "maxposition" ; avpb_obj.maxposition = aa_value
	case "position" ; avpb_obj.position = aa_value
	case "setstep" ; avpb_obj.setstep = aa_value
	case "smoothscroll" ; avpb_obj.smoothscroll = aa_value
	case else ; debug_message( classname(), "set_vprogressbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_hprogressbar_property (hprogressbar ahpb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ahpb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; ahpb_obj.classdefinition = aa_value
	case "tag" ; ahpb_obj.tag = aa_value
	case "visible" ; ahpb_obj.visible = aa_value
	case "accessiblename" ; ahpb_obj.accessiblename = aa_value
	case "accessibledescription" ; ahpb_obj.accessibledescription = aa_value
	case "accessiblerole" ; ahpb_obj.accessiblerole = aa_value
	case "x" ; ahpb_obj.x = aa_value
	case "y" ; ahpb_obj.y = aa_value
	case "width" ; ahpb_obj.width = aa_value
	case "height" ; ahpb_obj.height = aa_value
	case "taborder" ; ahpb_obj.taborder = aa_value
	case "dragicon" ; ahpb_obj.dragicon = aa_value
	case "dragauto" ; ahpb_obj.dragauto = aa_value
	case "bringtotop" ; ahpb_obj.bringtotop = aa_value
	case "pointer" ; ahpb_obj.pointer = aa_value
	case "minposition" ; ahpb_obj.minposition = aa_value
	case "maxposition" ; ahpb_obj.maxposition = aa_value
	case "position" ; ahpb_obj.position = aa_value
	case "setstep" ; ahpb_obj.setstep = aa_value
	case "smoothscroll" ; ahpb_obj.smoothscroll = aa_value
	case else ; debug_message( classname(), "set_hprogressbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_vtrackbar_property (vtrackbar avtb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( avtb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; avtb_obj.classdefinition = aa_value
	case "tag" ; avtb_obj.tag = aa_value
	case "visible" ; avtb_obj.visible = aa_value
	case "accessiblename" ; avtb_obj.accessiblename = aa_value
	case "accessibledescription" ; avtb_obj.accessibledescription = aa_value
	case "accessiblerole" ; avtb_obj.accessiblerole = aa_value
	case "x" ; avtb_obj.x = aa_value
	case "y" ; avtb_obj.y = aa_value
	case "width" ; avtb_obj.width = aa_value
	case "height" ; avtb_obj.height = aa_value
	case "taborder" ; avtb_obj.taborder = aa_value
	case "dragicon" ; avtb_obj.dragicon = aa_value
	case "dragauto" ; avtb_obj.dragauto = aa_value
	case "bringtotop" ; avtb_obj.bringtotop = aa_value
	case "pointer" ; avtb_obj.pointer = aa_value
	case "minposition" ; avtb_obj.minposition = aa_value
	case "maxposition" ; avtb_obj.maxposition = aa_value
	case "position" ; avtb_obj.position = aa_value
	case "tickfrequency" ; avtb_obj.tickfrequency = aa_value
	case "pagesize" ; avtb_obj.pagesize = aa_value
	case "linesize" ; avtb_obj.linesize = aa_value
	case "slidersize" ; avtb_obj.slidersize = aa_value
	case "slider" ; avtb_obj.slider = aa_value
	case "tickmarks" ; avtb_obj.tickmarks = aa_value
	case else ; debug_message( classname(), "set_vtrackbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_htrackbar_property (htrackbar ahtb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ahtb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; ahtb_obj.classdefinition = aa_value
	case "tag" ; ahtb_obj.tag = aa_value
	case "visible" ; ahtb_obj.visible = aa_value
	case "accessiblename" ; ahtb_obj.accessiblename = aa_value
	case "accessibledescription" ; ahtb_obj.accessibledescription = aa_value
	case "accessiblerole" ; ahtb_obj.accessiblerole = aa_value
	case "x" ; ahtb_obj.x = aa_value
	case "y" ; ahtb_obj.y = aa_value
	case "width" ; ahtb_obj.width = aa_value
	case "height" ; ahtb_obj.height = aa_value
	case "taborder" ; ahtb_obj.taborder = aa_value
	case "dragicon" ; ahtb_obj.dragicon = aa_value
	case "dragauto" ; ahtb_obj.dragauto = aa_value
	case "bringtotop" ; ahtb_obj.bringtotop = aa_value
	case "pointer" ; ahtb_obj.pointer = aa_value
	case "minposition" ; ahtb_obj.minposition = aa_value
	case "maxposition" ; ahtb_obj.maxposition = aa_value
	case "position" ; ahtb_obj.position = aa_value
	case "tickfrequency" ; ahtb_obj.tickfrequency = aa_value
	case "pagesize" ; ahtb_obj.pagesize = aa_value
	case "linesize" ; ahtb_obj.linesize = aa_value
	case "slidersize" ; ahtb_obj.slidersize = aa_value
	case "slider" ; ahtb_obj.slider = aa_value
	case "tickmarks" ; ahtb_obj.tickmarks = aa_value
	case else ; debug_message( classname(), "set_htrackbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_vscrollbar_property (vscrollbar avsb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( avsb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; avsb_obj.classdefinition = aa_value
	case "tag" ; avsb_obj.tag = aa_value
	case "visible" ; avsb_obj.visible = aa_value
	case "accessiblename" ; avsb_obj.accessiblename = aa_value
	case "accessibledescription" ; avsb_obj.accessibledescription = aa_value
	case "accessiblerole" ; avsb_obj.accessiblerole = aa_value
	case "x" ; avsb_obj.x = aa_value
	case "y" ; avsb_obj.y = aa_value
	case "width" ; avsb_obj.width = aa_value
	case "height" ; avsb_obj.height = aa_value
	case "taborder" ; avsb_obj.taborder = aa_value
	case "dragicon" ; avsb_obj.dragicon = aa_value
	case "dragauto" ; avsb_obj.dragauto = aa_value
	case "bringtotop" ; avsb_obj.bringtotop = aa_value
	case "pointer" ; avsb_obj.pointer = aa_value
	case "stdwidth" ; avsb_obj.stdwidth = aa_value
	case "minposition" ; avsb_obj.minposition = aa_value
	case "maxposition" ; avsb_obj.maxposition = aa_value
	case "position" ; avsb_obj.position = aa_value
	case else ; debug_message( classname(), "set_vscrollbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_hscrollbar_property (hscrollbar ahsb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ahsb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; ahsb_obj.classdefinition = aa_value
	case "tag" ; ahsb_obj.tag = aa_value
	case "visible" ; ahsb_obj.visible = aa_value
	case "accessiblename" ; ahsb_obj.accessiblename = aa_value
	case "accessibledescription" ; ahsb_obj.accessibledescription = aa_value
	case "accessiblerole" ; ahsb_obj.accessiblerole = aa_value
	case "x" ; ahsb_obj.x = aa_value
	case "y" ; ahsb_obj.y = aa_value
	case "width" ; ahsb_obj.width = aa_value
	case "height" ; ahsb_obj.height = aa_value
	case "taborder" ; ahsb_obj.taborder = aa_value
	case "dragicon" ; ahsb_obj.dragicon = aa_value
	case "dragauto" ; ahsb_obj.dragauto = aa_value
	case "bringtotop" ; ahsb_obj.bringtotop = aa_value
	case "pointer" ; ahsb_obj.pointer = aa_value
	case "stdheight" ; ahsb_obj.stdheight = aa_value
	case "minposition" ; ahsb_obj.minposition = aa_value
	case "maxposition" ; ahsb_obj.maxposition = aa_value
	case "position" ; ahsb_obj.position = aa_value
	case else ; debug_message( classname(), "set_hscrollbar_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_richtextedit_property (richtextedit arte_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( arte_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; arte_obj.classdefinition = aa_value
	case "tag" ; arte_obj.tag = aa_value
	case "visible" ; arte_obj.visible = aa_value
	case "accessiblename" ; arte_obj.accessiblename = aa_value
	case "accessibledescription" ; arte_obj.accessibledescription = aa_value
	case "accessiblerole" ; arte_obj.accessiblerole = aa_value
	case "x" ; arte_obj.x = aa_value
	case "y" ; arte_obj.y = aa_value
	case "width" ; arte_obj.width = aa_value
	case "height" ; arte_obj.height = aa_value
	case "taborder" ; arte_obj.taborder = aa_value
	case "dragicon" ; arte_obj.dragicon = aa_value
	case "dragauto" ; arte_obj.dragauto = aa_value
	case "bringtotop" ; arte_obj.bringtotop = aa_value
	case "textsize" ; arte_obj.textsize = aa_value
	case "weight" ; arte_obj.weight = aa_value
	case "fontcharset" ; arte_obj.fontcharset = aa_value
	case "fontpitch" ; arte_obj.fontpitch = aa_value
	case "fontfamily" ; arte_obj.fontfamily = aa_value
	case "facename" ; arte_obj.facename = aa_value
	case "italic" ; arte_obj.italic = aa_value
	case "underline" ; arte_obj.underline = aa_value
	case "pointer" ; arte_obj.pointer = aa_value
	case "enabled" ; arte_obj.enabled = aa_value
	case "border" ; arte_obj.border = aa_value
	case "hscrollbar" ; arte_obj.hscrollbar = aa_value
	case "vscrollbar" ; arte_obj.vscrollbar = aa_value
	case "accelerator" ; arte_obj.accelerator = aa_value
	case "borderstyle" ; arte_obj.borderstyle = aa_value
	case "backcolor" ; arte_obj.backcolor = aa_value
	case "resizable" ; arte_obj.resizable = aa_value
	case "modified" ; arte_obj.modified = aa_value
	case "wordwrap" ; arte_obj.wordwrap = aa_value
	case "picturesasframe" ; arte_obj.picturesasframe = aa_value
	case "returnsvisible" ; arte_obj.returnsvisible = aa_value
	case "spacesvisible" ; arte_obj.spacesvisible = aa_value
	case "tabsvisible" ; arte_obj.tabsvisible = aa_value
	case "controlcharsvisible" ; arte_obj.controlcharsvisible = aa_value
	case "inputfieldbackcolor" ; arte_obj.inputfieldbackcolor = aa_value
	case "inputfieldsvisible" ; arte_obj.inputfieldsvisible = aa_value
	case "inputfieldnamesvisible" ; arte_obj.inputfieldnamesvisible = aa_value
	case "rulerbar" ; arte_obj.rulerbar = aa_value
	case "tabbar" ; arte_obj.tabbar = aa_value
	case "statusbar" ; arte_obj.statusbar = aa_value
	case "toolbar" ; arte_obj.toolbar = aa_value
	case "headerfooter" ; arte_obj.headerfooter = aa_value
	case "popmenu" ; arte_obj.popmenu = aa_value
	case "undodepth" ; arte_obj.undodepth = aa_value
	case "leftmargin" ; arte_obj.leftmargin = aa_value
	case "topmargin" ; arte_obj.topmargin = aa_value
	case "rightmargin" ; arte_obj.rightmargin = aa_value
	case "bottommargin" ; arte_obj.bottommargin = aa_value
	case "documentname" ; arte_obj.documentname = aa_value
	case "displayonly" ; arte_obj.displayonly = aa_value
	case "imemode" ; arte_obj.imemode = aa_value
	case "selectedstartpos" ; arte_obj.selectedstartpos = aa_value
	case "selectedtextlength" ; arte_obj.selectedtextlength		 = aa_value
	case else ; debug_message( classname(), "set_richtextedit_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_editmask_property (editmask aem_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aem_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; aem_obj.classdefinition = aa_value
	case "tag" ; aem_obj.tag = aa_value
	case "visible" ; aem_obj.visible = aa_value
	case "accessiblename" ; aem_obj.accessiblename = aa_value
	case "accessibledescription" ; aem_obj.accessibledescription = aa_value
	case "accessiblerole" ; aem_obj.accessiblerole = aa_value
	case "x" ; aem_obj.x = aa_value
	case "y" ; aem_obj.y = aa_value
	case "width" ; aem_obj.width = aa_value
	case "height" ; aem_obj.height = aa_value
	case "taborder" ; aem_obj.taborder = aa_value
	case "dragicon" ; aem_obj.dragicon = aa_value
	case "dragauto" ; aem_obj.dragauto = aa_value
	case "bringtotop" ; aem_obj.bringtotop = aa_value
//	case "__init_imemode" ; aem_obj.__init_imemode = aa_value
	case "textsize" ; aem_obj.textsize = aa_value
	case "weight" ; aem_obj.weight = aa_value
	case "fontcharset" ; aem_obj.fontcharset = aa_value
	case "fontpitch" ; aem_obj.fontpitch = aa_value
	case "fontfamily" ; aem_obj.fontfamily = aa_value
	case "facename" ; aem_obj.facename = aa_value
	case "italic" ; aem_obj.italic = aa_value
	case "underline" ; aem_obj.underline = aa_value
	case "pointer" ; aem_obj.pointer = aa_value
	case "textcolor" ; aem_obj.textcolor = aa_value
	case "backcolor" ; aem_obj.backcolor = aa_value
	case "enabled" ; aem_obj.enabled = aa_value
	case "text" ; aem_obj.text = aa_value
	case "border" ; aem_obj.border = aa_value
	case "hscrollbar" ; aem_obj.hscrollbar = aa_value
	case "vscrollbar" ; aem_obj.vscrollbar = aa_value
	case "autohscroll" ; aem_obj.autohscroll = aa_value
	case "autovscroll" ; aem_obj.autovscroll = aa_value
	case "alignment" ; aem_obj.alignment = aa_value
	case "textcase" ; aem_obj.textcase = aa_value
	case "limit" ; aem_obj.limit = aa_value
	case "tabstop" ; aem_obj.tabstop = aa_value
	case "accelerator" ; aem_obj.accelerator = aa_value
	case "displayonly" ; aem_obj.displayonly = aa_value
	case "borderstyle" ; aem_obj.borderstyle = aa_value
	case "hideselection" ; aem_obj.hideselection = aa_value
	case "ignoredefaultbutton" ; aem_obj.ignoredefaultbutton = aa_value
	case "righttoleft" ; aem_obj.righttoleft = aa_value
	case "imemode" ; aem_obj.imemode = aa_value
//	case "maskdatatype" ; aem_obj.maskdatatype = aa_value
//	case "mask" ; aem_obj.mask = aa_value
	case "autoskip" ; aem_obj.autoskip = aa_value
	case "spin" ; aem_obj.spin = aa_value
	case "displaydata" ; aem_obj.displaydata = aa_value
	case "increment" ; aem_obj.increment = aa_value
	case "minmax" ; aem_obj.minmax = aa_value
	case "usecodetable" ; aem_obj.usecodetable = aa_value
	case "dropdowncalendar" ; aem_obj.dropdowncalendar = aa_value
	case "dropdownright" ; aem_obj.dropdownright = aa_value
	case "calendartextcolor" ; aem_obj.calendartextcolor = aa_value
	case "calendartitletextcolor" ; aem_obj.calendartitletextcolor = aa_value
	case "calendartrailingtextcolor" ; aem_obj.calendartrailingtextcolor = aa_value
	case "calendarbackcolor" ; aem_obj.calendarbackcolor = aa_value
	case "calendartitlebackcolor" ; aem_obj.calendartitlebackcolor = aa_value
	case else ; debug_message( classname(), "set_editmask_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_picturehyperlink_property (picturehyperlink aphl_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aphl_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; aphl_obj.classdefinition = aa_value
	case "tag" ; aphl_obj.tag = aa_value
	case "visible" ; aphl_obj.visible = aa_value
	case "accessiblename" ; aphl_obj.accessiblename = aa_value
	case "accessibledescription" ; aphl_obj.accessibledescription = aa_value
	case "accessiblerole" ; aphl_obj.accessiblerole = aa_value
	case "x" ; aphl_obj.x = aa_value
	case "y" ; aphl_obj.y = aa_value
	case "width" ; aphl_obj.width = aa_value
	case "height" ; aphl_obj.height = aa_value
	case "taborder" ; aphl_obj.taborder = aa_value
	case "dragicon" ; aphl_obj.dragicon = aa_value
	case "dragauto" ; aphl_obj.dragauto = aa_value
	case "bringtotop" ; aphl_obj.bringtotop = aa_value
	case "pointer" ; aphl_obj.pointer = aa_value
	case "enabled" ; aphl_obj.enabled = aa_value
	case "originalsize" ; aphl_obj.originalsize = aa_value
	case "picturename" ; aphl_obj.picturename = aa_value
	case "invert" ; aphl_obj.invert = aa_value
	case "border" ; aphl_obj.border = aa_value
	case "borderstyle" ; aphl_obj.borderstyle = aa_value
	case "focusrectangle" ; aphl_obj.focusrectangle = aa_value
	case "map3dcolors" ; aphl_obj.map3dcolors = aa_value
	case "powertiptext" ; aphl_obj.powertiptext = aa_value
	case "url" ; aphl_obj.url = aa_value
	case else ; debug_message( classname(), "set_picturehyperlink_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_picture_property (picture ap_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ap_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; ap_obj.classdefinition = aa_value
	case "tag" ; ap_obj.tag = aa_value
	case "visible" ; ap_obj.visible = aa_value
	case "accessiblename" ; ap_obj.accessiblename = aa_value
	case "accessibledescription" ; ap_obj.accessibledescription = aa_value
	case "accessiblerole" ; ap_obj.accessiblerole = aa_value
	case "x" ; ap_obj.x = aa_value
	case "y" ; ap_obj.y = aa_value
	case "width" ; ap_obj.width = aa_value
	case "height" ; ap_obj.height = aa_value
	case "taborder" ; ap_obj.taborder = aa_value
	case "dragicon" ; ap_obj.dragicon = aa_value
	case "dragauto" ; ap_obj.dragauto = aa_value
	case "bringtotop" ; ap_obj.bringtotop = aa_value
	case "pointer" ; ap_obj.pointer = aa_value
	case "enabled" ; ap_obj.enabled = aa_value
	case "originalsize" ; ap_obj.originalsize = aa_value
	case "picturename" ; ap_obj.picturename = aa_value
	case "invert" ; ap_obj.invert = aa_value
	case "border" ; ap_obj.border = aa_value
	case "borderstyle" ; ap_obj.borderstyle = aa_value
	case "focusrectangle" ; ap_obj.focusrectangle = aa_value
	case "map3dcolors" ; ap_obj.map3dcolors = aa_value
	case "powertiptext" ; ap_obj.powertiptext = aa_value
	case else ; debug_message( classname(), "set_picture_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_statichyperlink_property (statichyperlink ashl_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ashl_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; ashl_obj.classdefinition = aa_value
	case "tag" ; ashl_obj.tag = aa_value
	case "visible" ; ashl_obj.visible = aa_value
	case "accessiblename" ; ashl_obj.accessiblename = aa_value
	case "accessibledescription" ; ashl_obj.accessibledescription = aa_value
	case "accessiblerole" ; ashl_obj.accessiblerole = aa_value
	case "x" ; ashl_obj.x = aa_value
	case "y" ; ashl_obj.y = aa_value
	case "width" ; ashl_obj.width = aa_value
	case "height" ; ashl_obj.height = aa_value
	case "taborder" ; ashl_obj.taborder = aa_value
	case "dragicon" ; ashl_obj.dragicon = aa_value
	case "dragauto" ; ashl_obj.dragauto = aa_value
	case "bringtotop" ; ashl_obj.bringtotop = aa_value
	case "textsize" ; ashl_obj.textsize = aa_value
	case "weight" ; ashl_obj.weight = aa_value
	case "fontcharset" ; ashl_obj.fontcharset = aa_value
	case "fontpitch" ; ashl_obj.fontpitch = aa_value
	case "fontfamily" ; ashl_obj.fontfamily = aa_value
	case "facename" ; ashl_obj.facename = aa_value
	case "italic" ; ashl_obj.italic = aa_value
	case "underline" ; ashl_obj.underline = aa_value
	case "pointer" ; ashl_obj.pointer = aa_value
	case "textcolor" ; ashl_obj.textcolor = aa_value
	case "backcolor" ; ashl_obj.backcolor = aa_value
	case "enabled" ; ashl_obj.enabled = aa_value
	case "text" ; ashl_obj.text = aa_value
	case "alignment" ; ashl_obj.alignment = aa_value
	case "border" ; ashl_obj.border = aa_value
	case "bordercolor" ; ashl_obj.bordercolor = aa_value
	case "fillpattern" ; ashl_obj.fillpattern = aa_value
	case "borderstyle" ; ashl_obj.borderstyle = aa_value
	case "focusrectangle" ; ashl_obj.focusrectangle = aa_value
	case "righttoleft" ; ashl_obj.righttoleft = aa_value
	case "disabledlook" ; ashl_obj.disabledlook = aa_value
	case "url" ; ashl_obj.url = aa_value
	case else ; debug_message( classname(), "set_statichyperlink_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_radiobutton_property (radiobutton arb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( arb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; arb_obj.classdefinition = aa_value
	case "tag" ; arb_obj.tag = aa_value
	case "visible" ; arb_obj.visible = aa_value
	case "accessiblename" ; arb_obj.accessiblename = aa_value
	case "accessibledescription" ; arb_obj.accessibledescription = aa_value
	case "accessiblerole" ; arb_obj.accessiblerole = aa_value
	case "x" ; arb_obj.x = aa_value
	case "y" ; arb_obj.y = aa_value
	case "width" ; arb_obj.width = aa_value
	case "height" ; arb_obj.height = aa_value
	case "taborder" ; arb_obj.taborder = aa_value
	case "dragicon" ; arb_obj.dragicon = aa_value
	case "dragauto" ; arb_obj.dragauto = aa_value
	case "bringtotop" ; arb_obj.bringtotop = aa_value
	case "textsize" ; arb_obj.textsize = aa_value
	case "weight" ; arb_obj.weight = aa_value
	case "fontcharset" ; arb_obj.fontcharset = aa_value
	case "fontpitch" ; arb_obj.fontpitch = aa_value
	case "fontfamily" ; arb_obj.fontfamily = aa_value
	case "facename" ; arb_obj.facename = aa_value
	case "italic" ; arb_obj.italic = aa_value
	case "underline" ; arb_obj.underline = aa_value
	case "pointer" ; arb_obj.pointer = aa_value
	case "textcolor" ; arb_obj.textcolor = aa_value
	case "backcolor" ; arb_obj.backcolor = aa_value
	case "enabled" ; arb_obj.enabled = aa_value
	case "text" ; arb_obj.text = aa_value
	case "checked" ; arb_obj.checked = aa_value
	case "automatic" ; arb_obj.automatic = aa_value
	case "lefttext" ; arb_obj.lefttext = aa_value
	case "borderstyle" ; arb_obj.borderstyle = aa_value
	case "righttoleft" ; arb_obj.righttoleft = aa_value
	case else ; debug_message( classname(), "set_radiobutton_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_checkbox_property (checkbox acbx_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( acbx_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; acbx_obj.classdefinition = aa_value
	case "tag" ; acbx_obj.tag = aa_value
	case "visible" ; acbx_obj.visible = aa_value
	case "accessiblename" ; acbx_obj.accessiblename = aa_value
	case "accessibledescription" ; acbx_obj.accessibledescription = aa_value
	case "accessiblerole" ; acbx_obj.accessiblerole = aa_value
	case "x" ; acbx_obj.x = aa_value
	case "y" ; acbx_obj.y = aa_value
	case "width" ; acbx_obj.width = aa_value
	case "height" ; acbx_obj.height = aa_value
	case "taborder" ; acbx_obj.taborder = aa_value
	case "dragicon" ; acbx_obj.dragicon = aa_value
	case "dragauto" ; acbx_obj.dragauto = aa_value
	case "bringtotop" ; acbx_obj.bringtotop = aa_value
	case "textsize" ; acbx_obj.textsize = aa_value
	case "weight" ; acbx_obj.weight = aa_value
	case "fontcharset" ; acbx_obj.fontcharset = aa_value
	case "fontpitch" ; acbx_obj.fontpitch = aa_value
	case "fontfamily" ; acbx_obj.fontfamily = aa_value
	case "facename" ; acbx_obj.facename = aa_value
	case "italic" ; acbx_obj.italic = aa_value
	case "underline" ; acbx_obj.underline = aa_value
	case "pointer" ; acbx_obj.pointer = aa_value
	case "textcolor" ; acbx_obj.textcolor = aa_value
	case "backcolor" ; acbx_obj.backcolor = aa_value
	case "enabled" ; acbx_obj.enabled = aa_value
	case "text" ; acbx_obj.text = aa_value
	case "automatic" ; acbx_obj.automatic = aa_value
	case "checked" ; acbx_obj.checked = aa_value
	case "lefttext" ; acbx_obj.lefttext = aa_value
	case "threestate" ; acbx_obj.threestate = aa_value
	case "thirdstate" ; acbx_obj.thirdstate = aa_value
	case "borderstyle" ; acbx_obj.borderstyle = aa_value
	case "righttoleft" ; acbx_obj.righttoleft = aa_value

	case else ; debug_message( classname(), "set_checkbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_picturebutton_property (picturebutton apb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( apb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; apb_obj.classdefinition = aa_value
	case "tag" ; apb_obj.tag = aa_value
	case "visible" ; apb_obj.visible = aa_value
	case "accessiblename" ; apb_obj.accessiblename = aa_value
	case "accessibledescription" ; apb_obj.accessibledescription = aa_value
	case "accessiblerole" ; apb_obj.accessiblerole = aa_value
	case "x" ; apb_obj.x = aa_value
	case "y" ; apb_obj.y = aa_value
	case "width" ; apb_obj.width = aa_value
	case "height" ; apb_obj.height = aa_value
	case "taborder" ; apb_obj.taborder = aa_value
	case "dragicon" ; apb_obj.dragicon = aa_value
	case "dragauto" ; apb_obj.dragauto = aa_value
	case "bringtotop" ; apb_obj.bringtotop = aa_value
	case "textsize" ; apb_obj.textsize = aa_value
	case "weight" ; apb_obj.weight = aa_value
	case "fontcharset" ; apb_obj.fontcharset = aa_value
	case "fontpitch" ; apb_obj.fontpitch = aa_value
	case "fontfamily" ; apb_obj.fontfamily = aa_value
	case "facename" ; apb_obj.facename = aa_value
	case "italic" ; apb_obj.italic = aa_value
	case "underline" ; apb_obj.underline = aa_value
	case "pointer" ; apb_obj.pointer = aa_value
	case "enabled" ; apb_obj.enabled = aa_value
	case "text" ; apb_obj.text = aa_value
	case "cancel" ; apb_obj.cancel = aa_value
	case "default" ; apb_obj.default = aa_value
	case "flatstyle" ; apb_obj.flatstyle = aa_value
	case "originalsize" ; apb_obj.originalsize = aa_value
	case "picturename" ; apb_obj.picturename = aa_value
	case "disabledname" ; apb_obj.disabledname = aa_value
	case "htextalign" ; apb_obj.htextalign = aa_value
	case "vtextalign" ; apb_obj.vtextalign = aa_value
	case "map3dcolors" ; apb_obj.map3dcolors = aa_value
	case "powertiptext" ; apb_obj.powertiptext = aa_value

	case else ; debug_message( classname(), "set_picturebutton_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_groupbox_property (groupbox agb_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( agb_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; agb_obj.classdefinition = aa_value
	case "tag" ; agb_obj.tag = aa_value
	case "visible" ; agb_obj.visible = aa_value
	case "accessiblename" ; agb_obj.accessiblename = aa_value
	case "accessibledescription" ; agb_obj.accessibledescription = aa_value
	case "accessiblerole" ; agb_obj.accessiblerole = aa_value
	case "x" ; agb_obj.x = aa_value
	case "y" ; agb_obj.y = aa_value
	case "width" ; agb_obj.width = aa_value
	case "height" ; agb_obj.height = aa_value
	case "taborder" ; agb_obj.taborder = aa_value
	case "dragicon" ; agb_obj.dragicon = aa_value
	case "dragauto" ; agb_obj.dragauto = aa_value
	case "bringtotop" ; agb_obj.bringtotop = aa_value
	case "textsize" ; agb_obj.textsize = aa_value
	case "weight" ; agb_obj.weight = aa_value
	case "fontcharset" ; agb_obj.fontcharset = aa_value
	case "fontpitch" ; agb_obj.fontpitch = aa_value
	case "fontfamily" ; agb_obj.fontfamily = aa_value
	case "facename" ; agb_obj.facename = aa_value
	case "italic" ; agb_obj.italic = aa_value
	case "underline" ; agb_obj.underline = aa_value
	case "pointer" ; agb_obj.pointer = aa_value
	case "textcolor" ; agb_obj.textcolor = aa_value
	case "backcolor" ; agb_obj.backcolor = aa_value
	case "enabled" ; agb_obj.enabled = aa_value
	case "text" ; agb_obj.text = aa_value
	case "borderstyle" ; agb_obj.borderstyle = aa_value
	case "righttoleft" ; agb_obj.righttoleft = aa_value

	case else ; debug_message( classname(), "set_groupbox_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_line_property (line aln_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aln_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; aln_obj.classdefinition = aa_value
	case "tag" ; aln_obj.tag = aa_value
	case "visible" ; aln_obj.visible = aa_value
	case "linecolor" ; aln_obj.linecolor = aa_value
	case "linestyle" ; aln_obj.linestyle = aa_value
	case "linethickness" ; aln_obj.linethickness = aa_value
	case "beginx" ; aln_obj.beginx = aa_value
	case "beginy" ; aln_obj.beginy = aa_value
	case "endx" ; aln_obj.endx = aa_value
	case "endy" ; aln_obj.endy = aa_value
	case else ; debug_message( classname(), "set_line_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_oval_property (oval aov_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( aov_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; aov_obj.classdefinition = aa_value
	case "tag" ; aov_obj.tag = aa_value
	case "visible" ; aov_obj.visible = aa_value
	case "linecolor" ; aov_obj.linecolor = aa_value
	case "linestyle" ; aov_obj.linestyle = aa_value
	case "linethickness" ; aov_obj.linethickness = aa_value
	case "fillcolor" ; aov_obj.fillcolor = aa_value
	case "fillpattern" ; aov_obj.fillpattern = aa_value
	case "x" ; aov_obj.x = aa_value
	case "y" ; aov_obj.y = aa_value
	case "width" ; aov_obj.width = aa_value
	case "height" ; aov_obj.height = aa_value
	case else ; debug_message( classname(), "set_oval_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_rectangle_property (rectangle ar_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( ar_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; ar_obj.classdefinition = aa_value
	case "tag" ; ar_obj.tag = aa_value
	case "visible" ; ar_obj.visible = aa_value
	case "linecolor" ; ar_obj.linecolor = aa_value
	case "linestyle" ; ar_obj.linestyle = aa_value
	case "linethickness" ; ar_obj.linethickness = aa_value
	case "fillcolor" ; ar_obj.fillcolor = aa_value
	case "fillpattern" ; ar_obj.fillpattern = aa_value
	case "x" ; ar_obj.x = aa_value
	case "y" ; ar_obj.y = aa_value
	case "width" ; ar_obj.width = aa_value
	case "height" ; ar_obj.height = aa_value
	case else ; debug_message( classname(), "set_rectangle_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public subroutine set_roundrectangle_property (roundrectangle arr_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( arr_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname , aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; arr_obj.classdefinition = aa_value
	case "tag" ; arr_obj.tag = aa_value
	case "visible" ; arr_obj.visible = aa_value
	case "linecolor" ; arr_obj.linecolor = aa_value
	case "linestyle" ; arr_obj.linestyle = aa_value
	case "linethickness" ; arr_obj.linethickness = aa_value
	case "fillcolor" ; arr_obj.fillcolor = aa_value
	case "fillpattern" ; arr_obj.fillpattern = aa_value
	case "x" ; arr_obj.x = aa_value
	case "y" ; arr_obj.y = aa_value
	case "width" ; arr_obj.width = aa_value
	case "height" ; arr_obj.height = aa_value
	case "cornerheight" ; arr_obj.cornerheight = aa_value
	case "cornerwidth" ; arr_obj.cornerwidth = aa_value
	case else ; debug_message( classname(), "set_roundrectangle_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public function string getfullqualifiedname (powerobject apow_obj);string ls_fullqualifiedname

ls_fullqualifiedname = apow_obj.classname()
powerobject apow_parent 
apow_parent = apow_obj.getparent()
do while isvalid( apow_parent ) and not isnull( apow_parent )
	ls_fullqualifiedname = apow_parent.classname() + "." + ls_fullqualifiedname
	apow_parent = apow_parent.getparent()
loop 

return ls_fullqualifiedname

end function

public function anyiterator getproperties (powerobject apow_obj);AnyIterator iter
classdefinition cdef
VariableDefinition lvd_vars[]
long i

cdef = apow_obj.classdefinition
lvd_vars[] = cdef.variablelist[]
for i = 1 to upperbound( lvd_vars[] )
	iter.	_add( lvd_vars[i].Name )
next

return iter
end function

public function anyiterator getproperties (powerobject apow_obj, string as_type);AnyIterator iter
classdefinition cdef
VariableDefinition lvd_vars[]
long i

if getDataType( apow_obj ) = "nv_dwcontrol" then
	nv_dwcontrol ldwc
	ldwc = apow_obj
	return ldwc.getProperties( )
end if

cdef = apow_obj.classdefinition
lvd_vars[] = cdef.variablelist[]
for i = 1 to upperbound( lvd_vars[] )
	if lvd_vars[i].isuserdefined or lvd_vars[i].writeaccess<>Public! then continue
	if lvd_vars[i].typeinfo.datatypeof = as_type then
		iter.	_add( lvd_vars[i].Name )
	end if
next

return iter
end function

public function any get_menu_property (menu am_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( am_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return am_obj.classdefinition
	case "bitmapbackcolor" ; return am_obj.BitmapBackColor
	case "bitmapgradient" ; return am_obj.BitmapGradient	
	case "checked" ; return am_obj.checked
	case "default" ; return am_obj.default
	case "enabled" ; return am_obj.enabled
	case "facename" ; return am_obj.facename
	case "italic" ; return am_obj.italic
//	case "item" ; return am_obj.item[]
	case "menuanimation" ; return am_obj.menuanimation
	case "menubackcolor" ; return am_obj.menubackcolor
	case "menubitmaps" ; return am_obj.menubitmaps
	case "menuhighlightcolor" ; return am_obj.menuhighlightcolor
	case "menuimage" ; return am_obj.menuimage
	case "menuitemtype" ; return am_obj.menuitemtype
	case "menustyle" ; return am_obj.menustyle
	case "menutextcolor" ; return am_obj.menutextcolor
	case "menutitles" ; return am_obj.menutitles
	case "menutitletext" ; return am_obj.menutitletext
	case "mergeoption" ; return am_obj.mergeoption
	case "microhelp" ; return am_obj.microhelp
	case "parentwindow" ; return am_obj.parentwindow
	case "shifttoright" ; return am_obj.shifttoright
	case "shortcut" ; return am_obj.shortcut
	case "tag" ; return am_obj.tag
	case "text" ; return am_obj.text
	case "textsize" ; return am_obj.textsize
	case "titlebackcolor" ; return am_obj.titlebackcolor
	case "titlegradient" ; return am_obj.titlegradient
	case "toolbaranimation" ; return am_obj.toolbaranimation
	case "toolbarbackcolor" ; return am_obj.toolbarbackcolor
	case "toolbargradient" ; return am_obj.toolbargradient
	case "toolbarhighlightcolor" ; return am_obj.toolbarhighlightcolor
	case "toolbaritembarindex" ; return am_obj.toolbaritembarindex
	case "toolbaritemdown" ; return am_obj.toolbaritemdown
	case "toolbaritemdownname" ; return am_obj.toolbaritemdownname
	case "toolbaritemname" ; return am_obj.toolbaritemname
	case "toolbaritemorder" ; return am_obj.toolbaritemorder
	case "toolbaritemspace" ; return am_obj.toolbaritemspace
	case "toolbaritemtext" ; return am_obj.toolbaritemtext
	case "toolbaritemvisible" ; return am_obj.toolbaritemvisible
	case "toolbarstyle" ; return am_obj.toolbarstyle
	case "toolbartextcolor" ; return am_obj.toolbartextcolor
	case "underline" ; return am_obj.underline
	case "visible" ; return am_obj.visible
	case "weight" ; return am_obj.weight
	case else ; 
		debug_message( classname(), "get_menu_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public subroutine set_menu_property (menu am_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( am_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
	return
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; am_obj.classdefinition = aa_value
//	case "bitmapbackcolor" ; am_obj.BitmapBackColor = aa_value
//	case "bitmapgradient" ; am_obj.BitmapGradient	 = aa_value
	case "checked" ; am_obj.checked = aa_value
	case "default" ; am_obj.default = aa_value
	case "enabled" ; am_obj.enabled = aa_value
//	case "facename" ; am_obj.facename = aa_value
//	case "italic" ; am_obj.italic = aa_value
//	case "item" ; am_obj.item[] = aa_value
	case "menuanimation" ; am_obj.menuanimation = aa_value
//	case "menubackcolor" ; am_obj.menubackcolor = aa_value
//	case "menubitmaps" ; am_obj.menubitmaps = aa_value
//	case "menuhighlightcolor" ; am_obj.menuhighlightcolor = aa_value
	case "menuimage" ; am_obj.menuimage = aa_value
	case "menuitemtype" ; am_obj.menuitemtype = aa_value
//	case "menustyle" ; am_obj.menustyle = aa_value
//	case "menutextcolor" ; am_obj.menutextcolor = aa_value
//	case "menutitles" ; am_obj.menutitles = aa_value
	case "menutitletext" ; am_obj.menutitletext = aa_value
	case "mergeoption" ; am_obj.mergeoption = aa_value
	case "microhelp" ; am_obj.microhelp = aa_value
//	case "parentwindow" ; am_obj.parentwindow = aa_value
	case "shifttoright" ; am_obj.shifttoright = aa_value
//	case "shortcut" ; am_obj.shortcut = aa_value
	case "tag" ; am_obj.tag = aa_value
	case "text" ; am_obj.text = aa_value
//	case "textsize" ; am_obj.textsize = aa_value
//	case "titlebackcolor" ; am_obj.titlebackcolor = aa_value
//	case "titlegradient" ; am_obj.titlegradient = aa_value
	case "toolbaranimation" ; am_obj.toolbaranimation = aa_value
//	case "toolbarbackcolor" ; am_obj.toolbarbackcolor = aa_value
//	case "toolbargradient" ; am_obj.toolbargradient = aa_value
//	case "toolbarhighlightcolor" ; am_obj.toolbarhighlightcolor = aa_value
	case "toolbaritembarindex" ; am_obj.toolbaritembarindex = aa_value
	case "toolbaritemdown" ; am_obj.toolbaritemdown = aa_value
	case "toolbaritemdownname" ; am_obj.toolbaritemdownname = aa_value
	case "toolbaritemname" ; am_obj.toolbaritemname = aa_value
	case "toolbaritemorder" ; am_obj.toolbaritemorder = aa_value
	case "toolbaritemspace" ; am_obj.toolbaritemspace = aa_value
	case "toolbaritemtext" ; am_obj.toolbaritemtext = aa_value
	case "toolbaritemvisible" ; am_obj.toolbaritemvisible = aa_value
//	case "toolbarstyle" ; am_obj.toolbarstyle = aa_value
//	case "toolbartextcolor" ; am_obj.toolbartextcolor = aa_value
//	case "underline" ; am_obj.underline = aa_value
	case "visible" ; am_obj.visible = aa_value
//	case "weight" ; am_obj.weight = aa_value
	case else ; debug_message( classname(), "set_menu_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose
end subroutine

public function iterator getcontrols (powerobject apow_parent, boolean ab_recurse);iterator iter
iterator childs

//iter._add( /*powerobject apo_item */)
long i
choose case getdatatype( apow_parent )
	case "window"
		window lw
		lw = apow_parent
		for i = 1 to upperbound( lw.control[] )
			iter._add( lw.control[i] )
			if ab_recurse then
				childs = getControls( lw.control[i] )
				do while childs.hasnext( )
					iter._add( childs.getNext() )
				loop			
			end if
		next
	case "tab"
		tab ltab
		ltab = apow_parent
		for i = 1 to upperbound( ltab.control[] )
			iter._add( ltab.control[i] )
			if ab_recurse then
				childs = getControls( ltab.control[i] )
				do while childs.hasnext( )
					iter._add( childs.getNext() )
				loop			
			end if
		next		
	case "userobject"
		userobject luo
		luo = apow_parent
		for i = 1 to upperbound( luo.control[] )
			iter._add( luo.control[i] )
			if ab_recurse then
				childs = getControls( luo.control[i] )
				do while childs.hasnext( )
					iter._add( childs.getNext() )
				loop			
			end if
		next	
	case "menu"
		menu lmenu
		lmenu = apow_parent
		for i = 1 to upperbound( lmenu.item[] )
			iter._add( lmenu.item[i] )
			if ab_recurse then
				childs = getControls( lmenu.item[i] )
				do while childs.hasnext( )
					iter._add( childs.getNext() )
				loop			
			end if
		next
	case "datawindow"	// TODO : look behind for all [visible] controls and properties...
		datawindow ldw
		ldw = apow_parent
		nv_dwcontrol ldwcontrol
		iterator dwiter
		dwiter = ldwcontrol.getControls( ldw )
		return dwiter
//		do while dwiter.hasNext()
//			iter._add( dwiter.getNext() )
//			if ab_recurse then	//SHOULD NOT BE POSSIBLE ( a DW control can't contain another control... (DDDW ?) )
//				childs = getControls( lmenu.item[i] )
//				do while childs.hasnext( )
//					iter._add( childs.getNext() )
//				loop
//			end if
//		loop
	case else
//		debug_message( classname(), "getControls( " + apow_parent.classname() + " unhandled datatype: " + getdatatype( apow_parent ) + ")" )
end choose

return iter
end function

public function any get_menucascade_property (menucascade amc_obj, string as_fullqualifiedpropertyname);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( amc_obj, as_fullqualifiedpropertyname )
	return getProperty( lpow_control, as_fullqualifiedpropertyname )
end if

choose case as_fullqualifiedpropertyname		
	case "classdefinition" ; return amc_obj.classdefinition
	case "checked" ; return amc_obj.checked
	case "default" ; return amc_obj.default
	case "columns" ; return amc_obj.columns
	case "currentitem" ; return amc_obj.currentitem
	case "enabled" ; return amc_obj.enabled
	case "dropdown" ; return amc_obj.dropdown
//	case "item" ; return amc_obj.item[]
	case "menuitemtype" ; return amc_obj.menuitemtype
	case "mergeoption" ; return amc_obj.mergeoption
	case "microhelp" ; return amc_obj.microhelp
	case "parentwindow" ; return amc_obj.parentwindow
	case "shifttoright" ; return amc_obj.shifttoright
	case "shortcut" ; return amc_obj.shortcut
	case "tag" ; return amc_obj.tag
	case "text" ; return amc_obj.text
	case "toolbaritemdown" ; return amc_obj.toolbaritemdown
	case "toolbaritemdownname" ; return amc_obj.toolbaritemdownname
	case "toolbaritembarindex" ; return amc_obj.toolbaritembarindex
	case "toolbaritemname" ; return amc_obj.toolbaritemname
	case "toolbaritemorder" ; return amc_obj.toolbaritemorder
	case "toolbaritemspace" ; return amc_obj.toolbaritemspace
	case "toolbaritemtext" ; return amc_obj.toolbaritemtext
	case "toolbaritemvisible" ; return amc_obj.toolbaritemvisible
	case "visible" ; return amc_obj.visible
	case else ; 
		debug_message( classname(), "get_menucascade_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

return 0
end function

public subroutine set_menucascade_property (menucascade amc_obj, string as_fullqualifiedpropertyname, any aa_value);//verification que l'on ne cherche pas à accerder à un control...
if pos( as_fullqualifiedpropertyname, "." ) > 0 then
	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
	string ls_control
	powerobject lpow_control
	lpow_control = get_control( amc_obj, as_fullqualifiedpropertyname )
	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
end if

choose case as_fullqualifiedpropertyname		
//	case "classdefinition" ; amc_obj.classdefinition = aa_value
	case "checked" ; amc_obj.checked = aa_value
	case "default" ; amc_obj.default = aa_value
	case "columns" ; amc_obj.columns = aa_value
	case "currentitem" ; amc_obj.currentitem = aa_value
	case "enabled" ; amc_obj.enabled = aa_value
	case "dropdown" ; amc_obj.dropdown = aa_value
//	case "item" ; amc_obj.item[] = aa_value
	case "menuitemtype" ; amc_obj.menuitemtype = aa_value
	case "mergeoption" ; amc_obj.mergeoption = aa_value
	case "microhelp" ; amc_obj.microhelp = aa_value
//	case "parentwindow" ; amc_obj.parentwindow = aa_value
	case "shifttoright" ; amc_obj.shifttoright = aa_value
//	case "shortcut" ; amc_obj.shortcut = aa_value
	case "tag" ; amc_obj.tag = aa_value
	case "text" ; amc_obj.text = aa_value
	case "toolbaritemdown" ; amc_obj.toolbaritemdown = aa_value
	case "toolbaritemdownname" ; amc_obj.toolbaritemdownname = aa_value
	case "toolbaritembarindex" ; amc_obj.toolbaritembarindex = aa_value
	case "toolbaritemname" ; amc_obj.toolbaritemname = aa_value
	case "toolbaritemorder" ; amc_obj.toolbaritemorder = aa_value
	case "toolbaritemspace" ; amc_obj.toolbaritemspace = aa_value
	case "toolbaritemtext" ; amc_obj.toolbaritemtext = aa_value
	case "toolbaritemvisible" ; amc_obj.toolbaritemvisible = aa_value
	case "visible" ; amc_obj.visible = aa_value
	case else ; 
		debug_message( classname(), "set_menucascade_property : unhandled property = " + as_fullqualifiedpropertyname )
end choose

end subroutine

public function window getparentwindow (powerobject apow_obj);window lw_win
powerobject apow_parent 
apow_parent = apow_obj.getparent()
do while isvalid( apow_parent ) and not isnull( apow_parent )
	if isHeritedFrom( "window", apow_parent ) then
		return apow_parent
	end if
	apow_parent = apow_parent.getparent()	
loop

return lw_win

end function

public function any get_dwcontrol_property (nv_dwcontrol adwc_obj, string as_fullqualifiedpropertyname);//SHOuLD NOT HAPPEN (sauf pour DDDW )....
//verification que l'on ne cherche pas à accerder à un control...
//if pos( as_fullqualifiedpropertyname, "." ) > 0 then
//	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
//	string ls_control
//	powerobject lpow_control
//	lpow_control = get_control( adwc_obj, as_fullqualifiedpropertyname )
//	return getProperty( lpow_control, as_fullqualifiedpropertyname )
//end if
//

return adwc_obj.getProperty( as_fullqualifiedpropertyname )
end function

public subroutine set_dwcontrol_property (nv_dwcontrol adwc_obj, string as_fullqualifiedpropertyname, any aa_value);//SHOuLD NOT HAPPEN (sauf pour DDDW )....
//verification que l'on ne cherche pas à accerder à un control...
//if pos( as_fullqualifiedpropertyname, "." ) > 0 then
//	//il faut extraire le nom du control puis y acceder et transmettre le bébé à getProperty( ... )
//	string ls_control
//	powerobject lpow_control
//	lpow_control = get_control( adwc_obj, as_fullqualifiedpropertyname )
//	setProperty( lpow_control, as_fullqualifiedpropertyname, aa_value )
//	return
//end if
//

adwc_obj.setProperty( as_fullqualifiedpropertyname, string( aa_value ) )
end subroutine

on nv_poweraccessor.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nv_poweraccessor.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

