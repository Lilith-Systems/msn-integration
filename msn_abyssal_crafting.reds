// Sephirotic Court Seal — Binah | source/msn_core/msn_abyssal_crafting.reds
// Court agent: Yeshua | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
// CourtFile: MsnAbyssalCrafting | Binah | agent=Yeshua
module MSN.Storylines.AbyssalCrafting

import MSN.Core.*
import MSN.Telemetry.*

public class AbyssalCraftingSystem extends IScriptable {
    private static let instance: ref<AbyssalCraftingSystem>;

    public final static func GetInstance() -> ref<AbyssalCraftingSystem> {
        if (!IsDefined(AbyssalCraftingSystem.instance)) {
            AbyssalCraftingSystem.instance = new AbyssalCraftingSystem();
        }
        return AbyssalCraftingSystem.instance;
    }

    public final func ProcessAbyssalCraft(player: ref<PlayerPuppet>, itemID: ItemID, quality: gamedataQuality) -> Void {
        // Only trigger Abyssal Asset minting on Epic or Legendary crafts
        if quality == gamedataQuality.Legendary || quality == gamedataQuality.Epic {
            MSN_Log("Crafting", "High-tier item fabricated. Minting corresponding Abyssal Asset on the Loch Exchange.");
            
            // Send telemetry to the Python backend to register this item as a tradeable asset
            let itemStr = ToString(itemID);
            MSN_Log("Abyssal_Asset", "MINT_ASSET | Item: " + itemStr + " | Owner: Player_Syndicate");
            
            // Reward the player with Soul Coins for supplying the economy
            MSN_Log("Business_Exchange", "MINT_SOUL_COIN | Cause: Crafting_Bounty | Value: 150_SC");
            
            // Visual feedback
            GameObjectEffectHelper.StartEffectEvent(player, n"hack_successful");
        }
    }
}

// Hook into the core crafting system
@wrapMethod(CraftingSystem)
private final func ProcessCraftItemRequest(request: ref<CraftItemRequest>) -> Void {
    // Let the vanilla game handle the actual inventory insertion
    wrappedMethod(request);
    
    let player = this.GetPlayer();
    if IsDefined(player) {
        // Fetch the quality of the item being crafted
        let itemRecord = TweakDBInterface.GetItemRecord(ItemID.GetTDBID(request.itemToCraft));
        let qualityRecord = itemRecord.Quality();
        let quality = qualityRecord.Type();
        
        AbyssalCraftingSystem.GetInstance().ProcessAbyssalCraft(player, request.itemToCraft, quality);
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

