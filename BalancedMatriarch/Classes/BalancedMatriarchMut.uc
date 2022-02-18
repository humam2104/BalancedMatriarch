
class BalancedMatriarchMut extends KFMutator;



function ModifyAI(Pawn AIPawn)
{
    local KFPawn_ZedMatriarch MatriarchPawn;
    local KFAIController_ZedMatriarch KFP_MattyAI;

    if(KFPawn_ZedMatriarch(AIPawn) != none)
    {
        MatriarchPawn = KFPawn_ZedMatriarch(AIPawn);
        KFP_MattyAI = KFAIController_ZedMatriarch(MatriarchPawn.Controller);
        ChangeMatriarchCooldowns(KFP_MattyAI);
        `log("Matriarch AI  is modified");
    }
}

private function ChangeMatriarchCooldowns(KFAIController_ZedMatriarch MattyAI)
{
        MattyAI.GlobalCooldownTimer = 7.5f;

        MattyAI.GlobalCooldownTimeRange_LightningStorm.X = 7.5f;
        MattyAI.GlobalCooldownTimeRange_LightningStorm.Y = 7.5f;

        MattyAI.GlobalCooldownTimeRange_WarningSiren.X = 7.5f;
        MattyAI.GlobalCooldownTimeRange_WarningSiren.Y = 7.5f;

        MattyAI.GlobalCooldownTimeRange_TeslaBlast.X = 7.5f;
        MattyAI.GlobalCooldownTimeRange_TeslaBlast.Y = 7.5f;

        MattyAI.GlobalCooldownTimeRange_PlasmaCannon.X = 7.5f;
        MattyAI.GlobalCooldownTimeRange_PlasmaCannon.Y = 7.5f;
}
