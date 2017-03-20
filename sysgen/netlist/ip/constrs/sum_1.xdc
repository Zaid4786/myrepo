set rateCesum_135 sum_1_default_clock_driver/clockdriver/pipelined_ce.ce_pipeline[0].ce_reg/has_latency.fd_array[1].reg_comp_1/fd_prim_array[0].rst_comp.fdre_comp
set rateCellssum_135 [get_cells -of [filter [all_fanout -flat -endpoints [get_pins $rateCesum_135/Q]] IS_ENABLE]]
set_multicycle_path -from $rateCellssum_135 -to $rateCellssum_135 -setup 35
set_multicycle_path -from $rateCellssum_135 -to $rateCellssum_135 -hold 34
