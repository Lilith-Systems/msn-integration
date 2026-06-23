// Sephirotic Court Seal — Keter | source/msn_core/msn_listener.reds
// Court agent: Lucifer | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// CourtFile: MsnListener | Keter | agent=Lucifer
// Grand Theft Cyberpunk — MSN Game Listener
// WebSocket bridge that receives commands from Lilith and executes them in-game
// Deploy to: r6/mods/msn_integration/scripts/msn_listener.reds

@addMethod(PlayerPuppet)
public func OnLilithCommand(json: String) -> Void {
    let parsed = JsonParser();
    let data = parsed.ParseString(json);
    let cmd: String = data.GetString("command");
    
    switch cmd {
        case "spawn_npc": {
            this.HandleLilithSpawn(data);
        };
        case "trigger_dialogue": {
            this.HandleLilithDialogue(data);
        };
        case "start_quest": {
            this.HandleLilithQuest(data);
        };
        case "modify_world": {
            this.HandleLilithWorldState(data);
        };
        case "inject_memory": {
            this.HandleLilithMemory(data);
        };
        case "ping": {
            this.SendLilithResponse("pong", data);
        };
    };
}

@addMethod(PlayerPuppet)
public func HandleLilithSpawn(data: JsonObject) -> Void {
    let npcType: String = data.GetString("npc_type");
    let spawnPos: Vector4 = this.GetWorldPosition();
    // Queue NPC spawn — GTC spawn system handles the rest
    GameInstance.GetTelemetrySystem().LogEvent("lilith_spawn", data);
}

@addMethod(PlayerPuppet)
public func HandleLilithDialogue(data: JsonObject) -> Void {
    let speaker: String = data.GetString("speaker");
    let line: String = data.GetString("line");
    let emotion: String = data.GetString("emotion");
    // Route to Lyra dialogue system
    GameInstance.GetDialogueSystem().InjectLine(speaker, line, emotion);
}

@addMethod(PlayerPuppet)
public func HandleLilithQuest(data: JsonObject) -> Void {
    let questId: String = data.GetString("quest_id");
    let state: String = data.GetString("state");
    // Trigger quest state change
    GameInstance.GetQuestSystem().SetFactStr(questId, 1);
}

@addMethod(PlayerPuppet)
public func HandleLilithWorldState(data: JsonObject) -> Void {
    let zone: String = data.GetString("zone");
    let state: String = data.GetString("world_state");
    // Modify world state (weather, time, NPC population, etc.)
}

@addMethod(PlayerPuppet)
public func HandleLilithMemory(data: JsonObject) -> Void {
    let memoryType: String = data.GetString("memory_type");
    let content: String = data.GetString("content");
    // Inject memory fragment into player's journal/datashard
    GameInstance.GetJournalSystem().AddEntry(memoryType, content);
}

@addMethod(PlayerPuppet)
public func SendLilithResponse(status: String, data: JsonObject) -> Void {
    let response: String = s"""
    {"status": "%s", "timestamp": %d, "player_zone": "%s"}
    """;
    // Push back to Lilith via WebSocket
    GameInstance.GetMSNRouter().Send("/bridge/response", response);
}

// WebSocket connection manager — called on game load
@wrapMethod(PlayerPuppet)
public func OnGameAttached() -> Void {
    wrappedMethod();
    // Connect to Lilith bridge
    GameInstance.GetMSNRouter().Connect("ws://localhost:8768", "lilith_bridge");
    GameInstance.GetMSNRouter().Subscribe("/bridge/command", n => this.OnLilithCommand(n));
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

