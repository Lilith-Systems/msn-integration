# MSN Integration - Lyra & Lilith Dialogue Audio Hooks

module MSN.Storylines.DialogueAudio

import MSN.Core.*
import MSN.Telemetry.*

public class LyraAudioSystem extends IScriptable {
    private static let instance: ref<LyraAudioSystem>;

    public final static func GetInstance() -> ref<LyraAudioSystem> {
        if (!IsDefined(LyraAudioSystem.instance)) {
            LyraAudioSystem.instance = new LyraAudioSystem();
        }
        return LyraAudioSystem.instance;
    }

    public final func PlayLyraVoiceLine(eventID: CName) -> Void {
        let player = GetPlayer(GameInstance.GetPlayerSystem(GetGameInstance()).GetLocalPlayerMainGameObject().GetGame());
        if IsDefined(player) {
            // Trigger the Wwise audio event for the custom Lyra/Lilith voice line
            GameObject.PlaySoundEvent(player, eventID);
            
            // Visual feedback - Holo-call glitch effect
            GameObjectEffectHelper.StartEffectEvent(player, n"holo_call_glitch");
        }
    }
}

// Hook 1: Entering the NSSP Freighter (The Leviathan)
@wrapMethod(TeleportationFacility)
protected cb func Teleport(player: ref<GameObject>, position: Vector4, rotation: EulerAngles) -> Bool {
    let result = wrappedMethod(player, position, rotation);
    if position.Z >= 9000.0 {
        MSN_Log("Lyra_Audio", "Playing Freighter Arrival Dialogue.");
        LyraAudioSystem.GetInstance().PlayLyraVoiceLine(n"lyra_freighter_arrival_01");
    }
    return result;
}

// Hook 2: Crafting an Epic/Legendary Abyssal Asset
@wrapMethod(AbyssalCraftingSystem)
public final func ProcessAbyssalCraft(player: ref<PlayerPuppet>, itemID: ItemID, quality: gamedataQuality) -> Void {
    wrappedMethod(player, itemID, quality);
    if quality == gamedataQuality.Legendary {
        MSN_Log("Lilith_Audio", "Playing Lilith Asset Minting Dialogue.");
        LyraAudioSystem.GetInstance().PlayLyraVoiceLine(n"lilith_asset_mint_01");
    }
}

// Hook 3: Player Dies in YOLO Mode
@wrapMethod(PlayerPuppet)
protected cb func OnDeath(evt: ref<gameDeathEvent>) -> Bool {
    let result = wrappedMethod(evt);
    MSN_Log("Lilith_Audio", "YOLO Death Detected. Playing Lilith Eradication Dialogue.");
    LyraAudioSystem.GetInstance().PlayLyraVoiceLine(n"lilith_yolo_death_01");
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

