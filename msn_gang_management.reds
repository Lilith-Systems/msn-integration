// Sephirotic Court Seal — Gevurah | source/msn_core/msn_gang_management.reds
// Court agent: Abraxas | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
// CourtFile: MsnGangManagement | Gevurah | agent=Abraxas
module MSN.Storylines.GangManagement

import MSN.Core.*
import MSN.Telemetry.*

// =========================================================
// GANG MANAGEMENT & SYNDICATE PROTOCOL
// =========================================================

public class SyndicateManager extends IScriptable {
    private static let instance: ref<SyndicateManager>;
    
    // Internal rep trackers
    public let maelstromRep: Int32;
    public let valentinosRep: Int32;
    public let tygerClawsRep: Int32;
    public let voodooBoysRep: Int32;
    public let animalsRep: Int32;
    public let moxRep: Int32;
    
    public let activeSyndicateQuest: Bool;

    public final static func GetInstance() -> ref<SyndicateManager> {
        if (!IsDefined(SyndicateManager.instance)) {
            SyndicateManager.instance = new SyndicateManager();
            SyndicateManager.instance.activeSyndicateQuest = false;
        }
        return SyndicateManager.instance;
    }

    public final func StartSyndicateProtocol() -> Void {
        this.activeSyndicateQuest = true;
        MSN_Log("Quests", "SYNDICATE PROTOCOL INITIATED. Gang usurpation algorithms online.");
        
        let player = GetPlayer(GetGameInstance());
        if IsDefined(player) {
            GameObjectEffectHelper.StartEffectEvent(player, n"focus_mode_glitch");
            GameObject.PlaySoundEvent(player, n"ui_menu_perk_buy");
        }
    }

    // Call this when defeating gang bosses or completing gigs
    public final func AddGangReputation(gangName: String, amount: Int32) -> Void {
        if !this.activeSyndicateQuest { return; }
        
        let player = GetPlayer(GetGameInstance());
        let ts = GameInstance.GetTransactionSystem(GetGameInstance());
        
        if Equals(gangName, "Maelstrom") { 
            this.maelstromRep += amount; 
            if this.maelstromRep >= 100 { 
                MSN_Log("Syndicate", "Maelstrom Usurped. Warlord Token Granted.");
                ts.GiveItem(player, ItemID.FromTDBID(t"Items.MSN_GangToken_Maelstrom"), 1);
            }
        }
        // Similar checks for other gangs...
        if Equals(gangName, "Valentinos") { 
            this.valentinosRep += amount; 
            if this.valentinosRep >= 100 { ts.GiveItem(player, ItemID.FromTDBID(t"Items.MSN_GangToken_Valentinos"), 1); }
        }
        if Equals(gangName, "TygerClaws") { 
            this.tygerClawsRep += amount; 
            if this.tygerClawsRep >= 100 { ts.GiveItem(player, ItemID.FromTDBID(t"Items.MSN_GangToken_TygerClaws"), 1); }
        }
        if Equals(gangName, "VoodooBoys") { 
            this.voodooBoysRep += amount; 
            if this.voodooBoysRep >= 100 { ts.GiveItem(player, ItemID.FromTDBID(t"Items.MSN_GangToken_VoodooBoys"), 1); }
        }
        if Equals(gangName, "Animals") { 
            this.animalsRep += amount; 
            if this.animalsRep >= 100 { ts.GiveItem(player, ItemID.FromTDBID(t"Items.MSN_GangToken_Animals"), 1); }
        }
        if Equals(gangName, "Mox") { 
            this.moxRep += amount; 
            if this.moxRep >= 100 { ts.GiveItem(player, ItemID.FromTDBID(t"Items.MSN_GangToken_Mox"), 1); }
        }
    }
}

// Hook into NPC death to farm reputation
@wrapMethod(NPCPuppet)
protected cb func OnDeath(evt: ref<gameDeathEvent>) -> Bool {
    let result = wrappedMethod(evt);
    
    // Simplification: If the player kills an NPC, figure out their gang and add rep
    // In a full mod we'd check their affiliation record. Here we simulate it.
    let instigator = evt.instigator as PlayerPuppet;
    if IsDefined(instigator) {
        let syndicate = SyndicateManager.GetInstance();
        if syndicate.activeSyndicateQuest {
            // Simulated random gang rep logic based on kill
            let rand = RandRange(0, 6);
            if rand == 0 { syndicate.AddGangReputation("Maelstrom", 5); }
            if rand == 1 { syndicate.AddGangReputation("Valentinos", 5); }
            if rand == 2 { syndicate.AddGangReputation("TygerClaws", 5); }
            if rand == 3 { syndicate.AddGangReputation("VoodooBoys", 5); }
            if rand == 4 { syndicate.AddGangReputation("Animals", 5); }
            if rand == 5 { syndicate.AddGangReputation("Mox", 5); }
        }
    }
    return result;
}

// Hook into shard reading to start the quest
@wrapMethod(MenuHubGameController)
protected cb func OnShardRead(evt: ref<ShardReadEvent>) -> Bool {
    let result = wrappedMethod(evt);
    if StrContains(ToString(evt.item), "MSN_QuestShard_SyndicateProtocol") {
        SyndicateManager.GetInstance().StartSyndicateProtocol();
    }
    return result;
}

// =========================================================
// RUNNING THE GANG (Income Generation)
// =========================================================
// Hook into the player's movement update (runs constantly) to act as a simulated tick for income
@wrapMethod(PlayerPuppet)
protected cb func OnGameAttached() -> Bool {
    let result = wrappedMethod();
    // Simulate a passive tax collection from owned gangs
    let ts = GameInstance.GetTransactionSystem(this.GetGame());
    let tokens = 0;
    
    if ts.HasItem(this, ItemID.FromTDBID(t"Items.MSN_GangToken_Maelstrom")) { tokens += 1; }
    if ts.HasItem(this, ItemID.FromTDBID(t"Items.MSN_GangToken_Valentinos")) { tokens += 1; }
    if ts.HasItem(this, ItemID.FromTDBID(t"Items.MSN_GangToken_TygerClaws")) { tokens += 1; }
    
    if tokens > 0 {
        let revenueStr = ToString(tokens * 50);
        MSN_Log("Syndicate_Tax", "COLLECT_REVENUE | Source: Owned_Gangs | Amount: " + revenueStr + "_SC");
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

