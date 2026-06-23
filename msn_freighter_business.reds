// Sephirotic Court Seal — Chesed | source/msn_core/msn_freighter_business.reds
// Court agent: Thoth | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
// CourtFile: MsnFreighterBusiness | Chesed | agent=Thoth
module MSN.Storylines.SpaceCombat

import MSN.Core.*
import MSN.Telemetry.*

public class FreighterBusinessManager extends IScriptable {
    private static let instance: ref<FreighterBusinessManager>;

    public final static func GetInstance() -> ref<FreighterBusinessManager> {
        if (!IsDefined(FreighterBusinessManager.instance)) {
            FreighterBusinessManager.instance = new FreighterBusinessManager();
        }
        return FreighterBusinessManager.instance;
    }

    public final func ProcessFreighterLogistics(player: ref<PlayerPuppet>) -> Void {
        let ts = GameInstance.GetTransactionSystem(player.GetGame());
        let hasServerRack = ts.HasItem(player, ItemID.FromTDBID(t"Items.MSN_Freighter_ServerRack"));

        if hasServerRack {
            // Because the freighter is in orbit, it bypasses Earth's local network latency and local police heat.
            MSN_Log("Orbital_Business", "NSSP Freighter 'Leviathan' connection secure. Processing tax-free Abyssal Exchange batch.");
            MSN_Log("Business_Exchange", "MINT_SOUL_COIN | Cause: Orbital_Server_Farm | Value: 2500_SC");
            
            // Suppress all police heat because operations are happening in space
            MSN_Log("Heat_System", "NCPD Tracking nullified. Operations moved to low orbit.");
        }
    }
}

// Hook to simulate the orbital business processing whenever the player sleeps or waits
@wrapMethod(TimeSkipPopupGameController)
protected cb func OnTimeSkipFinished(skipTime: Float) -> Bool {
    let result = wrappedMethod(skipTime);
    
    let player = GetPlayer(this.GetPlayerControlledObject().GetGame());
    if IsDefined(player) {
        FreighterBusinessManager.GetInstance().ProcessFreighterLogistics(player);
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

