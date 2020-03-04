/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_10164(char*, char *);
extern void execute_10165(char*, char *);
extern void execute_14(char*, char *);
extern void execute_15(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_20(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_312(char*, char *);
extern void execute_313(char*, char *);
extern void execute_314(char*, char *);
extern void execute_315(char*, char *);
extern void execute_316(char*, char *);
extern void execute_317(char*, char *);
extern void execute_318(char*, char *);
extern void execute_319(char*, char *);
extern void execute_320(char*, char *);
extern void execute_321(char*, char *);
extern void execute_322(char*, char *);
extern void execute_323(char*, char *);
extern void execute_324(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_327(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_267(char*, char *);
extern void execute_268(char*, char *);
extern void execute_270(char*, char *);
extern void execute_271(char*, char *);
extern void execute_273(char*, char *);
extern void execute_274(char*, char *);
extern void execute_276(char*, char *);
extern void execute_277(char*, char *);
extern void execute_279(char*, char *);
extern void execute_280(char*, char *);
extern void execute_282(char*, char *);
extern void execute_283(char*, char *);
extern void execute_285(char*, char *);
extern void execute_286(char*, char *);
extern void execute_288(char*, char *);
extern void execute_289(char*, char *);
extern void execute_291(char*, char *);
extern void execute_292(char*, char *);
extern void execute_294(char*, char *);
extern void execute_295(char*, char *);
extern void execute_297(char*, char *);
extern void execute_298(char*, char *);
extern void execute_300(char*, char *);
extern void execute_301(char*, char *);
extern void execute_303(char*, char *);
extern void execute_304(char*, char *);
extern void execute_306(char*, char *);
extern void execute_307(char*, char *);
extern void execute_309(char*, char *);
extern void execute_310(char*, char *);
extern void execute_329(char*, char *);
extern void execute_653(char*, char *);
extern void execute_654(char*, char *);
extern void execute_655(char*, char *);
extern void execute_656(char*, char *);
extern void execute_657(char*, char *);
extern void execute_658(char*, char *);
extern void execute_659(char*, char *);
extern void execute_660(char*, char *);
extern void execute_661(char*, char *);
extern void execute_662(char*, char *);
extern void execute_663(char*, char *);
extern void execute_664(char*, char *);
extern void execute_665(char*, char *);
extern void execute_666(char*, char *);
extern void execute_667(char*, char *);
extern void execute_668(char*, char *);
extern void execute_573(char*, char *);
extern void execute_574(char*, char *);
extern void execute_575(char*, char *);
extern void execute_576(char*, char *);
extern void execute_578(char*, char *);
extern void execute_579(char*, char *);
extern void execute_580(char*, char *);
extern void execute_581(char*, char *);
extern void execute_583(char*, char *);
extern void execute_584(char*, char *);
extern void execute_585(char*, char *);
extern void execute_586(char*, char *);
extern void execute_588(char*, char *);
extern void execute_589(char*, char *);
extern void execute_590(char*, char *);
extern void execute_591(char*, char *);
extern void execute_593(char*, char *);
extern void execute_594(char*, char *);
extern void execute_595(char*, char *);
extern void execute_596(char*, char *);
extern void execute_598(char*, char *);
extern void execute_599(char*, char *);
extern void execute_600(char*, char *);
extern void execute_601(char*, char *);
extern void execute_603(char*, char *);
extern void execute_604(char*, char *);
extern void execute_605(char*, char *);
extern void execute_606(char*, char *);
extern void execute_608(char*, char *);
extern void execute_609(char*, char *);
extern void execute_610(char*, char *);
extern void execute_611(char*, char *);
extern void execute_613(char*, char *);
extern void execute_614(char*, char *);
extern void execute_615(char*, char *);
extern void execute_616(char*, char *);
extern void execute_618(char*, char *);
extern void execute_619(char*, char *);
extern void execute_620(char*, char *);
extern void execute_621(char*, char *);
extern void execute_623(char*, char *);
extern void execute_624(char*, char *);
extern void execute_625(char*, char *);
extern void execute_626(char*, char *);
extern void execute_628(char*, char *);
extern void execute_629(char*, char *);
extern void execute_630(char*, char *);
extern void execute_631(char*, char *);
extern void execute_633(char*, char *);
extern void execute_634(char*, char *);
extern void execute_635(char*, char *);
extern void execute_636(char*, char *);
extern void execute_638(char*, char *);
extern void execute_639(char*, char *);
extern void execute_640(char*, char *);
extern void execute_641(char*, char *);
extern void execute_643(char*, char *);
extern void execute_644(char*, char *);
extern void execute_645(char*, char *);
extern void execute_646(char*, char *);
extern void execute_648(char*, char *);
extern void execute_649(char*, char *);
extern void execute_650(char*, char *);
extern void execute_651(char*, char *);
extern void execute_670(char*, char *);
extern void execute_671(char*, char *);
extern void execute_672(char*, char *);
extern void execute_673(char*, char *);
extern void execute_674(char*, char *);
extern void execute_675(char*, char *);
extern void execute_676(char*, char *);
extern void execute_677(char*, char *);
extern void execute_678(char*, char *);
extern void execute_679(char*, char *);
extern void execute_741(char*, char *);
extern void execute_742(char*, char *);
extern void execute_744(char*, char *);
extern void execute_745(char*, char *);
extern void execute_746(char*, char *);
extern void execute_752(char*, char *);
extern void execute_753(char*, char *);
extern void execute_754(char*, char *);
extern void execute_755(char*, char *);
extern void execute_756(char*, char *);
extern void execute_1178(char*, char *);
extern void execute_1599(char*, char *);
extern void execute_2020(char*, char *);
extern void execute_2441(char*, char *);
extern void execute_2862(char*, char *);
extern void execute_3283(char*, char *);
extern void execute_3704(char*, char *);
extern void execute_4125(char*, char *);
extern void execute_4546(char*, char *);
extern void execute_4967(char*, char *);
extern void execute_4968(char*, char *);
extern void execute_4969(char*, char *);
extern void execute_4970(char*, char *);
extern void execute_4971(char*, char *);
extern void execute_4972(char*, char *);
extern void execute_4973(char*, char *);
extern void execute_4974(char*, char *);
extern void execute_4975(char*, char *);
extern void execute_4976(char*, char *);
extern void execute_4977(char*, char *);
extern void execute_759(char*, char *);
extern void execute_760(char*, char *);
extern void execute_761(char*, char *);
extern void execute_762(char*, char *);
extern void execute_763(char*, char *);
extern void execute_1172(char*, char *);
extern void execute_1173(char*, char *);
extern void execute_1174(char*, char *);
extern void execute_1175(char*, char *);
extern void execute_1176(char*, char *);
extern void execute_1177(char*, char *);
extern void execute_775(char*, char *);
extern void execute_776(char*, char *);
extern void execute_853(char*, char *);
extern void execute_865(char*, char *);
extern void execute_766(char*, char *);
extern void execute_767(char*, char *);
extern void execute_768(char*, char *);
extern void execute_769(char*, char *);
extern void execute_770(char*, char *);
extern void execute_771(char*, char *);
extern void execute_772(char*, char *);
extern void execute_773(char*, char *);
extern void execute_774(char*, char *);
extern void execute_778(char*, char *);
extern void execute_779(char*, char *);
extern void execute_780(char*, char *);
extern void execute_781(char*, char *);
extern void execute_798(char*, char *);
extern void execute_784(char*, char *);
extern void execute_785(char*, char *);
extern void execute_796(char*, char *);
extern void execute_797(char*, char *);
extern void execute_800(char*, char *);
extern void execute_801(char*, char *);
extern void execute_802(char*, char *);
extern void execute_803(char*, char *);
extern void execute_804(char*, char *);
extern void execute_805(char*, char *);
extern void execute_806(char*, char *);
extern void execute_807(char*, char *);
extern void execute_808(char*, char *);
extern void execute_815(char*, char *);
extern void execute_816(char*, char *);
extern void execute_817(char*, char *);
extern void execute_818(char*, char *);
extern void execute_855(char*, char *);
extern void execute_856(char*, char *);
extern void execute_857(char*, char *);
extern void execute_858(char*, char *);
extern void execute_859(char*, char *);
extern void execute_860(char*, char *);
extern void execute_861(char*, char *);
extern void execute_862(char*, char *);
extern void execute_864(char*, char *);
extern void execute_4980(char*, char *);
extern void execute_4981(char*, char *);
extern void execute_4982(char*, char *);
extern void execute_4983(char*, char *);
extern void execute_4984(char*, char *);
extern void execute_4985(char*, char *);
extern void execute_4986(char*, char *);
extern void execute_4987(char*, char *);
extern void execute_4988(char*, char *);
extern void execute_4989(char*, char *);
extern void execute_4990(char*, char *);
extern void execute_4991(char*, char *);
extern void execute_4992(char*, char *);
extern void execute_4993(char*, char *);
extern void execute_4994(char*, char *);
extern void execute_4995(char*, char *);
extern void execute_4996(char*, char *);
extern void execute_5011(char*, char *);
extern void execute_5012(char*, char *);
extern void execute_5089(char*, char *);
extern void execute_5099(char*, char *);
extern void execute_5000(char*, char *);
extern void execute_6631(char*, char *);
extern void execute_10159(char*, char *);
extern void execute_8297(char*, char *);
extern void execute_8307(char*, char *);
extern void execute_8335(char*, char *);
extern void execute_8345(char*, char *);
extern void execute_8355(char*, char *);
extern void execute_8374(char*, char *);
extern void execute_8402(char*, char *);
extern void execute_8403(char*, char *);
extern void execute_8289(char*, char *);
extern void execute_8290(char*, char *);
extern void execute_8291(char*, char *);
extern void execute_8292(char*, char *);
extern void execute_8293(char*, char *);
extern void execute_8294(char*, char *);
extern void execute_8295(char*, char *);
extern void execute_8296(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_5(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[278] = {(funcp)execute_10164, (funcp)execute_10165, (funcp)execute_14, (funcp)execute_15, (funcp)execute_16, (funcp)execute_17, (funcp)execute_18, (funcp)execute_20, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_35, (funcp)execute_312, (funcp)execute_313, (funcp)execute_314, (funcp)execute_315, (funcp)execute_316, (funcp)execute_317, (funcp)execute_318, (funcp)execute_319, (funcp)execute_320, (funcp)execute_321, (funcp)execute_322, (funcp)execute_323, (funcp)execute_324, (funcp)execute_325, (funcp)execute_326, (funcp)execute_327, (funcp)execute_264, (funcp)execute_265, (funcp)execute_267, (funcp)execute_268, (funcp)execute_270, (funcp)execute_271, (funcp)execute_273, (funcp)execute_274, (funcp)execute_276, (funcp)execute_277, (funcp)execute_279, (funcp)execute_280, (funcp)execute_282, (funcp)execute_283, (funcp)execute_285, (funcp)execute_286, (funcp)execute_288, (funcp)execute_289, (funcp)execute_291, (funcp)execute_292, (funcp)execute_294, (funcp)execute_295, (funcp)execute_297, (funcp)execute_298, (funcp)execute_300, (funcp)execute_301, (funcp)execute_303, (funcp)execute_304, (funcp)execute_306, (funcp)execute_307, (funcp)execute_309, (funcp)execute_310, (funcp)execute_329, (funcp)execute_653, (funcp)execute_654, (funcp)execute_655, (funcp)execute_656, (funcp)execute_657, (funcp)execute_658, (funcp)execute_659, (funcp)execute_660, (funcp)execute_661, (funcp)execute_662, (funcp)execute_663, (funcp)execute_664, (funcp)execute_665, (funcp)execute_666, (funcp)execute_667, (funcp)execute_668, (funcp)execute_573, (funcp)execute_574, (funcp)execute_575, (funcp)execute_576, (funcp)execute_578, (funcp)execute_579, (funcp)execute_580, (funcp)execute_581, (funcp)execute_583, (funcp)execute_584, (funcp)execute_585, (funcp)execute_586, (funcp)execute_588, (funcp)execute_589, (funcp)execute_590, (funcp)execute_591, (funcp)execute_593, (funcp)execute_594, (funcp)execute_595, (funcp)execute_596, (funcp)execute_598, (funcp)execute_599, (funcp)execute_600, (funcp)execute_601, (funcp)execute_603, (funcp)execute_604, (funcp)execute_605, (funcp)execute_606, (funcp)execute_608, (funcp)execute_609, (funcp)execute_610, (funcp)execute_611, (funcp)execute_613, (funcp)execute_614, (funcp)execute_615, (funcp)execute_616, (funcp)execute_618, (funcp)execute_619, (funcp)execute_620, (funcp)execute_621, (funcp)execute_623, (funcp)execute_624, (funcp)execute_625, (funcp)execute_626, (funcp)execute_628, (funcp)execute_629, (funcp)execute_630, (funcp)execute_631, (funcp)execute_633, (funcp)execute_634, (funcp)execute_635, (funcp)execute_636, (funcp)execute_638, (funcp)execute_639, (funcp)execute_640, (funcp)execute_641, (funcp)execute_643, (funcp)execute_644, (funcp)execute_645, (funcp)execute_646, (funcp)execute_648, (funcp)execute_649, (funcp)execute_650, (funcp)execute_651, (funcp)execute_670, (funcp)execute_671, (funcp)execute_672, (funcp)execute_673, (funcp)execute_674, (funcp)execute_675, (funcp)execute_676, (funcp)execute_677, (funcp)execute_678, (funcp)execute_679, (funcp)execute_741, (funcp)execute_742, (funcp)execute_744, (funcp)execute_745, (funcp)execute_746, (funcp)execute_752, (funcp)execute_753, (funcp)execute_754, (funcp)execute_755, (funcp)execute_756, (funcp)execute_1178, (funcp)execute_1599, (funcp)execute_2020, (funcp)execute_2441, (funcp)execute_2862, (funcp)execute_3283, (funcp)execute_3704, (funcp)execute_4125, (funcp)execute_4546, (funcp)execute_4967, (funcp)execute_4968, (funcp)execute_4969, (funcp)execute_4970, (funcp)execute_4971, (funcp)execute_4972, (funcp)execute_4973, (funcp)execute_4974, (funcp)execute_4975, (funcp)execute_4976, (funcp)execute_4977, (funcp)execute_759, (funcp)execute_760, (funcp)execute_761, (funcp)execute_762, (funcp)execute_763, (funcp)execute_1172, (funcp)execute_1173, (funcp)execute_1174, (funcp)execute_1175, (funcp)execute_1176, (funcp)execute_1177, (funcp)execute_775, (funcp)execute_776, (funcp)execute_853, (funcp)execute_865, (funcp)execute_766, (funcp)execute_767, (funcp)execute_768, (funcp)execute_769, (funcp)execute_770, (funcp)execute_771, (funcp)execute_772, (funcp)execute_773, (funcp)execute_774, (funcp)execute_778, (funcp)execute_779, (funcp)execute_780, (funcp)execute_781, (funcp)execute_798, (funcp)execute_784, (funcp)execute_785, (funcp)execute_796, (funcp)execute_797, (funcp)execute_800, (funcp)execute_801, (funcp)execute_802, (funcp)execute_803, (funcp)execute_804, (funcp)execute_805, (funcp)execute_806, (funcp)execute_807, (funcp)execute_808, (funcp)execute_815, (funcp)execute_816, (funcp)execute_817, (funcp)execute_818, (funcp)execute_855, (funcp)execute_856, (funcp)execute_857, (funcp)execute_858, (funcp)execute_859, (funcp)execute_860, (funcp)execute_861, (funcp)execute_862, (funcp)execute_864, (funcp)execute_4980, (funcp)execute_4981, (funcp)execute_4982, (funcp)execute_4983, (funcp)execute_4984, (funcp)execute_4985, (funcp)execute_4986, (funcp)execute_4987, (funcp)execute_4988, (funcp)execute_4989, (funcp)execute_4990, (funcp)execute_4991, (funcp)execute_4992, (funcp)execute_4993, (funcp)execute_4994, (funcp)execute_4995, (funcp)execute_4996, (funcp)execute_5011, (funcp)execute_5012, (funcp)execute_5089, (funcp)execute_5099, (funcp)execute_5000, (funcp)execute_6631, (funcp)execute_10159, (funcp)execute_8297, (funcp)execute_8307, (funcp)execute_8335, (funcp)execute_8345, (funcp)execute_8355, (funcp)execute_8374, (funcp)execute_8402, (funcp)execute_8403, (funcp)execute_8289, (funcp)execute_8290, (funcp)execute_8291, (funcp)execute_8292, (funcp)execute_8293, (funcp)execute_8294, (funcp)execute_8295, (funcp)execute_8296, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_5};
const int NumRelocateId= 278;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/AEStb_behav/xsim.reloc",  (void **)funcTab, 278);
	iki_vhdl_file_variable_register(dp + 882272);
	iki_vhdl_file_variable_register(dp + 882328);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/AEStb_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/AEStb_behav/xsim.reloc");

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/AEStb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/AEStb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/AEStb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
