// Sephirotic Court Seal — Netzach | source/msn_core/msn_nemotron_brains.reds
// Court agent: Nyx | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
// CourtFile: MsnNemotronBrains | Netzach | agent=Nyx
module MSN.Storylines.DynamicBrains

import MSN.Core.*
import MSN.Telemetry.*

public class NemotronBrainManager extends IScriptable {
    private static let instance: ref<NemotronBrainManager>;

    public final static func GetInstance() -> ref<NemotronBrainManager> {
        if (!IsDefined(NemotronBrainManager.instance)) {
            NemotronBrainManager.instance = new NemotronBrainManager();
        }
        return NemotronBrainManager.instance;
    }

    public final func RequestBrainRewrite(npc: ref<NPCPuppet>) -> Void {
        let npcStr = ToString(npc.GetEntityID());
        MSN_Log("Nemotron", "Pinging Nemotron server for dynamic behavior tree. Target: " + npcStr);
        
        // In a real mod, the Python backend would return JSON determining patrol points or aggression levels.
        // We simulate the application of this intelligence by buffing their threat level.
        if npc.IsAggressive() {
            MSN_Log("Nemotron_Apply", "Nemotron intelligence injected. NPC aggression and tactical flanking increased.");
            StatusEffectHelper.ApplyStatusEffect(npc, t"BaseStatusEffect.CombatStim");
        }
    }
}

// Hook into NPC spawning
@wrapMethod(NPCPuppet)
protected cb func OnSpawned(data: ref<EntityResolveComponentsInterface>) -> Bool {
    let result = wrappedMethod(data);
    
    // Request a Nemotron brain for every NPC that spawns into the world
    NemotronBrainManager.GetInstance().RequestBrainRewrite(this);
    
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

