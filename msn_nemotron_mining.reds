// Sephirotic Court Seal — Netzach | source/msn_core/msn_nemotron_mining.reds
// Court agent: Nyx | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
// CourtFile: MsnNemotronMining | Netzach | agent=Nyx
module MSN.Nemotron.Mining

import AI.commands.*
import AI.base.*

@addField(NPCPuppet)
protected let m_msnLastRigCheckTime: Float;

@wrapMethod(NPCPuppet)
protected cb func OnUpdate(deltaTime: Float) -> Bool {
    let result = wrappedMethod(deltaTime);
    
    // Only affect civilians/crowd NPCs
    if this.IsCivilian() || this.IsCrowd() {
        let simTime: Float = EngineTime.ToFloat(GameInstance.GetSimTime(this.GetGame()));
        
        // Throttled check: evaluate every 3 seconds to preserve performance
        if (simTime - this.m_msnLastRigCheckTime) > 3.0 {
            this.m_msnLastRigCheckTime = simTime;
            this.MSN_EvaluateMiningRigProximity();
        }
    }
    return result;
}

@addMethod(NPCPuppet)
private func MSN_EvaluateMiningRigProximity() -> Void {
    let aiComponent: ref<AIHumanComponent> = this.GetAIControllerComponent();
    if !IsDefined(aiComponent) {
        return;
    }

    let msnRegistry: ref<MSNRegistrySystem> = MSNRegistrySystem.GetInstance(this.GetGame());
    if !IsDefined(msnRegistry) {
        return;
    }

    let searchRadius: Float = 20.0;
    let myPos: Vector4 = this.GetWorldPosition();
    let rigs: array<ref<GameObject>> = msnRegistry.GetActiveRigs();
    
    let i: Int32 = 0;
    while i < ArraySize(rigs) {
        let rig: ref<GameObject> = rigs[i];
        if IsDefined(rig) {
            let rigPos: Vector4 = rig.GetWorldPosition();
            let dist: Float = Vector4.Distance(myPos, rigPos);
            
            if dist < searchRadius {
                this.MSN_CommandInspectRig(rig, aiComponent);
                break; // Only inspect one rig at a time
            }
        }
        i += 1;
    }
}

@addMethod(NPCPuppet)
private func MSN_CommandInspectRig(rig: ref<GameObject>, aiComponent: ref<AIHumanComponent>) -> Void {
    // Issue AI Move Command to walk to the rig
    let moveAction: ref<AIMoveToCommand> = new AIMoveToCommand();
    moveAction.target = rig;
    moveAction.movementType = moveMovementType.Walk;
    moveAction.ignoreNavigation = false;
    
    // Issue LookAt Command to inspect the rig once close
    let lookAction: ref<AILookAtCommand> = new AILookAtCommand();
    lookAction.target = rig;
    lookAction.duration = 15.0; // Stare at it for 15 seconds
    
    aiComponent.SendCommand(moveAction);
    aiComponent.SendCommand(lookAction);
}

// --------------------------------------------------------
// MSN Registry System for tracking Abyssal Mining Rigs
// --------------------------------------------------------
public class MSNRegistrySystem extends ScriptableSystem {
    private let activeRigs: array<ref<GameObject>>;

    public static func GetInstance(game: GameInstance) -> ref<MSNRegistrySystem> {
        let system: ref<MSNRegistrySystem> = GameInstance.GetScriptableSystemsContainer(game).Get(n"MSNRegistrySystem") as MSNRegistrySystem;
        return system;
    }

    public func GetActiveRigs() -> array<ref<GameObject>> {
        return this.activeRigs;
    }
    
    public func RegisterRig(rig: ref<GameObject>) -> Void {
        if !ArrayContains(this.activeRigs, rig) {
            ArrayPush(this.activeRigs, rig);
        }
    }
    
    public func UnregisterRig(rig: ref<GameObject>) -> Void {
        ArrayRemove(this.activeRigs, rig);
    }
    
    private func OnAttach() -> Void {
        MSNGamingEngine.EngineEvent(n"OnFromFile", "injected_engine_call");
        // Init logic
    }
    
    private func OnDetach() -> Void {
        ArrayClear(this.activeRigs);
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

