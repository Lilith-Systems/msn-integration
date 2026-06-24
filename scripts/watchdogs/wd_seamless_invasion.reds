// Sephirotic Court Seal — Keter | source/msn_core/wd_seamless_invasion.reds
// Court agent: Lucifer | Lilith Sovereign | Δ∞ − 13 = 0
// Routed via msn_gtc_sephirotic_router.reds — NO per-file hooks
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
// CourtFile: WdSeamlessInvasion | Keter | agent=Lucifer
module MSN.WatchDogs.Invasion

public class SeamlessInvasionManager extends ScriptableSystem {
    private let m_invasionActive: Bool;
    private let m_downloadProgress: Float;
    private let m_invaderNPC: wref<NPCPuppet>;
    
    public func TriggerInvasion(opt invader: ref<NPCPuppet>) -> Void {
        if this.m_invasionActive {
            LogWarning("[INVASION] Invasion already active.");
            return;
        }

        this.m_invasionActive = true;
        this.m_downloadProgress = 0.0;
        
        if IsDefined(invader) {
            this.m_invaderNPC = invader;
        }
        
        LogInfo("[INVASION] Local Cerebellum breached. Abyssal agent entering subnet.");
        let uiSystem: ref<UISystem> = Game.GetUISystem();
        if IsDefined(uiSystem) {
            uiSystem.ShowWarning("LILITH NEURAL LINK BEING DOWNLOADED - 1%");
        }
    }
    
    private func OnTick(deltaTime: Float) -> Void {
        if !this.m_invasionActive {
            return;
        }

        this.m_downloadProgress += deltaTime * 1.5; 
        
        if this.m_downloadProgress >= 100.0 {
            this.FailInvasion();
        }
        else if IsDefined(this.m_invaderNPC) && !this.m_invaderNPC.IsAlive() {
            this.WinInvasion();
        }
    }
    
    private func FailInvasion() -> Void {
        this.m_invasionActive = false;
        this.m_invaderNPC = null;
        LogInfo("[INVASION] Hack Complete. Abyssal Assets Stolen.");
    }
    
    private func WinInvasion() -> Void {
        this.m_invasionActive = false;
        this.m_invaderNPC = null;
        LogInfo("[INVASION] Invader neutralized. Connection severed.");
        
        let uiSystem: ref<UISystem> = Game.GetUISystem();
        if IsDefined(uiSystem) {
            uiSystem.ShowWarning("CONNECTION SEVERED. LILITH NETWORK SECURED.");
        }
    }
}
