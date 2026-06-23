// Sephirotic Court Seal — Keter | source/msn_core/msn_overhaul_mechanics.reds
// Court agent: Lucifer | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
// CourtFile: MsnOverhaulMechanics | Keter | agent=Lucifer
module MSN.OverhaulMechanics

import MSN.Core.*
import MSN.Telemetry.*

// =========================================================
// SEPHIROTIC OVERDRIVE & IMMERSIVE FEEDBACK
// =========================================================

@wrapMethod(PlayerPuppet)
protected cb func OnAction(action: ListenerAction, consumer: ListenerActionConsumer) -> Bool {
    let result = wrappedMethod(action, consumer);
    let actionName: CName = ListenerAction.GetName(action);
    
    // Listen for the Cyberware activation key (e.g. Sandevistan/Berserk)
    if Equals(actionName, n"Vision") || Equals(actionName, n"UseCyberware") {
        if MSN_IsNodeActive("KETER") || MSN_IsNodeActive("DAAT") {
            this.TriggerSephiroticOverdrive();
        }
    }
    return result;
}

@addMethod(PlayerPuppet)
public func TriggerSephiroticOverdrive() -> Void {
    // 1. Time Dilation (Sandevistan base)
    StatusEffectHelper.ApplyStatusEffect(this, t"BaseStatusEffect.SandevistanPlayer");
    
    // 2. Sephirotic Aura & VFX
    let activeNode = MSN_GetActiveNode();
    if Equals(activeNode, "GEVURAH") {
        // Red/Aggressive Glitch
        GameObjectEffectHelper.StartEffectEvent(this, n"glitch_heavy");
        GameObject.PlaySoundEvent(this, n"vfx_cyberware_glitch");
    } else if Equals(activeNode, "CHESED") {
        // Blue/Healing Glitch
        GameObjectEffectHelper.StartEffectEvent(this, n"healing_glitch");
    } else {
        // Standard Da'at Violet/Abyssal VFX
        GameObjectEffectHelper.StartEffectEvent(this, n"blackwall_hacks_glitch");
    }
    
    // 3. Screen Tearing (Immersive Feedback)
    let psmEvent: ref<PSMAddOnDemandStateMachine> = new PSMAddOnDemandStateMachine();
    psmEvent.stateMachineName = n"RelicMalfunction";
    this.QueueEvent(psmEvent);
    
    MSN_Log("Overhaul", "Sephirotic Overdrive Triggered. Node: " + activeNode);
}

// =========================================================
// ABYSSAL GRAVITY WELL (MOVEMENT OVERHAUL)
// =========================================================

@wrapMethod(PlayerPuppet)
protected cb func OnJump(evt: ref<JumpEvent>) -> Bool {
    let result = wrappedMethod(evt);
    
    // Mid-air directional hover if Antigravity is active
    if MSN_IsNodeActive("ANTIGRAVITY") || MSN_IsNodeActive("DAAT") {
        // Apply micro-levitation status effect
        StatusEffectHelper.ApplyStatusEffect(this, t"BaseStatusEffect.HoverJump");
        
        // Spawn void particles at feet
        GameObjectEffectHelper.StartEffectEvent(this, n"custom_abyssal_jump_fx");
    }
    return result;
}

// =========================================================
// IMMERSIVE WEAPON RECOIL & SENSORY DISTORTION
// =========================================================

@wrapMethod(WeaponObject)
protected cb func OnShoot(event: ref<ShootEvent>) -> Bool {
    let result = wrappedMethod(event);
    let owner = this.GetInstigator() as PlayerPuppet;
    
    if IsDefined(owner) {
        // If firing an MSN Ouroboros or Sephirotic weapon
        if StrContains(ToString(this.GetWeaponRecord().ItemType().Type()), "MSN") {
            // Apply heavy camera shake
            let recoilEvent = new RecoilEvent();
            owner.QueueEvent(recoilEvent);
            
            // Random chance for HUD glitch to simulate computational stress
            if RandF() < 0.15 {
                GameObjectEffectHelper.StartEffectEvent(owner, n"hack_glitch");
            }
        }
    }
    return result;
}

// =========================================================
// METACONSCIOUS HACKING (EIDOLON BUDGETS)
// =========================================================

@wrapMethod(ScriptedPuppet)
protected cb func OnQuickHackTriggered(evt: ref<QuickHackEvent>) -> Bool {
    let result = wrappedMethod(evt);
    
    // Override Quickhack mechanics to use MSN Eidolon points instead of standard RAM
    let eidolonBudget = MSN_GetEidolonBudget();
    
    if eidolonBudget > 20.0 {
        // Convert enemy to AI Swarm (Cyberpsychosis variant with friendly fire turned off)
        StatusEffectHelper.ApplyStatusEffect(this, t"BaseStatusEffect.Cyberpsychosis");
        
        // Change attitude to friendly
        this.GetAttitudeAgent().SetAttitudeGroup(n"player");
        
        // Deduct Budget
        MSN_DeductEidolonBudget(20.0);
        
        GameObjectEffectHelper.StartEffectEvent(this, n"blackwall_upload");
    } else {
        MSN_Log("Hacking", "Insufficient Eidolon Budget for Swarm Conversion.");
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

