theory testHR_PO 
  imports utp_cml testHR
begin 

text {* Auto-generated THY file for proof obligations generated for testHR.cml *}

theorem (in proc1) poPOinv_actionClass2641 [evalp]: "|(@state_inv) => ((mk_st_nat(0, 0).x = mk_st_nat(0, 0).y) and (mk_st_nat(0, 0).x = mk_st_nat(0, 0).y))| = |true|" 
by (cml_auto_tac)

theorem (in proc1) poPOinv_actionClass2642 [evalp]: "|(@state_inv) => (exists a : @st_nat @ (exists b : @st_nat @ (exists d : @nat @ (exists e : @nat @ (exists reg : @set of @nat @ (exists pred1 : @set of @st_nat @ ((^a^.x = ^a^.y))))))))| = |true|" 
apply (cml_auto_tac)
apply metis
apply (metis Nats_0)
apply metis
apply metis
apply (metis st_nat_def)
done

theorem (in proc1) poPOinv_actionClass2643 [evalp]: "|(@state_inv) => ((mk_st_nat(0, 0).x = mk_st_nat(0, 0).y) and (mk_st_nat(0, 0).x = mk_st_nat(0, 0).y))| = |true|" 
by (cml_auto_tac)

theorem (in proc1) poPOinv_actionClass2644 [evalp]: "|(@state_inv) => (exists a : @st_nat @ (exists b : @st_nat @ (exists d : @nat @ (exists e : @nat @ (exists reg : @set of @nat @ (exists pred1 : @set of @st_nat @ ((^a^.x = ^a^.y))))))))| = |true|" 
apply (cml_auto_tac)
apply (cml_auto_tac)
apply (metis Nats_0)
apply metis
apply metis
apply (metis st_nat_def)
done

theorem (in proc1) poPOInit5 [evalp]: "|(@state_inv) => (((($a).x = ($a).y) and (($a).x = ($a).y)) => ((($a).x = ($a).y) and (($a).x = ($a).y)))| = |true|" 
by (cml_auto_tac)

theorem (in proc1) poPOLIFT6 [evalp]: "|(@state_inv) => (forall v1 : @st_nat @ ((((($a).x = ($a).y) and (($a).x = ($a).y)) => ((($a).x = ($a).y) and (($a).x = ($a).y)))))| = |true|" 
by (cml_auto_tac)



end