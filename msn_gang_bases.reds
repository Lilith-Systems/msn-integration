// Sephirotic Court Seal — Gevurah | source/msn_core/msn_gang_bases.reds
// Court agent: Abraxas | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
// CourtFile: MsnGangBases | Gevurah | agent=Abraxas
module MSN.GangBases

public class AbyssalMiningRigNode {
    public let position: Vector4;
    public let rigSpawned: Bool;
    public let nodeID: String;
    
    public func Initialize(pos: Vector4, id: String) {
        this.position = pos;
        this.nodeID = id;
        this.rigSpawned = false;
    }
}

public class MSNGangBaseSystem extends ScriptableSystem {
    private let m_nodes: array<ref<AbyssalMiningRigNode>>;
    private let m_player: wref<PlayerPuppet>;
    private let m_activationDistance: Float;
    private let m_updateTimer: Float;
    
    private func OnAttach() -> Void {
        MSNGamingEngine.EngineEvent(n"OnFromFile", "injected_engine_call");
        this.m_activationDistance = 25.0; // Distance to spawn rig
        this.m_updateTimer = 0.0;
        this.InitializeNodes();
    }
    
    private func InitializeNodes() -> Void {
        // Badlands coordinates
        let node1 = new AbyssalMiningRigNode();
        node1.Initialize(new Vector4(1500.0, -1200.0, 150.0, 1.0), "Rig_Badlands_Alpha");
        ArrayPush(this.m_nodes, node1);
        
        // Pacifica coordinates
        let node2 = new AbyssalMiningRigNode();
        node2.Initialize(new Vector4(-2100.0, -2400.0, 20.0, 1.0), "Rig_Pacifica_Omega");
        ArrayPush(this.m_nodes, node2);
        
        // City Center coordinates
        let node3 = new AbyssalMiningRigNode();
        node3.Initialize(new Vector4(-100.0, 100.0, 35.0, 1.0), "Rig_CityCenter_Nexus");
        ArrayPush(this.m_nodes, node3);
    }
    
    public final func RegisterPlayer(player: ref<PlayerPuppet>) -> Void {
        this.m_player = player;
    }
    
    public final func IsPlayerRegistered() -> Bool {
        return IsDefined(this.m_player);
    }
    
    public final func OnPlayerUpdate(dt: Float, playerPos: Vector4) -> Void {
        this.m_updateTimer += dt;
        if this.m_updateTimer < 1.0 { // Throttle: Check every 1 second
            return;
        }
        this.m_updateTimer = 0.0;
        
        let i: Int32 = 0;
        let dist: Float;
        
        while i < ArraySize(this.m_nodes) {
            let node = this.m_nodes[i];
            
            if !node.rigSpawned {
                dist = Vector4.Distance(playerPos, node.position);
                
                if dist <= this.m_activationDistance {
                    this.SpawnAbyssalMiningRig(node);
                }
            }
            i += 1;
        }
    }
    
    private final func SpawnAbyssalMiningRig(node: ref<AbyssalMiningRigNode>) -> Void {
        let spawnTransform: Transform;
        Transform.SetPosition(spawnTransform, node.position);
        
        // Target TweakDB ID for the Abyssal Mining Rig prop
        // Assumes TweakDB entry: Items.AbyssalMiningRig
        let rigRecordID: TweakDBID = t"Items.AbyssalMiningRig"; 
        
        // Dynamically spawn the rig entity
        let dynamicSystem = GameInstance.GetDynamicEntitySystem(this.GetGameInstance());
        if IsDefined(dynamicSystem) {
            let entityId: EntityID = dynamicSystem.SpawnEntity(rigRecordID, spawnTransform);
            LogChannel(n"DEBUG", s"Abyssal Mining Rig Spawned: " + node.nodeID);
        }
        
        node.rigSpawned = true;
    }
}

// Hook into PlayerPuppet to feed location data to our GangBaseSystem
@wrapMethod(PlayerPuppet)
protected cb func OnUpdate(dt: Float) -> Bool {
    wrappedMethod(dt);
    
    let gangSystem: ref<MSNGangBaseSystem> = GameInstance.GetScriptableSystemsContainer(this.GetGame()).Get(n"MSN.GangBases.MSNGangBaseSystem") as MSNGangBaseSystem;
    
    if IsDefined(gangSystem) {
        if !gangSystem.IsPlayerRegistered() {
            gangSystem.RegisterPlayer(this);
        }
        
        let playerPos: Vector4 = this.GetWorldPosition();
        gangSystem.OnPlayerUpdate(dt, playerPos);
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

