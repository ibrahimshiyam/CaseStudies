theory testHR_PO 
  imports utp_cml testHR
begin 

text {* Auto-generated THY file for proof obligations generated for testHR.cml *}

theorem (in proc1) poPOinv_actionClass361 [evalp]: "|(@state_inv) => (mk_st_nat(0, 0).x = mk_st_nat(0, 0).y)| = |true|" by (cml_auto_tac)

theorem (in proc1) poPOinv_actionClass362 [evalp]: "|(@state_inv) => (exists a : @st_nat @ (exists b : @st_nat @ (exists d : @nat @ (exists e : @nat @ (exists reg : @set of @nat @ ((^a^.x = ^a^.y)))))))| = |true|" 
apply (cml_auto_tac)
apply metis
apply (metis Nats_0)
apply metis
by metis

theorem (in proc1) poPOInit3 [evalp]: "|(@state_inv) => ((($a).x = ($a).y) => (($a).x = ($a).y))| = |true|" 
by (cml_auto_tac)


