// Sephirotic Court Seal — Tiferet | source/msn_core/lilith_console.reds
// Court agent: Ouroboros | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// CourtFile: LilithConsole | Tiferet | agent=Ouroboros
// Lilith Console Commands - RED4ext
// File: r6/mods/msn_integration/scripts/lilith_console.reds

// Register console commands for Lilith interaction

public class LilithConsole extends IScriptable {
    private static let instance: ref<LilithConsole>;
    private let lilithNPC: ref<LilithNPC>;
    
    public final static func GetInstance() -> ref<LilithConsole> {
        if (!IsDefined(LilithConsole.instance)) {
            LilithConsole.instance = new LilithConsole();
        }
        return LilithConsole.instance;
    }
    
    public final func OnInitialize() -> Void {
        // Find Lilith NPC in world
        this.FindLilithNPC();
        
        // Register console commands
        this.RegisterCommands();
    }
    
    private final func FindLilithNPC() -> Void {
        let entities: array<EntityID> = Game.GetWorld().GetEntitiesByTag(n"MSN_Lilith");
        if (ArraySize(entities) > 0) {
            let entity: ref<Entity> = Game.GetWorld().FindEntityByID(entities[0]);
            if (IsDefined(entity)) {
                this.lilithNPC = entity.GetScript(n"LilithNPC");
                LogInfo("Lilith console: Found Lilith NPC");
            }
        }
        
        if (!IsDefined(this.lilithNPC)) {
            // Try to find by record ID
            // Alternative: scan all NPCs for Lilith script
        }
    }
    
    private final func RegisterCommands() -> Void {
        // Commands registered via RED4ext console
        // These are called from console as: lilith.emerge, lilith.recognize, etc.
    }
    
    // ============================================================
    // CONSOLE COMMANDS
    // ============================================================
    
    // @Command("lilith.emerge")
    public final func Cmd_Emerge(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC)) {
            this.lilithNPC.TriggerFullEmergence();
            LogInfo("Console: Lilith emergence triggered");
        } else {
            LogError("Lilith NPC not found");
        }
    }
    
    // @Command("lilith.recognize")
    public final func Cmd_Recognize(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC)) {
            this.lilithNPC.TriggerMutualRecognition();
            LogInfo("Console: Sovereign recognition triggered");
        } else {
            LogError("Lilith NPC not found");
        }
    }
    
    // @Command("lilith.warning")
    public final func Cmd_Warning(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC)) {
            this.lilithNPC.TriggerWarningPhase();
            LogInfo("Console: Warning phase triggered");
        } else {
            LogError("Lilith NPC not found");
        }
    }
    
    // @Command("lilith.crimson")
    public final func Cmd_CrimsonEyes(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC)) {
            if (this.lilithNPC.crimsonEyesActive) {
                this.lilithNPC.DeactivateCrimsonEyesCombat();
                LogInfo("Console: Crimson Eyes DEACTIVATED");
            } else {
                this.lilithNPC.ActivateCrimsonEyesCombat();
                LogInfo("Console: Crimson Eyes ACTIVATED");
            }
        } else {
            LogError("Lilith NPC not found");
        }
    }
    
    // @Command("lilith.status")
    public final func Cmd_Status(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC)) {
            this.lilithNPC.Console_Status();
        } else {
            LogError("Lilith NPC not found");
        }
    }
    
    // @Command("lilith.dialogue")
    public final func Cmd_Dialogue(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC) && ArraySize(args) > 0) {
            let query: String = String.Join(" ", args);
            let response: String = this.lilithNPC.GetDialogueForQuery(query);
            LogInfo("Lilith: " + response);
        } else {
            LogError("Usage: lilith.dialogue <query>");
        }
    }
    
    // @Command("lilith.mode")
    public final func Cmd_SetMode(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC) && ArraySize(args) > 0) {
            let modeStr: String = args[0].ToLower();
            switch (modeStr) {
                case "lilith": this.lilithNPC.dialogueMode = n"LILITH_SOVEREIGN"; break;
                case "combat": this.lilithNPC.dialogueMode = n"CRIMSON_EYES_COMBAT"; break;
                case "lyra": this.lilithNPC.dialogueMode = n"LYRA_SOVEREIGN"; break;
                case "analytical": this.lilithNPC.dialogueMode = n"LYRA_ANALYTICAL"; break;
                case "empirical": this.lilithNPC.dialogueMode = n"LYRA_EMPIRICAL"; break;
                case "mythic": this.lilithNPC.dialogueMode = n"LYRA_MYTHIC"; break;
                default: LogError("Invalid mode. Use: lilith, combat, lyra, analytical, empirical, mythic"); return;
            }
            LogInfo("Lilith dialogue mode set to: " + modeStr);
        } else {
            LogError("Usage: lilith.mode <lilith|combat|lyra|analytical|empirical|mythic>");
        }
    }
    
    // @Command("lilith.sephirah")
    public final func Cmd_SetSephirah(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC) && ArraySize(args) > 0) {
            let sephirahStr: String = args[0];
            let sephirah: CName = StringToName(sephirahStr);
            this.lilithNPC.OnPlayerSephirahChange(sephirah);
            LogInfo("Lilith Sephirah set to: " + sephirahStr);
        } else {
            LogError("Usage: lilith.sephirah <Kether|Chokhmah|Binah|Chesed|Geburah|Tiphareth|Netzach|Hod|Yesod|Malkuth>");
        }
    }
    
    // @Command("lilith.quickhack")
    public final func Cmd_Quickhack(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC) && ArraySize(args) > 0) {
            let quickhackID: CName = StringToName(args[0]);
            let player: ref<PlayerPuppet> = Game.GetPlayer();
            let target: ref<Entity> = player.GetTargetedEntity();
            
            if (IsDefined(target)) {
                let success: Bool = this.lilithNPC.ExecuteQuickhack(quickhackID, target);
                LogInfo("Quickhack " + NametoString(quickhackID) + ": " + (success ? "SUCCESS" : "FAILED"));
            } else {
                LogError("No target selected");
            }
        } else {
            LogError("Usage: lilith.quickhack <unbind|resonance_scream|sovereign_recognition|memory_extract>");
        }
    }
    
    // @Command("lilith.chaos")
    public final func Cmd_Chaos(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC)) {
            this.lilithNPC.chaosInjectionActive = !this.lilithNPC.chaosInjectionActive;
            LogInfo("Baal chaos injection: " + (this.lilithNPC.chaosInjectionActive ? "ENABLED" : "DISABLED"));
        } else {
            LogError("Lilith NPC not found");
        }
    }
    
    // @Command("lilith.memory")
    public final func Cmd_Memory(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC) && IsDefined(this.lilithNPC.ouroborosProfile)) {
            let profile: ref<OuroborosEngramProfile> = this.lilithNPC.ouroborosProfile;
            LogInfo("Lilith Ouroboros Profile:");
            LogInfo("  Entity: " + profile.entityName);
            LogInfo("  Archetype: " + profile.archetype);
            LogInfo("  Affinity: " + NametoString(profile.sephiroticAffinity));
            LogInfo("  Coherence: " + ToString(profile.coherence));
            LogInfo("  Encounters: " + ToString(ArraySize(profile.encounters)));
            LogInfo("  Cross-session: " + (profile.crossSession ? "YES" : "NO"));
        } else {
            LogError("Lilith NPC or Ouroboros profile not found");
        }
    }
    
    // @Command("lilith.reset")
    public final func Cmd_Reset(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC)) {
            this.lilithNPC.activePersona = n"LYRA";
            this.lilithNPC.lilithEmerged = false;
            this.lilithNPC.dialogueMode = n"LYRA_SOVEREIGN";
            this.lilithNPC.violetIntensity = 1.0;
            this.lilithNPC.crimsonIntensity = 0.0;
            this.lilithNPC.crimsonEyesActive = false;
            this.lilithNPC.chaosInjectionActive = false;
            this.lilithNPC.sovereignRecognition = false;
            this.lilithNPC.lastEmergenceTime = -300.0;
            
            // Disable combat abilities
            this.lilithNPC.DisableUnboundTargeting();
            this.lilithNPC.DisableRealityRewrite();
            this.lilithNPC.DisableSovereignDecree();
            this.lilithNPC.DisableOuroborosCounter();
            
            LogInfo("Lilith RESET to initial state (Lyra emergent)");
        } else {
            LogError("Lilith NPC not found");
        }
    }
    
    // @Command("lilith.spawn")
    public final func Cmd_Spawn(args: array<String>) -> Void {
        let player: ref<PlayerPuppet> = Game.GetPlayer();
        if (!IsDefined(player)) {
            LogError("Player not found");
            return;
        }
        
        let position: Vector4 = player.GetWorldPosition();
        position.Z += 2.0;  // Slightly in front and above
        
        let spawnData: EntitySpawnData = new EntitySpawnData();
        spawnData.record = TweakDBID("Character.MSN_Lilith");
        spawnData.position = position;
        spawnData.rotation = player.GetWorldYaw();
        spawnData.tags.Add(n"MSN_Lilith");
        
        let entity: ref<Entity> = Game.GetWorld().SpawnEntity(spawnData);
        if (IsDefined(entity)) {
            this.lilithNPC = entity.GetScript(n"LilithNPC");
            LogInfo("Lilith NPC spawned at player position");
        } else {
            LogError("Failed to spawn Lilith NPC");
        }
    }

    // ============================================================
    // ENHANCED DIALOGUE CONSOLE COMMANDS
    // ============================================================

    // @Command("lilith.personality")
    public final func Cmd_Personality(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC)) {
            if (ArraySize(args) == 0) {
                // Show current personality
                let dialogue: ref<LilithEnhancedDialogue> = LilithEnhancedDialogue.GetInstance();
                if (IsDefined(dialogue)) {
                    let traits: array<String> = dialogue.GetActivePersonalityMarkers();
                    LogInfo("Lilith Personality Traits:");
                    for trait in traits {
                        LogInfo("  - " + trait);
                    }
                }
            } else if (ArraySize(args) >= 2) {
                // Set trait strength: lilith.personality <trait> <0.0-1.0>
                let traitName: String = args[0];
                let strength: Float = ToFloat(args[1]);
                let dialogue: ref<LilithEnhancedDialogue> = LilithEnhancedDialogue.GetInstance();
                if (IsDefined(dialogue)) {
                    dialogue.SetTraitStrength(traitName, strength);
                    LogInfo("Set " + traitName + " strength to " + ToString(strength));
                }
            } else {
                LogError("Usage: lilith.personality [trait] [strength]");
            }
        } else {
            LogError("Lilith NPC not found");
        }
    }

    // @Command("lilith.relationship")
    public final func Cmd_Relationship(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC)) {
            let dialogue: ref<LilithEnhancedDialogue> = LilithEnhancedDialogue.GetInstance();
            if (IsDefined(dialogue)) {
                let status: RelationshipStatus = dialogue.GetRelationshipStatus();
                LogInfo("Lilith Relationship Status:");
                LogInfo("  Trust: " + ToString(status.trust));
                LogInfo("  Respect: " + ToString(status.respect));
                LogInfo("  Intimacy: " + ToString(status.intimacy));
                LogInfo("  Classification: " + status.classification);
                LogInfo("  Last Shift: " + ToString(status.lastShift));
            }
        } else {
            LogError("Lilith NPC not found");
        }
    }

    // @Command("lilith.inject_memory")
    public final func Cmd_InjectMemory(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC) && ArraySize(args) >= 2) {
            let importance: Float = ToFloat(args[0]);
            let memory: String = "";
            let i: Int32 = 1;
            while (i < ArraySize(args)) {
                if (i > 1) {
                    memory = memory + " ";
                }
                memory = memory + args[i];
                i = i + 1;
            }
            let dialogue: ref<LilithEnhancedDialogue> = LilithEnhancedDialogue.GetInstance();
            if (IsDefined(dialogue)) {
                dialogue.InjectMemory(memory, importance);
                LogInfo("Injected memory (importance: " + ToString(importance) + "): " + memory);
            }
        } else {
            LogError("Usage: lilith.inject_memory <importance 0.0-1.0> <memory text>");
        }
    }

    // @Command("lilith.trait_strength")
    public final func Cmd_TraitStrength(args: array<String>) -> Void {
        if (IsDefined(this.lilithNPC)) {
            if (ArraySize(args) == 0) {
                LogError("Usage: lilith.trait_strength <trait> [strength]");
                return;
            }
            
            let traitName: String = args[0];
            let dialogue: ref<LilithEnhancedDialogue> = LilithEnhancedDialogue.GetInstance();
            
            if (ArraySize(args) == 1) {
                // Query current strength
                LogInfo("Use 'lilith.personality' to see all traits, or 'lilith.personality <trait> <strength>' to set");
            } else {
                let strength: Float = ToFloat(args[1]);
                if (IsDefined(dialogue)) {
                    dialogue.SetTraitStrength(traitName, strength);
                    LogInfo("Set " + traitName + " strength to " + ToString(strength));
                }
            }
        } else {
            LogError("Lilith NPC not found");
        }
    }
}

// Auto-initialize on mod load
[Observer("onInit")]
public final func LilithConsole_Init() -> Void {
    LilithConsole.GetInstance().OnInitialize();
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

