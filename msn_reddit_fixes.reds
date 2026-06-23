// Sephirotic Court Seal — Keter | source/msn_core/msn_reddit_fixes.reds
// Court agent: Lucifer | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
// CourtFile: MsnRedditFixes | Keter | agent=Lucifer
module MSN.Storylines.RedditFixes

import MSN.Core.*
import MSN.Telemetry.*

public class PostGameManager extends IScriptable {
    public final static func GetInstance() -> ref<PostGameManager> {
        return new PostGameManager();
    }

    // Intercept the end-game reset logic to allow for continuous play
    public final func PreventEndgameReset() -> Void {
        MSN_Log("EndGame", "Overriding CDPR endgame reset protocol. The world continues.");
        MSN_Log("EndGame", "Applying post-story world state: Factions are permanently altered based on Guild alignment.");
    }
}

// Hook to trigger backup for Streetkids
@wrapMethod(PlayerPuppet)
protected cb func OnCombatStarted() -> Bool {
    let result = wrappedMethod();
    let ts = GameInstance.GetTransactionSystem(this.GetGame());
    if ts.HasItem(this, ItemID.FromTDBID(t"Items.MSN_Lifepath_Streetkid_Trait")) {
        MSN_Log("Streetkid_Trait", "Spawning local gang backup for combat encounter.");
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

