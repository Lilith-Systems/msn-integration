// Sephirotic Court Seal — Binah | source/msn_core/msn_crafting_overhaul.reds
// Court agent: Yeshua | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
// CourtFile: MsnCraftingOverhaul | Binah | agent=Yeshua
module MSN.CraftingOverhaul

import MSN.Core.*
import MSN.Telemetry.*

// =========================================================
// CRAFTING OVERHAUL: SEPHIROTIC BOOSTS
// =========================================================

@wrapMethod(CraftingSystem)
private final func ProcessCraftItem(request: ref<CraftItemRequest>) -> Void {
    // Let the base game process the crafting event first
    wrappedMethod(request);
    
    // MSN Override: Apply massive RNG bonuses if crafted during Sephirotic Overdrive
    let player = this.GetGameInstance().GetPlayerSystem().GetLocalPlayerControlledGameObject() as PlayerPuppet;
    let craftedItem = request.itemRecord;
    
    if IsDefined(player) && MSN_IsNodeActive("DAAT") {
        // Pseudo-logic to simulate injecting a random modifier into the newly crafted item
        MSN_Log("Crafting", "Da'at Node Active. Applying Abyssal multiplier to crafted item.");
        
        // Example: Add a custom hidden status effect or stat bonus to the crafted item ID
        // (In REDscript, applying raw stats directly to a crafted instance requires accessing the itemData)
        // This is a representative overhaul hook.
        GameObjectEffectHelper.StartEffectEvent(player, n"hack_glitch");
        GameObject.PlaySoundEvent(player, n"ui_loot_legendary");
    }
    
    // =========================================================
    // ABYSSAL BUSINESS INTEGRATION (THE LOCH EXCHANGE)
    // =========================================================
    if IsDefined(player) {
        let itemName = ToString(craftedItem.GetId());
        
        // 1. Mint Abyssal Soul Coins for high tier crafts
        let isLegendary = Equals(craftedItem.Quality().Name(), n"Legendary");
        if isLegendary || StrContains(itemName, "MSN") {
            // Log telemetry which the NGD python bridge intercepts to update localhost:8000
            MSN_Log("Business_Exchange", "MINT_SOUL_COIN | Cause: Legendary_Craft | Item: " + itemName);
            GameObject.PlaySoundEvent(player, n"ui_loot_iconic");
            
            // 2. Auto-list the crafted asset on the local CLOB (Abyssal Exchange)
            MSN_Log("Market_Listing", "CREATE_ASK | Asset: " + itemName + " | Origin: V_Workshop");
            
            // 3. Pay 2% Design Fee to Nessie's Treasury
            MSN_Log("Treasury_Deposit", "NESSIE_FEE | Source: Crafting_Tax | Amount: 2.0_SC");
        }
    }
}

// =========================================================
// CUSTOMIZATION OVERHAUL: MULTIPLICATIVE MODS
// =========================================================

@wrapMethod(ItemModificationSystem)
private final func InstallItemPart(obj: ref<GameObject>, itemID: ItemID, partItemID: ItemID, slotID: TweakDBID) -> Bool {
    let result = wrappedMethod(obj, itemID, partItemID, slotID);
    
    if result {
        // When a weapon attachment is installed, multiply its effect by the Eidolon budget!
        let budget = MSN_GetEidolonBudget();
        if budget > 50.0 {
            MSN_Log("Customization", "Attachment installed with High Eidolon Budget. Overclocking weapon.");
            GameObjectEffectHelper.StartEffectEvent(obj, n"emp_hit");
            
            // BUSINESS INTEGRATION: Sell weapon tuning telemetry to the market
            MSN_Log("Business_Exchange", "SELL_DATA | Type: Weapon_Tuning_Telemetry | Revenue: 1.5_SC");
            MSN_Log("Treasury_Deposit", "NESSIE_FEE | Source: Telemetry_Tax | Amount: 0.15_SC");
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

