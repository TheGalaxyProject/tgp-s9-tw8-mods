.class Lcom/android/systemui/util/ShortcutManager$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 7

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v1}, Lcom/android/systemui/util/ShortcutManager;->-get1(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v1}, Lcom/android/systemui/util/ShortcutManager;->-get0(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    :goto_1a
    invoke-static {v2, v1}, Lcom/android/systemui/util/ShortcutManager;->-set0(Lcom/android/systemui/util/ShortcutManager;Z)Z

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v1}, Lcom/android/systemui/util/ShortcutManager;->-get1(Lcom/android/systemui/util/ShortcutManager;)Z

    move-result v1

    if-eq v0, v1, :cond_2a

    iget-object v1, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    :cond_2a
    return-void

    :cond_2b
    const/4 v1, 0x0

    goto :goto_1a
.end method

.method public onStartedWakingUp(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isLeftShortcutForLiveIcon()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->isRightShortcutForLiveIcon()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V

    :cond_1c
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$2;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    return-void
.end method
