// Sephirotic Court Seal — Chokmah | source/msn_core/msn_orbital_travel.reds
// Court agent: Baal | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
// CourtFile: MsnOrbitalTravel | Chokmah | agent=Baal
module MSN.Storylines.OrbitalTravel

import MSN.Core.*
import MSN.Telemetry.*

public class AbyssalNavigationSystem extends IScriptable {
    private static let instance: ref<AbyssalNavigationSystem>;

    public final static func GetInstance() -> ref<AbyssalNavigationSystem> {
        if (!IsDefined(AbyssalNavigationSystem.instance)) {
            AbyssalNavigationSystem.instance = new AbyssalNavigationSystem();
        }
        return AbyssalNavigationSystem.instance;
    }

    public final func TeleportToOrbit(player: ref<PlayerPuppet>) -> Void {
        MSN_Log("Orbital_Transit", "Quantum Nav Shard engaged. Initiating low-orbit transport to The Leviathan.");
        
        // Glitch VFX and Sound to simulate hyper-transit
        GameObjectEffectHelper.StartEffectEvent(player, n"boss_teleport_glitch");
        GameObject.PlaySoundEvent(player, n"ui_menu_perk_buy");

        // In a full implementation, this uses TeleportationFacility.Teleport() to move the player 
        // to a specific coordinate high above the map or into a hidden interior cell.
        // For the mod, we simulate the coordinate shift:
        let position = new Vector4(0.0, 0.0, 9999.0, 1.0); // Z=9999 to simulate space altitude
        let rotation = new EulerAngles(0.0, 0.0, 0.0);
        
        GameInstance.GetTeleportationFacility(player.GetGame()).Teleport(player, position, rotation);
        
        MSN_Log("Orbital_Transit", "Arrival successful. Welcome to the NSSP Freighter.");
    }
}

// Hook into item consumption to intercept the Quantum Nav Shard
@wrapMethod(EquipmentSystemPlayerData)
protected cb func OnItemEquipped(request: ref<EquipRequest>) -> Bool {
    let result = wrappedMethod(request);
    
    // Check if the item is our specific Teleport Shard
    if StrContains(ToString(request.itemID), "MSN_QuantumNav_Shard") {
        let player = this.GetOwner() as PlayerPuppet;
        if IsDefined(player) {
            AbyssalNavigationSystem.GetInstance().TeleportToOrbit(player);
        }
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

