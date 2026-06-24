// Sephirotic Court Seal — Hod | source/msn_core/msn_starwars_system.reds
// Court agent: Hod | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// CourtFile: MsnStarwarsSystem | Hod | agent=Hod
// GRAND THEFT CYBERPUNK - STAR WARS/JEDI COMPATIBILITY WRAPPER
// The older StarWarsSystem entry point now delegates to MSNJediSystem.
// Item, holocron, and saber records are data-only in tweakdb/msn_magic_jedi.tweakdb.

public class StarWarsSystem extends IScriptable {
    private static let instance: ref<StarWarsSystem>;
    private let initialized: Bool;

    public final static func GetInstance() -> ref<StarWarsSystem> {
        if (!IsDefined(StarWarsSystem.instance)) {
            StarWarsSystem.instance = new StarWarsSystem();
            StarWarsSystem.instance.Initialize();
        };
        return StarWarsSystem.instance;
    }

    private final func Initialize() -> Void {
        if (this.initialized) {
            return;
        };
        this.initialized = true;
        MSNJediSystem.GetInstance();
        LogInfo("[StarWarsSystem] compatibility wrapper online; delegated to MSNJediSystem");
    }

    public final func InitializeForceUser(entity: ref<Entity>, alignment: CName) -> Void {
        let jedi: ref<MSNJediSystem> = MSNJediSystem.GetInstance();
        jedi.SetAlignment(alignment);
    }

    public final func UseForcePower(powerName: CName) -> Bool {
        let jedi: ref<MSNJediSystem> = MSNJediSystem.GetInstance();
        return jedi.UsePower(powerName);
    }

    public final func ToggleLightsaber(user: ref<Entity>) -> Bool {
        let jedi: ref<MSNJediSystem> = MSNJediSystem.GetInstance();
        return jedi.UsePower(n"SaberFormShiiCho");
    }

    public final func ChangeLightsaberForm(user: ref<Entity>, form: CName) -> Void {
        let jedi: ref<MSNJediSystem> = MSNJediSystem.GetInstance();
        jedi.UsePower(form);
    }

    @Command("msn.starwars.status")
    public final func CmdStarWarsStatus() -> Void {
        let jedi: ref<MSNJediSystem> = MSNJediSystem.GetInstance();
        Game.GetUIManager().ShowNotification("MSN Star Wars compatibility: " + jedi.GetStatus());
    }
}

public class ForceSensitivityCerebellum extends IScriptable {
    @Property() public let alignmentBias: CName = n"Grey";

    public final func OnInstall(entity: ref<Entity>) -> Void {
        let sw: ref<StarWarsSystem> = StarWarsSystem.GetInstance();
        sw.InitializeForceUser(entity, this.alignmentBias);
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

