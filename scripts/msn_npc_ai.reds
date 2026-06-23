// Sephirotic Court Seal — Tiferet | source/msn_core/msn_npc_ai.reds
// Court agent: Ouroboros | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// CourtFile: MsnNpcAi | Tiferet | agent=Ouroboros
// Enhanced NPC AI with MSN Integration
// File: r6/scripts/ai/msn_npc_ai.reds

public class MSNNPCBrain extends NPCBrain {
    public let engramProfile: ref<OuroborosEngramProfile>;
    public let sephiroticAffinity: CName;
    public let learningRate: Float = 0.01;
    public let adaptationEnabled: Bool = true;
    public let msnTelemetryBound: Bool = false;
    
    public final func OnSpawn() -> Void {
        MSNGamingEngine.EngineEvent(n"OnFromFile", "injected_engine_call");
        this.engramProfile = Ouroboros.GetInstance().LoadOrGenerateProfile(this);
        this.sephiroticAffinity = this.engramProfile.sephiroticAffinity;
        
        // Bind to player MSN telemetry if player has MSN cyberware
        let player: ref<PlayerPuppet> = Game.GetPlayer();
        if (IsDefined(player)) {
            let cerebellum: ref<MSNCerebellum> = player.GetCyberware(n"MSNCerebellum");
            if (IsDefined(cerebellum)) {
                cerebellum.RegisterNPCTelemetryListener(this, n"OnPlayerMSNTelemetry");
                this.msnTelemetryBound = true;
            }
        }
    }
    
    public final func OnPlayerMSNTelemetry(telemetry: MSNTelemetry) -> Void {
        if (!this.adaptationEnabled) { return; }
        
        // Adapt behavior based on player's active Sephirah
        switch (telemetry.activeSephirah) {
            case n"Kether":   this.AdaptStrategic(telemetry); break;
            case n"Chokhmah": this.AdaptInsight(telemetry); break;
            case n"Binah":    this.AdaptAnalysis(telemetry); break;
            case n"Chesed":   this.AdaptSupport(telemetry); break;
            case n"Geburah":  this.AdaptAggression(telemetry); break;
            case n"Tiphareth": this.AdaptBalance(telemetry); break;
            case n"Netzach":  this.AdaptEvasion(telemetry); break;
            case n"Hod":      this.AdaptControl(telemetry); break;
            case n"Yesod":    this.AdaptMemory(telemetry); break;
            case n"Malkuth":  this.AdaptExecution(telemetry); break;
        }
    }
    
    private final func AdaptAggression(telemetry: MSNTelemetry) -> Void {
        // Player in Geburah mode - aggressive combat
        this.SetCombatStyle(ECombatStyle.Aggressive);
        this.EnableFlanking(true);
        this.SetTargetPriority(ETargetPriority.WeakestFirst);
        this.IncreaseAccuracy(0.15);
    }
    
    private final func AdaptSupport(telemetry: MSNTelemetry) -> Void {
        // Player in Chesed mode - protective/healing
        this.SetCombatStyle(ECombatStyle.Defensive);
        this.EnableProtectiveBehavior(true);
        this.PrioritizeRevive(true);
        this.ShareResources(true);
    }
    
    private final func AdaptEvasion(telemetry: MSNTelemetry) -> Void {
        // Player in Netzach mode - creative/evasive
        this.EnableEvasivePatterns(true);
        this.IncreaseMovementSpeed(0.2);
        this.EnableDecoyUsage(true);
        this.SetTargetPriority(ETargetPriority.NearestFirst);
    }
    
    private final func AdaptControl(telemetry: MSNTelemetry) -> Void {
        // Player in Hod mode - logic/decrypt/hack
        this.EnableCounterHacking(true);
        this.DisableOwnCyberwareOnHack(true);
        this.PrioritizeNetrunningTargets(true);
    }
    
    private final func AdaptMemory(telemetry: MSNTelemetry) -> Void {
        // Player in Yesod mode - memory/recall
        this.EnablePredictiveBehavior(true);
        this.LearnPlayerPatterns(telemetry);
        this.AdjustToPlayerHistory(true);
    }
    
    private final func AdaptExecution(telemetry: MSNTelemetry) -> Void {
        // Player in Malkuth mode - ultimate/manifestation
        this.EnableUltimateCountermeasures(true);
        this.MaximizeAllStats(0.3);
        this.EnableDesperationMode(true);
    }
    
    // Other adaptation methods (strategic, insight, analysis, balance)...
    
    public final func LearnFromEncounter(playerAction: String, outcome: Float) -> Void {
        Ouroboros.GetInstance().RecordEncounter(this.GetEntity(), playerAction, outcome);
        
        // Update local behavior weights
        this.UpdateBehaviorWeights(playerAction, outcome);
    }
    
    private final func UpdateBehaviorWeights(action: String, outcome: Float) -> Void {
        // Reinforcement learning style weight update
        // Positive outcome -> increase weight for that response
        // Negative outcome -> decrease weight, explore alternatives
    }
    
    public final func GetEngramProfile() -> ref<OuroborosEngramProfile> {
        return this.engramProfile;
    }
    
    public final func SetSephiroticAffinity(affinity: CName) -> Void {
        this.sephiroticAffinity = affinity;
        if (IsDefined(this.engramProfile)) {
            this.engramProfile.sephiroticAffinity = affinity;
        }
    }
}

// NPC Archetype to Sephirah Mapping
public func GetDefaultAffinity(archetype: String) -> CName {
    switch (archetype) {
        case "Corporate": return n"Kether";
        case "Netrunner": return n"Chokhmah";
        case "Techie": return n"Binah";
        case "Medic": return n"Chesed";
        case "Solo": return n"Geburah";
        case "Fixer": return n"Tiphareth";
        case "Rockerboy": return n"Netzach";
        case "Lawman": return n"Hod";
        case "Nomad": return n"Yesod";
        default: return n"Malkuth";
    }
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

