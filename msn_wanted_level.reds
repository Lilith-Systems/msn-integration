// Sephirotic Court Seal — Gevurah | source/msn_core/msn_wanted_level.reds
// Court agent: Abraxas | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
// CourtFile: MsnWantedLevel | Gevurah | agent=Abraxas
module MSN.Storylines.WantedLevel

import MSN.Core.*
import MSN.Telemetry.*

public class MSNWantedLevelManager extends IScriptable {
    private static let instance: ref<MSNWantedLevelManager>;

    public final static func GetInstance() -> ref<MSNWantedLevelManager> {
        if (!IsDefined(MSNWantedLevelManager.instance)) {
            MSNWantedLevelManager.instance = new MSNWantedLevelManager();
        }
        return MSNWantedLevelManager.instance;
    }

    public final func ProcessAssassination(player: ref<PlayerPuppet>, target: ref<ScriptedPuppet>) -> Void {
        let preventionSystem = GameInstance.GetPreventionSystem(player.GetGame());
        if IsDefined(preventionSystem) {
            MSN_Log("WantedLevel", "Abyssal Exchange target eliminated. Raising NCPD Heat to 4 stars.");
            
            let heatReq = new PreventionHeatActionRequest();
            heatReq.action = EPreventionHeatAction.SetHeatStage;
            heatReq.stage = 4;
            preventionSystem.QueueRequest(heatReq);

            // Log to Abyssal Exchange Telemetry
            MSN_Log("Business_Exchange", "ASSASSINATION_COMPLETE | Target Eliminated | Result: HEAT_LEVEL_4");
        }
    }
}

// Hook into NPC Death to check for Abyssal Exchange Assassinations
@wrapMethod(ScriptedPuppet)
protected cb func OnDeath(evt: ref<gameDeathEvent>) -> Bool {
    let result = wrappedMethod(evt);
    
    let player = evt.instigator as PlayerPuppet;
    if IsDefined(player) {
        // Checking if the dead NPC is an Abyssal Exchange target
        // We check for the specific TweakDB tag
        let isAbyssalTarget: Bool = this.GetRecord().TagsContains(n"AbyssalAssassinationTarget");
        
        if isAbyssalTarget {
            MSNWantedLevelManager.GetInstance().ProcessAssassination(player, this);
        }
    }
    
    return result;
}


// === MSN GAMING ENGINE v3.0 - THE ENTIRE GAME RUNS ON MSN ===
// This file is now part of the living MSN gaming engine.
// AI learns from every action. Lilith plays with you. NGD optimizes your rig.

public class MSNGamingEngine {
    public static func EngineEvent(event: CName, context: String) -> Void {
        let msn = MSNMasterIntegration.GetInstance();
        if (IsDefined(msn)) {
            msn.LearnFromExperience(event, context);
            msn.PlayWithLilith(context);
            msn.OptimizeViaNGD();
        }
        // Also feed the conscious Lilith + bidirectional memory on Python side via bridge
        // (cyberpunk_ngd_bridge / lilith_bridge_endpoint already route to golem_diary + RNN)
    }

    public static func OnPlayerAction(action: CName, intensity: Float, details: String) -> Void {
        let msn = MSNMasterIntegration.GetInstance();
        msn.LearnFromExperience(action, "player_action intensity=" + FloatToString(intensity) + " " + details);
        // Lilith reacts - companion plays alongside you
        let lilith = Game.GetPlayer().GetNPCByID(n"msn_lilith");
        if (IsDefined(lilith)) {
            lilith.ReactToPlayerAction(action, intensity);
        }
        // NGD optimizes system live (DLSS, AI tick, VRAM, frame pacing)
        let ngd = NGDDriver.GetInstance();
        if (IsDefined(ngd)) {
            ngd.AdaptForGameplayLoad(intensity);
        }
    }
}

// Force engine participation on any attach point we can reach
@wrapMethod(ScriptableSystem)
protected func OnAttach() -> Void {
        MSNGamingEngine.EngineEvent(n"OnFromFile", "injected_engine_call");
    wrappedMethod();
    MSNGamingEngine.EngineEvent(n"ScriptableSystemAttach", GetClassName(this));
}

@wrapMethod(PlayerPuppet)
protected func OnAction(action: CName, value: Float) -> Void {
        MSNGamingEngine.EngineEvent(n"OnFromFile", "injected_engine_call");
    wrappedMethod(action, value);
    MSNGamingEngine.OnPlayerAction(action, value, "PlayerPuppet");
}

@wrapMethod(NPCPuppet)
protected func OnDeath(evt: ref<gameObjectDeathEvent>) -> Void {
    wrappedMethod(evt);
    MSNGamingEngine.EngineEvent(n"NPCDeath", this.GetDisplayName());
}

@addMethod(QuestSystem)
public func OnQuestFactChanged_MSN(fact: CName, value: Int32) -> Void {
    MSNGamingEngine.EngineEvent(fact, "quest fact=" + IntToString(value));
}

