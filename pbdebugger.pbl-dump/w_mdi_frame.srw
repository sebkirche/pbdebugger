$PBExportHeader$w_mdi_frame.srw
forward
global type w_mdi_frame from w_response_ancestor
end type
type cbx_scroll from checkbox within w_mdi_frame
end type
type uo_1 from u_scilexer within w_mdi_frame
end type
type sle_thandle from singlelineedit within w_mdi_frame
end type
type st_3 from statictext within w_mdi_frame
end type
type sle_phandle from singlelineedit within w_mdi_frame
end type
type st_2 from statictext within w_mdi_frame
end type
type st_1 from statictext within w_mdi_frame
end type
type cb_create from commandbutton within w_mdi_frame
end type
type sle_cmd from singlelineedit within w_mdi_frame
end type
type cb_detach from commandbutton within w_mdi_frame
end type
type cb_attach from commandbutton within w_mdi_frame
end type
type sle_pid from singlelineedit within w_mdi_frame
end type
end forward

global type w_mdi_frame from w_response_ancestor
integer width = 3694
integer height = 1876
string title = "PBDebug"
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
boolean ib_resizable = true
boolean ib_resize_handler = true
boolean ib_resizable_auto_min = true
cbx_scroll cbx_scroll
uo_1 uo_1
sle_thandle sle_thandle
st_3 st_3
sle_phandle sle_phandle
st_2 st_2
st_1 st_1
cb_create cb_create
sle_cmd sle_cmd
cb_detach cb_detach
cb_attach cb_attach
sle_pid sle_pid
end type
global w_mdi_frame w_mdi_frame

type prototypes
function boolean CreateProcess(string AppName, string CommLine, long l1, long l2, boolean binh, long creationflags, long l3, string dir, startup_info startupinfo, ref process_info pi ) library 'kernel32.dll' alias for "CreateProcessW"
function ulong OpenProcess(ulong dwDesiredAccess, boolean bInheritHandle, ulong dwProcessId) library "kernel32.dll"
function boolean CloseHandle(ulong hObject) library "kernel32.dll"
function ulong GetCurrentProcess() library "kernel32.dll"

function ulong GetFileSize(ulong hFile, ref ulong lpFileSizeHigh) library "kernel32.dll"
function ulong CreateFileMapping(ulong hFile, ulong lpAttributes, ulong flProtect, ulong dwMaximumSizeHigh, ulong dwMaximumSizeLow, string lpName) library "kernel32.dll" alias for "CreateFileMappingW"
function ulong MapViewOfFile(ulong hFileMappingObject, ulong dwDesiredAccess, ulong dwFileOffsetHigh, ulong dwFileOffsetLow, ulong dwNumberOfBytesToMap) library "kernel32.dll"
function boolean GetMappedFileName(ulong hProcess, ulong lpv, ref string lpFilename, ulong nSize) library "psapi.dll" alias for "GetMappedFileNameW" //kernel32.dll avec win7
function boolean UnmapViewOfFile(ulong lpBaseAddress) library "kernel32.dll"
function ulong GetLogicalDriveStrings(ulong nBufferLength, ref string lpBuffer) library "kernel32.dll" alias for "GetLogicalDriveStringsW"
function ulong QueryDosDevice(string lpDeviceName, ref string lpTargetPath, ulong ucchMax) library "kernel32.dll" alias for "QueryDosDeviceW"

function boolean DebugActiveProcess(ulong dwProcessId) library "kernel32.dll"
function boolean DebugActiveProcessStop(ulong dwProcessId) library "kernel32.dll"
function boolean DebugSetProcessKillOnExit(boolean KillOnExit) library "kernel32.dll"
function boolean WaitForDebugEvent(ref debug_event evt, ulong dwMilliseconds) library "kernel32.dll" alias for "WaitForDebugEvent;ansi"
function boolean ContinueDebugEvent(ulong dwProcessId, ulong dwThreadId, ulong dwContinueStatus) library "kernel32.dll"

function boolean GetModuleFileNameEx(ulong hProcess, ulong hModule, ref string lpFilename, ulong nSize) library "Psapi.dll" alias for "GetModuleFileNameExW" //kernel32.dll avec win7
function ulong GetModuleBaseName(ulong hProcess, ulong hModule, ref string lpFilename, ulong nSize) library "Psapi.dll.dll" alias for "GetModuleBaseNameW" //kernel32.dll avec win7
function ulong GetModuleFileName(ulong hModule, ref string lpFilename, ulong nSize) library "kernel32.dll" alias for "GetModuleFileNameW"

//function boolean ReadProcessMemory(ulong hProcess, ulong lpBaseAddress, ref blob lpBuffer, ulong nSize, ref ulong lpNumberOfBytesRead) library "kernel32.dll" alias for "ReadProcessMemory"
function boolean ReadProcessUnicodeString(ulong hProcess, ulong lpBaseAddress, ref string lpBuffer, ulong nSize,  ulong lpNumberOfBytesRead) library "kernel32.dll" alias for "ReadProcessMemory"
function boolean ReadProcessString(ulong hProcess, ulong lpBaseAddress, ref string lpBuffer, ulong nSize, ulong lpNumberOfBytesRead) library "kernel32.dll" alias for "ReadProcessMemory;ansi"
subroutine CopyCreateProcessEvt (ref create_process_debug_info create_proc_data, byte src[], ulong length) library "kernel32.dll" alias For "RtlMoveMemory"
subroutine CopyCreateThreadEvt (ref create_thread_debug_info create_proc_data, byte src[], ulong length) library "kernel32.dll" alias For "RtlMoveMemory"
subroutine CopyOutputDebugStrEvt (ref output_debug_string_info create_proc_data, byte src[], ulong length) library "kernel32.dll" alias For "RtlMoveMemory"
subroutine CopyLoadDllEvt (ref load_dll_debug_info create_proc_data, byte src[], ulong length) library "kernel32.dll" alias For "RtlMoveMemory"
subroutine CopyStr (ref string str, ulong src, ulong length) library "kernel32.dll" alias For "RtlMoveMemory;ansi"
subroutine CopyUnicodeStr (ref string str, ulong src, ulong length) library "kernel32.dll" alias For "RtlMoveMemory"

end prototypes

type variables
long il_line = 0

constant ulong INFINITE = -1
constant ulong DEBUG_ONLY_THIS_PROCESS = 2
CONSTANT long STARTF_USESHOWWINDOW	= 1
constant ulong STANDARD_RIGHTS_REQUIRED = 983040 //0xF0000
constant ulong SYNCHRONIZE = 1048576 //0x100000
constant ulong FFF = 4095 // 0xFFF
constant ulong PROCESS_ALL_ACCESS = 2035711
constant ulong PROCESS_QUERY_INFORMATION = 1024
constant int MAX_PATH = 260

//debug events
constant int EXCEPTION_DEBUG_EVENT = 1
constant int CREATE_THREAD_DEBUG_EVENT = 2
constant int CREATE_PROCESS_DEBUG_EVENT = 3
constant int EXIT_THREAD_DEBUG_EVENT = 4
constant int EXIT_PROCESS_DEBUG_EVENT = 5
constant int LOAD_DLL_DEBUG_EVENT = 6
constant int UNLOAD_DLL_DEBUG_EVENT = 7
constant int OUTPUT_DEBUG_STRING_EVENT = 8
constant int RIP_EVENT = 9

constant ulong DBG_CONTINUE = 65538 //0x00010002L
constant ulong DBG_EXCEPTION_NOT_HANDLED = 2147549185//0x80010001L


end variables

forward prototypes
public subroutine attachtoprocess (unsignedlong pid, unsignedlong hproc)
public function boolean getfilenamefromhandle (unsignedlong ah_file, ref string as_filename)
public subroutine appendtext (string as_text)
end prototypes

public subroutine attachtoprocess (unsignedlong pid, unsignedlong hproc);
ulong phandle, hdll
ulong BaseOfImage, THandle
ulong nbchar, nbread
boolean lb_apicall
debug_event dbg_evt
create_process_debug_info create_process_evt
create_thread_debug_info create_thread_evt
output_debug_string_info debug_string_evt
load_dll_debug_info load_dll_evt
long row
string buffer, unicode, dllname, tmpstr
blob{2000} blbuf

//pid = long(sle_pid.text)
//phandle = long(sle_hProc.text)


//if pid < 1 then return
//if hProc < 1 then return

buffer = space(2000)
tmpstr = space(2000)
dllname = space(MAX_PATH + 1)

do while(true)
	lb_apicall = Waitfordebugevent( dbg_evt, 200 /*infinite empeche de refraichir l'interface*/)
	if lb_apicall then
	
		choose case dbg_evt.dwdebugeventcode
			//il faut penser à fermer les handles fournis au debugger
				
			case CREATE_PROCESS_DEBUG_EVENT
				copycreateprocessevt( create_process_evt , dbg_evt.sub_event, 40)
				BaseOfImage = create_process_evt.lpbaseofimage
				thandle = create_process_evt.hthread
				appendtext( "CREATE_PROCESS_DEBUG_EVENT : BaseOfImage=" + string(BaseOfImage) + " THandle=" + string(THandle))
				CloseHandle( create_process_evt.hfile )
				
			case CREAte_thread_debug_event
				copycreatethreadevt( create_thread_evt, dbg_evt.sub_event, 12)
				CloseHandle( create_thread_evt.hthread )
				
			case EXIT_PROCESS_DEBUG_EVENT
				appendtext( "EXIT_PROCESS_DEBUG_EVENT" )
				exit
				
			case LOAD_DLL_DEBUG_EVENT
				copyloaddllevt( load_dll_evt, dbg_evt.sub_event, 24)
				dllname = space(MAX_PATH + 1)
//				if load_dll_evt.lpimagename > 0 then
//					if load_dll_evt.funicode <> 0 then
//						unicode = "U"
//						copyunicodestr( dllname, load_dll_evt.lpimagename , load_dll_evt.ndebuginfosize )
//					else
//						unicode = ""
//						copystr( dllname, load_dll_evt.lpimagename , load_dll_evt.ndebuginfosize )
//					end if
//				else
					if load_dll_evt.hfile > 0 then
					
	//				hdll = Openprocess( PROCESS_QUERY_INFORMATION, 0, pid)
	//				if hdll > 0 then 
	//					lb_apicall = GetModulefilenameex(hProc, load_dll_evt.lpbaseofdll, dllname, MAX_PATH)
	//					closehandle( hdll)
	//				end if
	
					getfilenamefromhandle(  load_dll_evt.hfile, dllname)
				end if
				appendtext( "LOAD_DLL_DEBUG_EVENT " + unicode + " : " + dllname )
				Closehandle( load_dll_evt.hfile)
				
			case OUTPUT_DEBUG_STRING_EVENT
				copyoutputdebugstrevt( debug_string_evt , dbg_evt.sub_event, 8)
				nbchar = debug_string_evt.ndebugstringlength
				if nbchar > 200 then continue
				if debug_string_evt.funicode <> 0 then
					////copyunicodestr( tmpstr, buffer, debug_string_evt.ndebugstringlength)
					////tmpstr = string(blbuf)
					lb_apicall = readprocessUnicodeString( hProc , debug_string_evt.lpdebugstringdata , tmpstr, nbchar, 0)
				else
					lb_apicall = readprocessString( hProc , debug_string_evt.lpdebugstringdata , tmpstr, nbchar, 0)
					////copystr( tmpstr, buffer, debug_string_evt.ndebugstringlength)
					////tmpstr = string(blbuf)
				end if
				appendtext( "OUTPUT_DEBUG_STRING_EVENT :" + tmpstr)
							
		end choose
		//lb_evt.selectitem(0)
		//lb_evt.selectitem( lb_evt.totalitems( ))
	end if
	
	do while yield(); loop
	
	if not isnull(dbg_evt) then ContinueDebugEvent( dbg_evt.dwprocessid , dbg_evt.dwthreadid , DBG_CONTINUE)
loop
closehandle( hproc )
if sle_thandle.text <> "" then closehandle( long(sle_thandle.text))
end subroutine

public function boolean getfilenamefromhandle (unsignedlong ah_file, ref string as_filename);//Retrieve the module name from a handle
// adapted from MSDN
// Seki - 2009

ulong hFilemap, pMem
ulong dwFileSizeHi, dwFileSizeLo
string ls_Filename, ls_Mapname
string szDrive, szName, strTemp, strBuffer
long nDriveCount, i, ll_driveslen, ll_drivecount

constant ulong PAGE_READONLY = 2
constant ulong FILE_MAP_READ = 4

if ah_file < 1 then return false

ls_Filename = space(MAX_PATH + 1)

dwFileSizeLo = GetFileSize(ah_File, dwFileSizeHi)
// Cannot map a file with a length of zero.
if dwFileSizeLo = 0 and dwFileSizeHi = 0 then
	return false
end if

setnull(ls_mapname)
hFilemap = CreateFileMapping( ah_file, 0, PAGE_READONLY, 0, 0, ls_mapname)
if hfilemap < 1 then return false

pMem = MapViewOfFile( hFilemap, FILE_MAP_READ, 0, 0, 1)
if pMem > 0 then
	if GetMappedFileName(GetCurrentProcess(), pMem, ls_Filename, MAX_PATH) then
		//Translate path with device name to drive letters.
		
//		// Prepare a long enough buffer
//		strBuffer = space(512)
//		szname = space(MAX_PATH)
//		
//		// Get drives in strBuffer
//		ll_drivecount = 0
//		ll_driveslen = GetLogicalDriveStrings(len(strBuffer), strBuffer)
//		if ll_driveslen > 0 then
//			for i = 1 to ll_driveslen
//				if asc(mid(strBuffer, i, 1)) = 0 then ll_drivecount ++
//			next
//			for i = 1 to ll_drivecount
//				szDrive = mid(strBuffer, i * 2 + 1, 1)
//				//Obtain information about the MS-DOS device name
//				if QueryDosDevice(szDrive, szName, MAX_PATH) > 0 then
//					if pos(ls_Filename, szName) > 0 then
//						strTemp = fastreplaceall(ls_Filename, szName, "")
//						as_filename = szDrive + strTemp
//						exit
//					end if
//				end if
//			next
//		end if
	end if
	UnmapViewOfFile(pMem)
end if
CloseHandle(hfilemap)

if trim(as_filename) = "" then as_filename = ls_Filename

return true

end function

public subroutine appendtext (string as_text);
uo_1.of_appendtext( as_text + "~r~n")
il_line ++

if cbx_scroll.checked then
	uo_1.of_gotoline( il_line /*uo_1.of_getcurrentline( )*/ )
end if

end subroutine

on w_mdi_frame.create
int iCurrent
call super::create
this.cbx_scroll=create cbx_scroll
this.uo_1=create uo_1
this.sle_thandle=create sle_thandle
this.st_3=create st_3
this.sle_phandle=create sle_phandle
this.st_2=create st_2
this.st_1=create st_1
this.cb_create=create cb_create
this.sle_cmd=create sle_cmd
this.cb_detach=create cb_detach
this.cb_attach=create cb_attach
this.sle_pid=create sle_pid
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cbx_scroll
this.Control[iCurrent+2]=this.uo_1
this.Control[iCurrent+3]=this.sle_thandle
this.Control[iCurrent+4]=this.st_3
this.Control[iCurrent+5]=this.sle_phandle
this.Control[iCurrent+6]=this.st_2
this.Control[iCurrent+7]=this.st_1
this.Control[iCurrent+8]=this.cb_create
this.Control[iCurrent+9]=this.sle_cmd
this.Control[iCurrent+10]=this.cb_detach
this.Control[iCurrent+11]=this.cb_attach
this.Control[iCurrent+12]=this.sle_pid
end on

on w_mdi_frame.destroy
call super::destroy
destroy(this.cbx_scroll)
destroy(this.uo_1)
destroy(this.sle_thandle)
destroy(this.st_3)
destroy(this.sle_phandle)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_create)
destroy(this.sle_cmd)
destroy(this.cb_detach)
destroy(this.cb_attach)
destroy(this.sle_pid)
end on

event open;call super::open;
registerautocompletion(sle_cmd)

end event

type cbx_scroll from checkbox within w_mdi_frame
integer x = 119
integer y = 348
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "live scrolling"
boolean checked = true
end type

type uo_1 from u_scilexer within w_mdi_frame
string tag = "TBLR"
integer x = 55
integer y = 480
integer width = 3566
integer height = 1252
integer taborder = 40
end type

event constructor;call super::constructor;
this.of_setmarginwidthn( 0 /*SC_MARGIN_NUMBER*/, this.of_gettextwidth( STYLE_LINENUMBER, "_99999") )
this.of_setmarginwidthn( 1 /*SC_MARGIN_SYMBOL*/, 0)
this.of_setmarginwidthn( 2 /*SC_MARGIN_FOLDING*/, 0)
this.of_setmarginwidthn( 3 /*SC_MARGIN_OTHER*/, 0)

end event

type sle_thandle from singlelineedit within w_mdi_frame
integer x = 937
integer y = 244
integer width = 402
integer height = 84
integer taborder = 50
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_mdi_frame
integer x = 955
integer y = 164
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "thandle"
boolean focusrectangle = false
end type

type sle_phandle from singlelineedit within w_mdi_frame
integer x = 526
integer y = 244
integer width = 402
integer height = 84
integer taborder = 40
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_mdi_frame
integer x = 517
integer y = 164
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "phandle"
boolean focusrectangle = false
end type

type st_1 from statictext within w_mdi_frame
integer x = 110
integer y = 164
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "pid"
boolean focusrectangle = false
end type

type cb_create from commandbutton within w_mdi_frame
integer x = 1632
integer y = 48
integer width = 448
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Create Process"
end type

event clicked;boolean lb_Return
long ll_Null, ll_CreationFlags, ll_Return
ulong lul_ProcessReturn
string ls_CurDir, ls_Null
Startup_Info lstr_Start
Process_info lstr_PI

SetNull(ll_Null)
SetNull(ls_Null)
SetNull(ls_CurDir)

//lstr_Start.cb                            = 72
lstr_Start.dwFlags               = STARTF_USESHOWWINDOW
//IF ab_Visible THEN
        lstr_Start.wShowWindow   = 1
//ELSE
//        lstr_Start.wShowWindow   = 0
//END IF

ll_CreationFlags = DEBUG_ONLY_THIS_PROCESS //CREATE_NEW_CONSOLE + NORMAL_PRIORITY_CLASS

lb_Return = CreateProcess (ls_Null,sle_cmd.text , ll_Null, ll_Null, TRUE,ll_CreationFlags, ll_Null, ls_CurDir, lstr_Start, lstr_PI)
//ll_Return = WaitForSingleObject (lstr_PI.hProcess, INFINITE)
if lb_Return then
	sle_pid.text = string (lstr_PI.dwprocessid)
	sle_phandle.text = string(lstr_PI.hprocess)
	sle_thandle.text = string(lstr_PI.hthread)
end if

Attachtoprocess( lstr_PI.dwprocessid, lstr_PI.hprocess)
end event

type sle_cmd from singlelineedit within w_mdi_frame
integer x = 101
integer y = 40
integer width = 1477
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "C:\windows\system32\notepad.exe"
borderstyle borderstyle = stylelowered!
end type

type cb_detach from commandbutton within w_mdi_frame
integer x = 2075
integer y = 220
integer width = 402
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Stop debug"
end type

event clicked;
DebugActiveProcessStop( long(sle_pid.text) )
end event

type cb_attach from commandbutton within w_mdi_frame
integer x = 1632
integer y = 224
integer width = 402
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Attach"
end type

event clicked;
ulong pid, hproc

pid = long(sle_pid.text)

if pid < 1 then return

if DebugActiveProcess( pid ) then
	hproc = OpenProcess( PROCESS_ALL_ACCESS, false, pid)
	if hproc > 0 then 
		sle_phandle.text = string(hproc)
		attachtoprocess( pid, hproc)
	end if
end if
end event

type sle_pid from singlelineedit within w_mdi_frame
integer x = 119
integer y = 244
integer width = 402
integer height = 84
integer taborder = 10
integer textsize = -8
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

