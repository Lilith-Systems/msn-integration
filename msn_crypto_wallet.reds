// Sephirotic Court Seal — Chesed | source/msn_core/msn_crypto_wallet.reds
// Court agent: Thoth | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
// CourtFile: MsnCryptoWallet | Chesed | agent=Thoth
module MSN.CryptoWallet

@wrapMethod(PlayerPuppet)
protected cb func OnAction(action: ref<Action>, consumer: ref<ActionConsumer>) -> Bool {
    let actionName: CName = ListenerAction.GetName(action);
    let actionType: gameinputActionType = ListenerAction.GetType(action);

    // "Vision" is the action name for toggling the scanner / focus mode in Cyberpunk 2077
    if Equals(actionName, n"Vision") && Equals(actionType, gameinputActionType.BUTTON_PRESSED) {
        this.ShowAbyssalBalanceNotification();
    }
    
    return wrappedMethod(action, consumer);
}

@addMethod(PlayerPuppet)
public func ShowAbyssalBalanceNotification() -> Void {
    let msg: SimpleScreenMessage;
    msg.isShown = true;
    msg.duration = 4.0;
    
    // In a full integration pipeline, this balance would be fetched by the Python daemon
    // over the MSN routing layer, and then pushed to REDscript via the local file watcher 
    // or WolvenKit REDmod hook.
    msg.message = "MSN SYNC | Abyssal Soul Coins: 14,302 ASC";
    
    let bbSystem: ref<BlackboardSystem> = GameInstance.GetBlackboardSystem(this.GetGame());
    let bb: ref<IBlackboard> = bbSystem.Get(GetAllBlackboardDefs().UI_Notifications);
    
    if IsDefined(bb) {
        bb.SetVariant(GetAllBlackboardDefs().UI_Notifications.OnscreenMessage, ToVariant(msg), true);
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

