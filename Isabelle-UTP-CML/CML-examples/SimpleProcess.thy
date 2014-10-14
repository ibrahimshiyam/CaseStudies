theory SimpleProcess
imports 
  "../utp_vdm"
begin

definition "a = MkChanD ''a'' \<parallel>@int\<parallel>"
definition "b = MkChanD ''b'' \<parallel>@int\<parallel>"

locale Simple
begin

definition "ACT1 = `a?(v) \<rightarrow> b!(&v * 2) \<rightarrow> SKIP`"
definition "ACT2 = `a!5 \<rightarrow> SKIP`"

(* Need to add channels as a separate type to the CML model to make this parse *)

definition "MainAction = `ACT1 [|{a\<down>,b\<down>}|] ACT2`"

end

end
