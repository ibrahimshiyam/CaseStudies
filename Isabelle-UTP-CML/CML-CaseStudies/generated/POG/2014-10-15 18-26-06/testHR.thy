theory testHR 
  imports utp_cml 
begin 

text {* Auto-generated THY file for testHR.cml *}

definition "EMP = \<parallel>@nat\<parallel>"
declare EMP_def [eval,evalp]

definition "EMPDETAIL = \<parallel>@nat\<parallel>"
declare EMPDETAIL_def [eval,evalp]

definition "response = \<parallel>@bool\<parallel>"
declare response_def [eval,evalp]

typedef st_nat_Tag = "{True}" by auto 
instantiation st_nat_Tag :: tag
begin 
definition "tagName_st_nat_Tag (x::st_nat_Tag) = ''st_nat''" 
instance  
by (intro_classes, metis (full_types) Abs_st_nat_Tag_cases singleton_iff) 
end 

abbreviation"maxty_st_nat\<equiv> RecMaximalType \<parallel>@nat*@nat\<parallel> TYPE(st_nat_Tag)"
abbreviation"x_fld \<equiv> MkField maxty_st_nat#[1] \<parallel>@nat\<parallel>"
abbreviation"y_fld \<equiv> MkField maxty_st_nat#[2] \<parallel>@nat\<parallel>"

abbreviation"x \<equiv> SelectRec x_fld"
abbreviation"y \<equiv> SelectRec y_fld"



definition
"st_nat \<equiv>\<parallel>@maxty_st_nat\<parallel>"
declare st_nat_def [eval,evalp]

definition "mk_st_nat\<equiv>MkRec st_nat"
declare mk_st_nat_def [eval,evalp]

definition "input = MkChanD ''input'' \<parallel>@nat\<parallel>"
declare input_def [eval,evalp]

definition "output = MkChanD ''output'' \<parallel>@int\<parallel>"
declare output_def [eval,evalp]

locale proc1
begin
definition "a \<equiv> MkVarD ''a'' \<parallel>@st_nat\<parallel>"
declare a_def [cmlproc_defs]

definition "inv_actionClass36 = |(($a).x = ($a).y)|"
declare inv_actionClass36_def [evalp]


definition "b \<equiv> MkVarD ''b'' \<parallel>@st_nat\<parallel>"
declare b_def [cmlproc_defs]

definition "d \<equiv> MkVarD ''d'' \<parallel>@nat\<parallel>"
declare d_def [cmlproc_defs]

definition "e \<equiv> MkVarD ''e'' \<parallel>@nat\<parallel>"
declare e_def [cmlproc_defs]

definition "reg \<equiv> MkVarD ''reg'' \<parallel>@set of @nat\<parallel>"
declare reg_def [cmlproc_defs]

cmlefun pred1
  inp a :: "@st_nat"
  out "@bool"
  is "(^a^.x = 1)"


cmlefun pred2
  inp b :: "@st_nat"
  out "@bool"
  is "(^b^.x = 1)"


cmleop Init
  out "()"
  is "reg := {}"


cmleop IsabelleStateInit
  is "a := mk_st_nat(0, 0); b := mk_st_nat(0, 0); d := 1; e := 1; reg := {0, 1}"



cmlacts
  ACT = "(output!(3) -> SKIP) ; SKIP"

definition "state_inv = |($a) hasType @st_nat and ($b) hasType @st_nat and ($d) hasType @nat and ($e) hasType @nat and ($reg) hasType @set of @nat and (@inv_actionClass36)|"
declare state_inv_def [evalp]

definition "MainAction = ` call IsabelleStateInit[]; ACT`"
end


end