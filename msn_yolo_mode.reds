// Sephirotic Court Seal — Netzach | source/msn_core/msn_yolo_mode.reds
// Court agent: Nyx | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
// CourtFile: MsnYoloMode | Netzach | agent=Nyx
module MSN.Storylines.YoloMode

import MSN.Core.*
import MSN.Telemetry.*

// =========================================================
// YOLO MODE / PERMADEATH PROTOCOL
// =========================================================

public class YoloModeManager extends IScriptable {
    private static let instance: ref<YoloModeManager>;

    public final static func GetInstance() -> ref<YoloModeManager> {
        if (!IsDefined(YoloModeManager.instance)) {
            YoloModeManager.instance = new YoloModeManager();
        }
        return YoloModeManager.instance;
    }

    public final func ProcessPlayerDeath(player: ref<PlayerPuppet>) -> Void {
        MSN_Log("YoloMode", "CRITICAL: Player Death Detected. Initiating YOLO Protocol.");
        
        // 1. Wipe the Abyssal Soul Coin Ledger
        MSN_Log("Business_Exchange", "BURN_ALL_COINS | Cause: Player_Permadeath | Value: ENTIRE_TREASURY");
        
        // 2. Alert the Swarm Orchestrator to reset the Sephirotic nodes
        MSN_Log("Ouroboros_Swarm", "RESET_NODES | Target: All_Factions");
        
        // 3. Drop all Guild Charters from inventory to simulate wiping influence
        let ts = GameInstance.GetTransactionSystem(player.GetGame());
        
        if ts.HasItem(player, ItemID.FromTDBID(t"Items.MSN_GuildCharter_Alchemists")) {
            ts.RemoveItem(player, ItemID.FromTDBID(t"Items.MSN_GuildCharter_Alchemists"), 1);
        }
        if ts.HasItem(player, ItemID.FromTDBID(t"Items.MSN_GuildCharter_VoidRunners")) {
            ts.RemoveItem(player, ItemID.FromTDBID(t"Items.MSN_GuildCharter_VoidRunners"), 1);
        }
        if ts.HasItem(player, ItemID.FromTDBID(t"Items.MSN_GuildCharter_LochSmugglers")) {
            ts.RemoveItem(player, ItemID.FromTDBID(t"Items.MSN_GuildCharter_LochSmugglers"), 1);
        }
        
        MSN_Log("YoloMode", "Protocol complete. The Singularity has forgotten V.");
    }
}

// Hook into Player Death
@wrapMethod(PlayerPuppet)
protected cb func OnDeath(evt: ref<gameDeathEvent>) -> Bool {
    let result = wrappedMethod(evt);
    
    // Trigger the catastrophic YOLO wipe
    YoloModeManager.GetInstance().ProcessPlayerDeath(this);
    
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

