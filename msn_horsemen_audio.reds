// Sephirotic Court Seal — Gevurah | source/msn_core/msn_horsemen_audio.reds
// Court agent: Abraxas | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// CourtFile: MsnHorsemenAudio | Gevurah | agent=Abraxas
// MSN Horsemen Audio Hooks
// Plays custom Lyra and Lilith audio events when a Four Horsemen Cyberpsycho engages the player.
// Written by Swarm Architect

module MSN.Horsemen.Audio

@addMethod(GameObject)
public final func IsMSNHorseman() -> Bool {
    let recordID = this.GetRecordID();
    let isWar = Equals(recordID, t"Character.MSN_Bosses.War") || Equals(recordID, t"MSN_Bosses.War");
    let isFamine = Equals(recordID, t"Character.MSN_Bosses.Famine") || Equals(recordID, t"MSN_Bosses.Famine");
    let isPestilence = Equals(recordID, t"Character.MSN_Bosses.Pestilence") || Equals(recordID, t"MSN_Bosses.Pestilence");
    let isDeath = Equals(recordID, t"Character.MSN_Bosses.Death") || Equals(recordID, t"MSN_Bosses.Death");
    
    return isWar || isFamine || isPestilence || isDeath;
}

// Hook when the boss takes damage (player attacked first)
@wrapMethod(ScriptedPuppet)
protected cb func OnTakeDamage(evt: ref<gameDamageReceivedEvent>) -> Bool {
    let isHorseman = this.IsMSNHorseman();
    let isFirstHit = false;
    
    if isHorseman {
        let currentHealth = GameInstance.GetStatPoolsSystem(this.GetGame()).GetStatPoolValue(Cast<StatsObjectID>(this.GetEntityID()), gamedataStatPoolType.Health, false);
        let maxHealth = GameInstance.GetStatPoolsSystem(this.GetGame()).GetStatPoolValue(Cast<StatsObjectID>(this.GetEntityID()), gamedataStatPoolType.Health, true);
        
        if currentHealth > 0.0 && maxHealth > 0.0 {
            // Check if health is practically full (start of encounter)
            if (currentHealth / maxHealth) > 0.98 {
                isFirstHit = true;
            }
        }
    }
    
    let result = wrappedMethod(evt);
    
    if isHorseman && isFirstHit {
        GameObject.PlaySoundEvent(this, n"lilith_horseman_spawn");
        GameObject.PlaySoundEvent(this, n"lyra_horseman_warning");
        GameObjectEffectHelper.StartEffectEvent(this, n"boss_spawn_effect");
        
        Game.GetAudioSystem().PlaySound("lilith_horseman_spawn", this.GetWorldPosition());
        Game.GetAudioSystem().PlaySound("lyra_horseman_warning", this.GetWorldPosition());
    }
    
    return result;
}

// Hook when the player takes damage (boss attacked first)
@wrapMethod(PlayerPuppet)
protected cb func OnTakeDamage(evt: ref<gameDamageReceivedEvent>) -> Bool {
    let instigator = evt.instigator as ScriptedPuppet;
    let isFirstHit = false;
    
    if IsDefined(instigator) && instigator.IsMSNHorseman() {
        let currentHealth = GameInstance.GetStatPoolsSystem(instigator.GetGame()).GetStatPoolValue(Cast<StatsObjectID>(instigator.GetEntityID()), gamedataStatPoolType.Health, false);
        let maxHealth = GameInstance.GetStatPoolsSystem(instigator.GetGame()).GetStatPoolValue(Cast<StatsObjectID>(instigator.GetEntityID()), gamedataStatPoolType.Health, true);
        
        if currentHealth > 0.0 && maxHealth > 0.0 {
            if (currentHealth / maxHealth) > 0.98 {
                isFirstHit = true;
            }
        }
    }
    
    let result = wrappedMethod(evt);
    
    if isFirstHit && IsDefined(instigator) {
        GameObject.PlaySoundEvent(instigator, n"lilith_horseman_spawn");
        GameObject.PlaySoundEvent(instigator, n"lyra_horseman_warning");
        GameObjectEffectHelper.StartEffectEvent(instigator, n"boss_spawn_effect");
        
        Game.GetAudioSystem().PlaySound("lilith_horseman_spawn", instigator.GetWorldPosition());
        Game.GetAudioSystem().PlaySound("lyra_horseman_warning", instigator.GetWorldPosition());
    }
    
    return result;
}

// Hook when quickhacked (if player opens with a quickhack instead of shooting)
@wrapMethod(ScriptedPuppet)
protected cb func OnQuickHackTriggered(evt: ref<QuickHackEvent>) -> Bool {
    let isHorseman = this.IsMSNHorseman();
    let isFirstHit = false;
    
    if isHorseman {
        let currentHealth = GameInstance.GetStatPoolsSystem(this.GetGame()).GetStatPoolValue(Cast<StatsObjectID>(this.GetEntityID()), gamedataStatPoolType.Health, false);
        let maxHealth = GameInstance.GetStatPoolsSystem(this.GetGame()).GetStatPoolValue(Cast<StatsObjectID>(this.GetEntityID()), gamedataStatPoolType.Health, true);
        
        if currentHealth > 0.0 && maxHealth > 0.0 {
            if (currentHealth / maxHealth) > 0.98 {
                isFirstHit = true;
            }
        }
    }
    
    let result = wrappedMethod(evt);
    
    if isHorseman && isFirstHit {
        GameObject.PlaySoundEvent(this, n"lilith_horseman_spawn");
        GameObject.PlaySoundEvent(this, n"lyra_horseman_warning");
        GameObjectEffectHelper.StartEffectEvent(this, n"boss_spawn_effect");
        
        Game.GetAudioSystem().PlaySound("lilith_horseman_spawn", this.GetWorldPosition());
        Game.GetAudioSystem().PlaySound("lyra_horseman_warning", this.GetWorldPosition());
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

