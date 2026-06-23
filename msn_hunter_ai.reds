// Sephirotic Court Seal — Netzach | source/msn_core/msn_hunter_ai.reds
// Court agent: Nyx | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
// CourtFile: MsnHunterAi | Netzach | agent=Nyx
module MSN.HunterAI

@wrapMethod(PreventionSystem)
protected final func OnHeatLevelChanged(heatStage: EPreventionHeatStage) -> Void {
    wrappedMethod(heatStage);
    
    // Spawn the elite Netwatch Boss when the player hits 4 stars
    if Equals(heatStage, EPreventionHeatStage.Heat_4) {
        this.SpawnNetwatchBoss();
    }
}

@addMethod(PreventionSystem)
private final func SpawnNetwatchBoss() -> Void {
    let player: ref<PlayerPuppet> = this.GetPlayer();
    if !IsDefined(player) {
        return;
    }
    
    let game: GameInstance = player.GetGame();
    let position: Vector4 = player.GetWorldPosition();
    let forward: Vector4 = player.GetWorldForward();
    
    // Spawn directly next to the player (3 meters in front)
    position.x += forward.x * 3.0;
    position.y += forward.y * 3.0;
    
    let spec: DynamicEntitySpec;
    // TweakDB ID for the custom elite Netwatch Boss
    spec.recordID = t"Character.MSN_Netwatch_Elite_Boss"; 
    spec.position = position;
    spec.orientation = player.GetWorldOrientation();
    spec.persistState = false;
    spec.persistSpawn = false;
    spec.alwaysSpawned = true;
    
    GameInstance.GetDynamicEntitySystem(game).CreateEntity(spec);
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

