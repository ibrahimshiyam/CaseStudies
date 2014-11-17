theory testHR_PO 
  imports utp_cml testHR
begin 

text {* Auto-generated THY file for proof obligations generated for testHR.cml *}

theorem poPO1 [evalp]: "|(forall n1 : @T4 @ (forall n2 : @T4 @ ((pre_f1(^n1^, ^n2^) => (exists r : @T4 @ (post_f1(^n1^, ^n2^, ^r^)))))))| = |true|" by (cml_auto_tac)

theorem (in proc1) poPOreadme2 [evalp]: "|(@state_inv) => (forall n1 : @EMP @ ((exists r : @EMPDETAIL @ (post_readme(^n1^, ^r^)))))| = |true|" by (cml_auto_tac)

theorem (in proc1) poPOshowdetail3 [evalp]: "|(@state_inv) => (forall r : @EMP @ ((exists s : @EMP @ (post_showdetail(^r^, ^s^)))))| = |true|" by (cml_auto_tac)


end