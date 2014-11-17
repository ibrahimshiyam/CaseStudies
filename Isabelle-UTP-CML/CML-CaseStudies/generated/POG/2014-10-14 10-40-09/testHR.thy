theory testHR 
  imports utp_cml 
begin 

text {* Auto-generated THY file for testHR.cml *}

definition "T4 = \<parallel>@nat\<parallel>"
declare T4_def [eval,evalp]

definition "v1 = +|7 : @T4|+"
declare v1_def [eval,evalp]

cmlifun f1
  inp n1 :: "@T4" and n2 :: "@T4"
  out r :: "@T4"
  pre "(^n1^ > ^n2^)"
  post "(^r^ = (^n1^ + ^n2^))"


definition "ch2 = MkChanD ''ch2'' \<parallel>@nat\<parallel>"
declare ch2_def [eval,evalp]

locale proc2
begin
definition "a \<equiv> MkVarD ''a'' \<parallel>@T4\<parallel>"
declare a_def [cmlproc_defs]

cmleop op1
  inp t :: "@T4"
  out "()"
  pre "((^t^ / 5) < ^v1^)"
  is "a := ^t^"


cmleop IsabelleStateInit
  is "a := ^v1^"



cmlacts
  ACT = "(ch2!(3) -> call op1[4]) ; SKIP"

definition "state_inv = |($a) hasType @T4|"
declare state_inv_def [evalp]

definition "MainAction = ` call IsabelleStateInit[]; ACT`"
end

definition "EMP = \<parallel>@nat\<parallel>"
declare EMP_def [eval,evalp]

definition "EMPDETAIL = \<parallel>@nat\<parallel>"
declare EMPDETAIL_def [eval,evalp]

definition "hrstaff = \<parallel>@set of @nat\<parallel>"
declare hrstaff_def [eval,evalp]

definition "input = MkChanD ''input'' \<parallel>@nat\<parallel>"
declare input_def [eval,evalp]

definition "output = MkChanD ''output'' \<parallel>@int\<parallel>"
declare output_def [eval,evalp]

locale proc1
begin
definition "a \<equiv> MkVarD ''a'' \<parallel>@EMP\<parallel>"
declare a_def [cmlproc_defs]

cmlifun readme
  inp n1 :: "@EMP"
  out r :: "@EMPDETAIL"
  post "(^r^ = ^n1^)"


cmlifun showdetail
  inp r :: "@EMP"
  out s :: "@EMP"
  post "(^r^ = ^s^)"


cmleop op1
  inp t :: "@EMP"
  out "()"
  is "a := ^t^"


cmleop IsabelleStateInit
  is "a := 1"



cmlacts
  ACT = "(output!(3) -> call op1[4]) ; SKIP"

definition "state_inv = |($a) hasType @EMP|"
declare state_inv_def [evalp]

definition "MainAction = ` call IsabelleStateInit[]; ACT`"
end


end