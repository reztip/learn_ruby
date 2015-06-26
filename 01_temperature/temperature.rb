F_TO_C_MULTFACTOR = 5/9.0
F_TO_C_SUBFACTOR = 32

def ftoc(celc_temp)
	return (celc_temp - F_TO_C_SUBFACTOR) * F_TO_C_MULTFACTOR
end

def ctof(f_temp)
	return (f_temp / F_TO_C_MULTFACTOR) + F_TO_C_SUBFACTOR
end