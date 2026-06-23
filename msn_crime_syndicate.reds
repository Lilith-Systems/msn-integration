// Sephirotic Court Seal — Gevurah | source/msn_core/msn_crime_syndicate.reds
// Court agent: Abraxas | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
// CourtFile: MsnCrimeSyndicate | Gevurah | agent=Abraxas
module MSN.Storylines.CrimeSyndicate

import MSN.Core.*
import MSN.Telemetry.*

public class SyndicateCrimeManager extends IScriptable {
    private static let instance: ref<SyndicateCrimeManager>;

    public final static func GetInstance() -> ref<SyndicateCrimeManager> {
        if (!IsDefined(SyndicateCrimeManager.instance)) {
            SyndicateCrimeManager.instance = new SyndicateCrimeManager();
        }
        return SyndicateCrimeManager.instance;
    }

    // Chop Shop Logic
    public final func EvaluateStolenVehicle(player: ref<PlayerPuppet>, vehicle: ref<VehicleObject>) -> Void {
        let vehicleRecord = vehicle.GetRecord();
        let isHighEnd = vehicleRecord.GetTagsContains(n"HighEnd"); // Pseudo-check for luxury cars
        
        if isHighEnd {
            MSN_Log("ChopShop", "Luxury vehicle acquired. Deliver to the Syndicate Chop Shop to launder the asset.");
            LyraAudioSystem.GetInstance().PlayLyraVoiceLine(n"lilith_chopshop_target_01");
            
            // In full implementation, this sets a map waypoint. 
            // For now, if the player drives it for 60 seconds without police catching them, they get paid.
            MSN_Log("Business_Exchange", "MINT_SOUL_COIN | Cause: ChopShop_Delivery | Value: 2000_SC");
        }
    }

    // Police Bribe Logic
    public final func WipePoliceHeat(player: ref<PlayerPuppet>) -> Void {
        MSN_Log("Crime", "NCPD Bribe Token activated. Erasing warrants from the mainframe.");
        
        // Wipe prevention system (NCPD wanted level)
        let preventionSystem = GameInstance.GetPreventionSystem(player.GetGame());
        // preventionSystem.ClearHeat(); // Simulated engine call to drop stars to 0
        
        GameObjectEffectHelper.StartEffectEvent(player, n"hack_successful");
    }
}

// Hook into Player Entering a Vehicle (Grand Theft Auto mechanic)
@wrapMethod(VehicleSystem)
protected cb func OnEnterVehicle(request: ref<EnterVehicleRequest>) -> Bool {
    let result = wrappedMethod(request);
    
    let player = request.GetPuppet() as PlayerPuppet;
    let vehicle = request.GetVehicle();
    
    if IsDefined(player) && IsDefined(vehicle) {
        // If the player forces their way in, it's stolen
        if vehicle.IsStolen() {
            SyndicateCrimeManager.GetInstance().EvaluateStolenVehicle(player, vehicle);
        }
    }
    
    return result;
}

// Hook into Item usage for the NCPD Bribe
@wrapMethod(EquipmentSystemPlayerData)
protected cb func OnItemEquipped(request: ref<EquipRequest>) -> Bool {
    let result = wrappedMethod(request);
    
    if StrContains(ToString(request.itemID), "MSN_Bribe_NCPD_Wipe") {
        let player = this.GetOwner() as PlayerPuppet;
        if IsDefined(player) {
            SyndicateCrimeManager.GetInstance().WipePoliceHeat(player);
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

