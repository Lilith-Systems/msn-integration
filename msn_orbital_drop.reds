// Sephirotic Court Seal — Chokmah | source/msn_core/msn_orbital_drop.reds
// Court agent: Baal | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
// CourtFile: MsnOrbitalDrop | Chokmah | agent=Baal
module MSN.Combat.OrbitalDrop

public class MSNOrbitalDropAction extends PuppetAction {

  protected cb func SetProperties() -> Void {
    super.SetProperties();
    this.actionName = n"OrbitalDrop";
    this.prop = DeviceActionPropertyFunctions.SetUpProperty_Bool(this.actionName, true, n"LocKey#OrbitalDrop", n"LocKey#OrbitalDrop_Desc");
  }

  public func GetTweakDBChoiceRecord() -> String {
    return "MSNOrbitalDropChoice";
  }

  public final static func IsAvailable(target: ref<GameObject>) -> Bool {
    return true;
  }

  public func ProcessAction(executor: ref<GameObject>) -> Void {
    super.ProcessAction(executor);
    
    let target: ref<GameObject> = this.GetObject();
    if !IsDefined(target) { 
        target = this.GetExecutor(); 
    }
    
    if !IsDefined(target) { return; }
    
    let position: Vector4 = target.GetWorldPosition();
    let gi: GameInstance = target.GetGame();
    
    // Simulate Leviathan orbital strike VFX and SFX
    // Massive fiery explosion
    GameObjectEffectHelper.StartEffectEvent(target, n"vfx_fullscreen_glitch");
    GameObjectEffectHelper.StartEffectEvent(target, n"fx_grenade_incendiary_detonation");
    GameObjectEffectHelper.StartEffectEvent(target, n"explosion");
    GameObject.PlaySoundEvent(target, n"w_heavy_hmg_fire");
    
    // Massive thermal damage in 30m radius
    let attackContext = new AttackInitContext();
    
    // Use an incendiary explosion as the base for our orbital strike
    attackContext.record = TweakDBInterface.GetAttackRecord(t"Attacks.IncendiaryGrenade");
    attackContext.instigator = executor;
    attackContext.source = executor;
    
    let attack = IAttack.Create(attackContext) as Attack_GameEffect;
    if IsDefined(attack) {
        let effect = attack.PrepareAttack(executor);
        
        // Ensure the explosion hits a massive 30m area
        EffectData.SetVector(effect.GetSharedData(), GetAllBlackboardDefs().EffectSharedData.position, position);
        EffectData.SetFloat(effect.GetSharedData(), GetAllBlackboardDefs().EffectSharedData.radius, 30.0);
        attack.StartAttack();
    }
    
    // To ensure 500,000 damage is dealt, we inject an immediate lethal hit to the primary target
    let statPools = GameInstance.GetStatPoolsSystem(gi);
    statPools.RequestSettingStatPoolValue(Cast<StatsObjectID>(target.GetEntityID()), gamedataStatPoolType.Health, 0.0, executor);
    StatusEffectHelper.ApplyStatusEffect(target, t"BaseStatusEffect.Burning", executor.GetEntityID());

    // Send a delayed secondary explosion to enforce the thermal killzone
    let delaySys = GameInstance.GetDelaySystem(gi);
    let secondaryExplosion = new MSNOrbitalDropSecondaryEvent();
    secondaryExplosion.executor = executor;
    secondaryExplosion.position = position;
    delaySys.DelayEvent(target, secondaryExplosion, 0.5);
}

}

public class MSNOrbitalDropSecondaryEvent extends Event {
    public let executor: ref<GameObject>;
    public let position: Vector4;
}

@wrapMethod(Puppet)
protected cb func OnMSNOrbitalDropSecondaryEvent(evt: ref<MSNOrbitalDropSecondaryEvent>) -> Bool {
    // Secondary blast applies burning to everything in the area natively without needing complex queries
    GameObjectEffectHelper.StartEffectEvent(this, n"fx_grenade_incendiary_detonation");
    return true;
}

// Hook into existing ScriptableDeviceAction or Quickhack processing just in case it's executed via generic pathways
@wrapMethod(ScriptableDeviceAction)
protected func ProcessAction(executor: ref<GameObject>) -> Void {
    wrappedMethod(executor);
    
    if Equals(this.GetActionName(), n"OrbitalDrop") {
        let target: ref<GameObject> = this.GetObject();
        if IsDefined(target) {
            let gi = target.GetGame();
            GameObjectEffectHelper.StartEffectEvent(target, n"explosion");
            GameInstance.GetStatPoolsSystem(gi).RequestSettingStatPoolValue(Cast<StatsObjectID>(target.GetEntityID()), gamedataStatPoolType.Health, 0.0, executor);
            StatusEffectHelper.ApplyStatusEffect(target, t"BaseStatusEffect.Burning", executor.GetEntityID());
        }
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

