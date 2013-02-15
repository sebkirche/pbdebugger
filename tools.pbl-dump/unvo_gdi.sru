$PBExportHeader$unvo_gdi.sru
$PBExportComments$Windows GDI processing & interfacing
Author SeKi
forward
global type unvo_gdi from nonvisualobject
end type
type st_size from structure within unvo_gdi
end type
type st_rect from structure within unvo_gdi
end type
type st_bitmap from structure within unvo_gdi
end type
end forward

type st_size from structure
	long		cx
	long		cy
end type

type st_rect from structure
	Long left
	Long top
	Long right
	Long bottom
end type

type st_bitmap from structure
	long bmType
	long bmWidth
	long bmHeight
	long bmWidthBytes
	int  bmPlanes
	int  bmBitsPixel
	long bmBits
end type

global type unvo_gdi from nonvisualobject autoinstantiate
end type

type prototypes
Subroutine OutputDebugString (String lpszOutputString)  LIBRARY "kernel32.dll" ALIAS FOR "OutputDebugStringW";

subroutine RtlMoveMemory(ref any Dest, long Source, long Length) library "kernel32.dll"
Function Long SetTimer(Long hwnd, long idTimer, Long uTimeOut, Long tmprc) Library "user32.dll"
Function Long KillTimer(Long hwnd, Long idEvent) Library "user32.dll" 

Function ULong GetDC(ULong hWnd) Library "User32.DLL"
Function ULong ReleaseDC(ULong hWnd, ULong hDC) Library "User32.DLL"
Function Ulong CreateCompatibleDC (Ulong hDC) Library "gdi32.dll"
Function Ulong DeleteDC (Ulong hDC) Library "gdi32"
//FUNCTION ulong GetObject(ulong hgdiobj, int cbBuffer, ref any dest) library "gdi32.dll" alias for "GetObjectW"
FUNCTION ulong GetObject(ulong hgdiobj, int cbBuffer, ref st_bitmap dest) library "gdi32.dll" alias for "GetObjectW"

Function Ulong SelectObject (Ulong hDC, Ulong hObject) Library "gdi32.dll"
FUNCTION ulong DeleteObject(ulong hObject) LIBRARY "gdi32.dll"     
Function ULONG GetDlgCtrlID(Ulong hwndCtl) Library "User32.DLL"
function ULONG GetWindowRect(ULong hWnd, ref st_rect lpRect) Library "User32.DLL"
Function ULong InvalidateRect(ULong hWnd, ref st_rect lpRect, boolean bErase) Library "User32.DLL"
Function ULong BitBlt(ulong hDestDC, ulong x_left, ulong y_top, ulong nWidth, ulong nHeight, ulong hSrcDC, ulong xSrc, ulong ySrc, ulong dwRop) Library "gdi32.dll"
function ulong GdiTransparentBlt(ulong hDC, long xPos, long yPos, ulong nWidth, ulong nHeight, ulong hSrcDC, long xSrc, long ySrc, ulong nSrcWidth, ulong nSrcHeight, ulong crTransparent) library "gdi32.dll"
function ulong GetPixel(ulong hDC, long x, long y) library "gdi32.dll"

Function ULong LoadImage(Ulong hinst, String lpszName, UInt uType, int cxDesired, int cyDesired, UInt fuLoad) Library "User32.DLL" alias for "LoadImageW"
function ulong CreateBitmap(int nWidth, int nHeight, uint cPlanes, uint cBpp, ulong lpbits) library "gdi32.dll"
FUNCTION ulong GetObjectBitmap(ulong hgdiobj, int cbBuffer, ref st_bitmap bm) library "gdi32.dll" alias for "GetObjectW"
Function Boolean DrawIconEx(Ulong DC, int xLeft, int yTop, ULong Icon, int cxWidth, int cyWidth, UINT istepIfAniCur, ULong hbrFlickerFreeDraw, UINT diFlags) Library "User32.DLL"
Function Boolean DestroyIcon(ULong hIcon) Library "User32.DLL"

function long SetBkColor(ulong hDc, ulong crColor) library "gdi32.dll"
function long SetTextColor(ulong hDc, ulong crColor) library "gdi32.dll"


/*
Function ULong GetMenu(ULong hWnd) Library "User32.DLL"
Function ULong GetSubMenu(ULong hMenu, int nPos) Library "User32.DLL"
Function UINT GetMenuItemID(Ulong hMenu, int nPos) Library "User32.dll"
*/

Function Boolean GetTextExtentpoint32(ULong hdc, string lpString, int cbString, ref ST_SIZE lpSize) library "gdi32.dll" alias for "GetTextExtentPoint32W"
Function ulong CreateFont(long nHeight,ulong nWidth,ulong nEscapement,ulong nOrientation,ulong fnWeight,boolean fdwItalic,boolean fdwUnderline,boolean fdwStrikeOut,ulong fdwCharSet,ulong fdwOutputPrecision,ulong fdwClipPrecision,ulong fdwQuality,ulong dwPitchAndFamily,ref string lpszFace) LIBRARY "gdi32.dll" ALIAS FOR "CreateFontW"  
Function ulong GetDeviceCaps(ulong hdc,ulong nIndex) library "gdi32.dll"

function long MulDiv(long nNumber, long nNumerator, int nDenominator) library "kernel32.dll"

function long GetDesktopWindow( ) library "user32.dll"
end prototypes

type variables
//font weights
constant integer FW_DONTCARE   = 0
constant integer FW_THIN       = 100
constant integer FW_EXTRALIGHT = 200
constant integer FW_ULTRALIGHT = 200
constant integer FW_LIGHT      = 300
constant integer FW_NORMAL     = 400
constant integer FW_REGULAR    = 400
constant integer FW_MEDIUM     = 500
constant integer FW_SEMIBOLD   = 600
constant integer FW_DEMIBOLD   = 600
constant integer FW_BOLD       = 700
constant integer FW_EXTRABOLD  = 800
constant integer FW_ULTRABOLD  = 800
constant integer FW_HEAVY      = 900
constant integer FW_BLACK      = 900

//constants for devicecaps
constant long HWND_DESKTOP = 0 //to ask for desktop caps its the handle to give to GetDC
constant long LOGPIXELSX = 88
constant long LOGPIXELSY = 90
//TwipsPerPixelX = 1440& / GetDeviceCaps(lngDC, LOGPIXELSX)
//TwipsPerPixelY = 1440& / GetDeviceCaps(lngDC, LOGPIXELSY)
//constant long DM_BITSPERPEL = &H40000
//constant long DM_PELSWIDTH =  &H80000
//constant long DM_PELSHEIGHT = &H100000

//charsets
//             Charset Name   Charset Value(hex)     Codepage number
constant ulong DEFAULT_CHARSET     = 1   //(x01)
constant ulong SYMBOL_CHARSET      = 2   //(x02)
constant ulong OEM_CHARSET         = 255 //(xFF)
constant ulong ANSI_CHARSET        = 0   //(x00)            1252
constant ulong RUSSIAN_CHARSET     = 204 //(xCC)            1251
constant ulong EE_CHARSET          = 238 //(xEE)            1250
constant ulong GREEK_CHARSET       = 161 //(xA1)            1253
constant ulong TURKISH_CHARSET     = 162 //(xA2)            1254
constant ulong BALTIC_CHARSET      = 186 //(xBA)            1257
constant ulong SHIFTJIS_CHARSET    = 128 //(x80)             932
constant ulong HANGEUL_CHARSET     = 129 //(x81)             949
constant ulong GB2313_CHARSET      = 134 //(x86)             936
constant ulong CHINESEBIG5_CHARSET = 136 //(x88)             950
//Middle East language edition of Windows:
constant ulong HEBREW_CHARSET      = 177 //(xB1)            1255
constant ulong ARABIC_CHARSET     = 178 //(xB2)            1256
/*
other charsets, but I do not have the values yet
EASTEUROPE_CHARSET
MAC_CHARSET
SHIFTJIS_CHARSET
VIETNAMESE_CHARSET
Korean language edition of Windows: 
    JOHAB_CHARSET
Thai language edition of Windows:
    THAI_CHARSET 
*/

//sizes of strucst
constant uint SIZEOF_BITMAP = 28

//image types for LoadImage()
constant ulong IMAGE_BITMAP = 0
constant ulong IMAGE_ICON   = 1
constant ulong IMAGE_CURSOR = 2
//Some loading types for LoadImage()
constant ulong LR_DEFAULTCOLOR    = 0
constant ulong LR_MONOCHROME      = 1
constant ulong LR_LOADFROMFILE    = 16
constant ulong LR_LOADTRANSPARENT = 32
constant ulong LR_DEFAULTSIZE     = 64
constant ulong LR_LOADMAP3DCOLORS = 4096
constant ulong LR_SHARED          = 32768

//operations for BitBlt
constant ulong NOTSRCCOPY     = 3342344		//Copies the inverted source rectangle to the destination.
constant ulong NOTSRCERASE    = 1114278		//Combines the colors of the source and destination rectangles by using the Boolean OR operator and then inverts the resultant color.
constant ulong SRCAND         = 8913094		//Combines the colors of the source and destination rectangles by using the Boolean AND operator.
constant ulong SRCCOPY        = 13369376		//Copies the source rectangle directly to the destination rectangle.
constant ulong SRCPAINT       = 15597702		//Combines the colors of the source and destination rectangles by using the Boolean OR operator.
constant ulong SRCERASE       = 4457256		//Combines the inverted colors of the destination rectangle with the colors of the source rectangle by using the Boolean AND operator.
constant ulong SRCINVERT      = 6684742		//Combines the colors of the source and destination rectangles by using the Boolean XOR operator.
constant ulong BLACKNESS      = 66				//Fills the destination rectangle using the color associated with index 0 in the physical palette. (This color is black for the default physical palette.)
constant ulong WHITENESS      = 16711778		//Fills the destination rectangle using the color associated with index 1 in the physical palette. (This color is white for the default physical palette.)
constant ulong CAPTUREBLT     = 1073741824	//98/ME/2000/XP: Includes any windows that are layered on top of your window in the resulting image. By default, the image only contains your window. Note that this generally cannot be used for printing device contexts.
constant ulong DSTINVERT      = 5570569		//Inverts the destination rectangle.
constant ulong MERGECOPY      = 12583114		//Merges the colors of the source rectangle with the brush currently selected in hdcDest, by using the Boolean AND operator.
constant ulong MERGEPAINT     = 12255782		//Merges the colors of the inverted source rectangle with the colors of the destination rectangle by using the Boolean OR operator.
constant ulong NOMIRRORBITMAP = 2147483648	//98/ME/2000/XP: Prevents the bitmap from being mirrored.
constant ulong PATCOPY        = 15728673		//Copies the brush currently selected in hdcDest, into the destination bitmap.
constant ulong PATINVERT      = 5898313		//Combines the colors of the brush currently selected in hdcDest, with the colors of the destination rectangle by using the Boolean XOR operator.
constant ulong PATPAINT       = 16452105		//Combines the colors of the brush currently selected in hdcDest, with the colors of the inverted source rectangle by using the Boolean OR operator. The result of this operation is combined with the colors of the destination rectangle by using the Boolean OR operator.


end variables

forward prototypes
public function integer of_getstringwidth (window aw_parent, string as_text, string as_fontname, integer ai_size, boolean ab_bold, boolean ab_italic)
public function integer of_getstringwidthunits (window aw_parent, string as_text, string as_fontname, integer ai_size, boolean ab_bold, boolean ab_italic)
public function integer of_getstringheight (window aw_parent, string as_text, string as_fontname, integer ai_size, boolean ab_bold, boolean ab_italic)
public function integer of_getstringheightunits (window aw_parent, string as_text, string as_fontname, integer ai_size, boolean ab_bold, boolean ab_italic)
public subroutine of_drawtransparentbitmap (unsignedlong aul_hdc, long al_x, long al_y, unsignedlong aul_width, unsignedlong aul_height, unsignedlong aul_hsrc, long al_xsrc, long al_ysrc, unsignedlong aul_widthsrc, unsignedlong aul_heightsrc, unsignedlong aul_color)
public subroutine of_drawtransparentbitmap (unsignedlong aul_hdc, long al_x, long al_y, unsignedlong aul_width, unsignedlong aul_height, unsignedlong aul_hsrc, long al_xsrc, long al_ysrc, unsignedlong aul_widthsrc, unsignedlong aul_heightsrc, unsignedlong aul_xcolor, unsignedlong aul_ycolor)
public subroutine get_screen_rect (ref long al_width, ref long al_height)
public function boolean is_themexpclassic ()
public function string of_getthemename ()
public subroutine of_splitcolors (long al_color, ref integer ai_red, ref integer ai_green, ref integer ai_blue)
public function long of_offset_color_light (long al_color, integer ai_offset)
public function long of_offset_color_red (long al_color, integer ai_offset)
public function long of_offset_color_green (long al_color, integer ai_offset)
public function long of_offset_color_blue (long al_color, integer ai_offset)
public subroutine get_screen_rect_pxl (ref long al_width, ref long al_height)
end prototypes

public function integer of_getstringwidth (window aw_parent, string as_text, string as_fontname, integer ai_size, boolean ab_bold, boolean ab_italic);// computes the width in pixels of a string as drawn in the specified font

ulong ll_handle, ll_hdc, ll_hdcbis
ulong ll_hfont
ulong weight
long height
int width = -1
st_size size

ll_handle = handle(aw_parent)
ll_hdc = GetDC(ll_handle)

// create the specified font
if ab_bold then weight = FW_BOLD else weight = FW_NORMAL
// compute the height using the display device physical properties
height = -MulDiv(ai_size, GetDeviceCaps(ll_hdc, LOGPIXELSX), 72)
ll_hfont = CreateFont( height, 0, 0, 0, weight, ab_italic, false, false, 0, DEFAULT_CHARSET, 0, 0, 0, as_fontname)
// use that font for the device context
SelectObject(ll_hdc, ll_hfont)

if GetTextExtentPoint32(ll_hdc, as_text, len(as_text), size) then
	width = size.cx + 1 //add 1 is better, look trhough MSDN for clues ;o)
end if

ReleaseDC(ll_handle, ll_hdc)

return width

end function

public function integer of_getstringwidthunits (window aw_parent, string as_text, string as_fontname, integer ai_size, boolean ab_bold, boolean ab_italic);// computes the size in pixels of a string as drawn in the specified font
// returns a result in PB units

int width = -1

width = of_getstringwidth(aw_parent, as_text, as_fontname, ai_size, ab_bold, ab_italic)
width = PixelsToUnits(width, XPixelsToUnits!) 

return width

end function

public function integer of_getstringheight (window aw_parent, string as_text, string as_fontname, integer ai_size, boolean ab_bold, boolean ab_italic);// computes the height in pixels of a string as drawn in the specified font

ulong ll_handle, ll_hdc, ll_hdcbis
ulong ll_hfont
ulong weight
long height
int ret_height = -1
st_size size

ll_handle = handle(aw_parent)
ll_hdc = GetDC(ll_handle)

// create the specified font
if ab_bold then weight = FW_BOLD else weight = FW_NORMAL
// compute the height using the display device physical properties
height = -MulDiv(ai_size, GetDeviceCaps(ll_hdc, LOGPIXELSY), 72)
ll_hfont = CreateFont( height, 0, 0, 0, weight, ab_italic, false, false, 0, DEFAULT_CHARSET, 0, 0, 0, as_fontname)
// use that font for the device context
SelectObject(ll_hdc, ll_hfont)

if GetTextExtentPoint32(ll_hdc, as_text, len(as_text), size) then
	ret_height = size.cy
end if

ReleaseDC(ll_handle, ll_hdc)

return ret_height

end function

public function integer of_getstringheightunits (window aw_parent, string as_text, string as_fontname, integer ai_size, boolean ab_bold, boolean ab_italic);// computes the height in pixels of a string as drawn in the specified font
// returns a result in PB units

int height = -1

height = of_getstringheight(aw_parent, as_text, as_fontname, ai_size, ab_bold, ab_italic)
height = PixelsToUnits(height, YPixelsToUnits!) 

return height

end function

public subroutine of_drawtransparentbitmap (unsignedlong aul_hdc, long al_x, long al_y, unsignedlong aul_width, unsignedlong aul_height, unsignedlong aul_hsrc, long al_xsrc, long al_ysrc, unsignedlong aul_widthsrc, unsignedlong aul_heightsrc, unsignedlong aul_color);// draw a transparent bitmap with the given transparent color
//
// Author : SeKi - 2008

gditransparentblt(aul_hdc,al_x, al_y,aul_width,aul_height,aul_hsrc,al_xsrc,al_ysrc,aul_widthsrc,aul_heightsrc, aul_color)

end subroutine

public subroutine of_drawtransparentbitmap (unsignedlong aul_hdc, long al_x, long al_y, unsignedlong aul_width, unsignedlong aul_height, unsignedlong aul_hsrc, long al_xsrc, long al_ysrc, unsignedlong aul_widthsrc, unsignedlong aul_heightsrc, unsignedlong aul_xcolor, unsignedlong aul_ycolor);// draw a transparent bitmap with the given pixel to get the transparent color
//
// Author : SeKi - 2008

ulong lul_color
lul_color = getpixel(aul_hsrc, aul_xcolor, aul_ycolor)
gditransparentblt(aul_hdc,al_x, al_y,aul_width,aul_height,aul_hsrc,al_xsrc,al_ysrc,aul_widthsrc,aul_heightsrc, lul_color)


end subroutine

public subroutine get_screen_rect (ref long al_width, ref long al_height);st_rect lr_rect
getwindowrect( GetDesktopWindow(), lr_rect )
al_height = PixelsToUnits( lr_rect.bottom, YPixelsToUnits! )
al_width = PixelsToUnits( lr_rect.right, XPixelsToUnits! )

end subroutine

public function boolean is_themexpclassic ();string ls_themeactive

registryget("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ThemeManager", "ThemeActive", ls_themeactive)

return ls_themeactive = "0"

end function

public function string of_getthemename ();
string ls_name

if is_themexpclassic( ) then
	registryget("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ThemeManager", "ColorName", ls_name)
end if

return ls_name

end function

public subroutine of_splitcolors (long al_color, ref integer ai_red, ref integer ai_green, ref integer ai_blue);// Split a color into its components
//
// Author : SeKi - 2009

//color rgb = 65536 * Blue+ 256 * Green+ Red
ai_blue = al_color / 65536
al_color = mod(al_color, 65536)

ai_green = al_color / 256
ai_red = mod(al_color, 256)

end subroutine

public function long of_offset_color_light (long al_color, integer ai_offset);// apply an offset to a color to lighten or darken it
//
// Author : SeKi 2009

int li_red, li_green, li_blue

of_splitcolors( al_color, li_red, li_green, li_blue)

li_red += ai_offset
if li_red < 0 then li_red = 0
if li_red > 255 then li_red = 255

li_green += ai_offset
if li_green < 0 then li_green = 0
if li_green > 255 then li_green = 255

li_blue += ai_offset
if li_blue < 0 then li_blue = 0
if li_blue > 255 then li_blue = 255

return rgb(li_red, li_green, li_blue)

end function

public function long of_offset_color_red (long al_color, integer ai_offset);// apply an offset to a color to lighten or darken it - on the red component
//
// Author : SeKi 2009

int li_red, li_green, li_blue

of_splitcolors( al_color, li_red, li_green, li_blue)

li_red += ai_offset
if li_red < 0 then li_red = 0
if li_red > 255 then li_red = 255

return rgb(li_red, li_green, li_blue)

end function

public function long of_offset_color_green (long al_color, integer ai_offset);// apply an offset to a color to lighten or darken it - on the red component
//
// Author : SeKi 2009

int li_red, li_green, li_blue

of_splitcolors( al_color, li_red, li_green, li_blue)

li_green += ai_offset
if li_green < 0 then li_green = 0
if li_green > 255 then li_green = 255

return rgb(li_red, li_green, li_blue)

end function

public function long of_offset_color_blue (long al_color, integer ai_offset);// apply an offset to a color to lighten or darken it - on the red component
//
// Author : SeKi 2009

int li_red, li_green, li_blue

of_splitcolors( al_color, li_red, li_green, li_blue)

li_blue += ai_offset
if li_blue < 0 then li_blue = 0
if li_blue > 255 then li_blue = 255

return rgb(li_red, li_green, li_blue)

end function

public subroutine get_screen_rect_pxl (ref long al_width, ref long al_height);st_rect lr_rect
getwindowrect( GetDesktopWindow(), lr_rect )
al_height = lr_rect.bottom
al_width = lr_rect.right

end subroutine

on unvo_gdi.create
call super::create
TriggerEvent( this, "constructor" )
end on

on unvo_gdi.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

