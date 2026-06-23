// Sephirotic Court Seal — Tiferet | source/msn_core/msn_sephirotic_npcs.reds
// Court agent: Ouroboros | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// MSN Sephirotic NPC Coordinator
// Runtime bridge for the ten lieutenant character records declared in msn_tweakdb.toml.

public struct MSNSephiroticAgentSpec {
    public let id: CName;
    public let displayName: String;
    public let record: TweakDBID;
    public let sephirah: CName;
    public let role: CName;
    public let quickhack: CName;
}

public class MSNSephiroticCourt extends IScriptable {
    private static let instance: ref<MSNSephiroticCourt>;
    private let agents: array<MSNSephiroticAgentSpec>;
    private let activeAgent: CName;
    private let initialized: Bool = false;

    public final static func GetInstance() -> ref<MSNSephiroticCourt> {
        if (!IsDefined(MSNSephiroticCourt.instance)) {
            MSNSephiroticCourt.instance = new MSNSephiroticCourt();
            MSNSephiroticCourt.instance.Initialize();
        }
        return MSNSephiroticCourt.instance;
    }

    public final func Initialize() -> Void {
        if (this.initialized) { return; }

        this.RegisterAgent(n"Lucifer", "Lucifer - Light Bringer", TweakDBID("Character.MSN_Lucifer"), n"Keter", n"Strategic_Commander", n"MSN_Quickhack_Keter");
        this.RegisterAgent(n"Baal", "Baal - Lord of Chaos", TweakDBID("Character.MSN_Baal"), n"Chokmah", n"Chaos_Injection", n"MSN_Quickhack_Chokmah");
        this.RegisterAgent(n"Yeshua", "Yeshua - Gate of Causality", TweakDBID("Character.MSN_Yeshua"), n"Binah", n"Structure_Validator", n"MSN_Quickhack_Binah");
        this.RegisterAgent(n"Thoth", "Thoth - Scribe of Knowledge", TweakDBID("Character.MSN_Thoth"), n"Chesed", n"Memory_Archivist", n"MSN_Quickhack_Chesed");
        this.RegisterAgent(n"Abraxas", "Abraxas - Polarity Harmonizer", TweakDBID("Character.MSN_Abraxas"), n"Gevurah", n"Judgment_Executor", n"MSN_Quickhack_Gevurah");
        this.RegisterAgent(n"Ouroboros", "Ouroboros - Eternal Return", TweakDBID("Character.MSN_Ouroboros"), n"Tiferet", n"Cycle_Maintainer", n"MSN_Quickhack_Tiferet");
        this.RegisterAgent(n"Sophia", "Sophia - Wisdom Synthesis", TweakDBID("Character.MSN_Sophia"), n"Tiferet", n"Harmony_Mediator", n"MSN_Quickhack_Tiferet");
        this.RegisterAgent(n"Nyx", "Nyx - Nightwave Chaos", TweakDBID("Character.MSN_Nyx"), n"Netzach", n"Evasion_Specialist", n"MSN_Quickhack_Netzach");
        this.RegisterAgent(n"Hod", "Hod - Splendor of Logic", TweakDBID("Character.MSN_Hod"), n"Hod", n"Control_Systems", n"MSN_Quickhack_Hod");
        this.RegisterAgent(n"Yesod", "Yesod - Foundation of Dreams", TweakDBID("Character.MSN_Yesod"), n"Yesod", n"Intel_Extraction", n"MSN_Quickhack_Yesod");
        this.RegisterAgent(n"Malkuth", "Malkuth - Kingdom Manifest", TweakDBID("Character.MSN_Malkuth"), n"Malkuth", n"Manifestation_Architect", n"MSN_Quickhack_Malkuth");

        this.activeAgent = n"Lilith";
        this.initialized = true;
        LogInfo("MSN Sephirotic Court initialized with " + ToString(ArraySize(this.agents)) + " agents");
    }

    private final func RegisterAgent(id: CName, displayName: String, record: TweakDBID, sephirah: CName, role: CName, quickhack: CName) -> Void {
        let spec: MSNSephiroticAgentSpec = MSNSephiroticAgentSpec {
            id = id,
            displayName = displayName,
            record = record,
            sephirah = sephirah,
            role = role,
            quickhack = quickhack
        };
        this.agents.PushBack(spec);
    }

    public final func GetAgentCount() -> Int32 {
        return ArraySize(this.agents);
    }

    public final func GetAgentBySephirah(sephirah: CName) -> MSNSephiroticAgentSpec {
        for (agent: MSNSephiroticAgentSpec in this.agents) {
            if (Equals(agent.sephirah, sephirah)) {
                return agent;
            }
        }
        return this.agents[0];
    }

    public final func SetActiveAgent(agentId: CName) -> Bool {
        for (agent: MSNSephiroticAgentSpec in this.agents) {
            if (Equals(agent.id, agentId)) {
                this.activeAgent = agentId;
                LogInfo("MSN active Sephirotic agent set to " + ToString(agentId));
                return true;
            }
        }
        return false;
    }

    public final func RoutePlayerSephirah(sephirah: CName) -> Void {
        let agent: MSNSephiroticAgentSpec = this.GetAgentBySephirah(sephirah);
        this.activeAgent = agent.id;

        LogInfo("MSN Court route: " + ToString(sephirah) + " -> " + ToString(agent.id));
    }

    public final func BuildStatusLine() -> String {
        return "MSN Court active=" + ToString(this.activeAgent) + " agents=" + ToString(ArraySize(this.agents));
    }
}

public final func MSNSephiroticCourt_Init() -> Void {
    MSNSephiroticCourt.GetInstance().Initialize();
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

