$PBExportHeader$nv_va_arg.sru
forward
global type nv_va_arg from nonvisualobject
end type
end forward

global type nv_va_arg from nonvisualobject autoinstantiate
end type

type variables
private:

string is_param[]
any ia_value[]
end variables

forward prototypes
public function integer add_member (string as_name, any aa_value)
public function any get_member (string as_name)
public function any get_member (integer ai_index)
public function integer get_count ()
public function integer add_member (any aa_value)
public function integer set_member (string as_name, any aa_value)
public subroutine purge ()
public function integer delete_member (string as_name)
public function integer delete_member (integer ai_index)
end prototypes

public function integer add_member (string as_name, any aa_value);
long nb

nb = upperbound(is_param) + 1
is_param[nb] = as_name
ia_value[nb] = aa_value

return nb
end function

public function any get_member (string as_name);
long i
powerobject obj

for i = 1 to upperbound(is_param)
	if is_param[i] = as_name then return ia_value[i]
next

setnull(obj)
return obj

end function

public function any get_member (integer ai_index);
powerobject objnull
setnull(objnull)

if ai_index <= upperbound(ia_value) then 
	return ia_value[ai_index]
else
	return objnull
end if


end function

public function integer get_count ();
return upperbound(ia_value)

end function

public function integer add_member (any aa_value);
long nb

nb = upperbound(is_param) + 1
is_param[nb] = ""
ia_value[nb] = aa_value

return nb
end function

public function integer set_member (string as_name, any aa_value);// set a member or add it, if not found
long nb, i

for i = 1 to upperbound(is_param)
	if is_param[i] = as_name then 
		ia_value[i] = aa_value
		nb = i
		return nb
	end if
next
// the member was not found, add it
nb = add_member( as_name, aa_value)

return nb
end function

public subroutine purge ();
string ls_empty[]
any la_empty[]

is_param = ls_empty[]
ia_value = la_empty[]


end subroutine

public function integer delete_member (string as_name);// delete a member by its name
// returns the count of remaining items
long nb, i
string ls_new[]
any la_new[]

nb = 0
for i = 1 to upperbound(is_param)
	if is_param[i] <> as_name then
		nb ++
		ls_new[nb] = is_param[i]
		la_new[nb] = ia_value[i]
	end if
next
is_param = ls_new
ia_value = la_new

return nb

end function

public function integer delete_member (integer ai_index);// delete a member by its index
// returns the count of remaining items
long nb, i
string ls_new[]
any la_new[]

nb = 0
for i = 1 to upperbound(is_param)
	if i <> ai_index then
		nb ++
		ls_new[nb] = is_param[i]
		la_new[nb] = ia_value[i]
	end if
next
is_param = ls_new
ia_value = la_new

return nb

end function

on nv_va_arg.create
call super::create
TriggerEvent( this, "constructor" )
end on

on nv_va_arg.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

