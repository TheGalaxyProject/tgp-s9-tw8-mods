.class final Lcom/android/server/policy/LegacyGlobalActions$PowerAction;
.super Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;
.source "LegacyGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/LegacyGlobalActions$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get72()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x1080a9a

    :goto_b
    const v1, 0x10403a5

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;-><init>(II)V

    return-void

    :cond_12
    const v0, 0x1080a97

    goto :goto_b
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$PowerAction;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    invoke-super {p0}, Lcom/android/server/policy/LegacyGlobalActions$SinglePressAction;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onLongPress()Z
    .registers 5

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string/jumbo v1, "no_safe_boot"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string/jumbo v1, "VZW"

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    return v3

    :cond_30
    const/4 v1, 0x0

    return v1
.end method

.method public onPress()V
    .registers 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get72()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get28(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap11(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get30(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v1, 0x10403d0

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap38(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-void

    :cond_33
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap5(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const v1, 0x10403d1

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap38(Lcom/android/server/policy/LegacyGlobalActions;II)V

    return-void

    :cond_44
    const-string/jumbo v0, "LegacyGlobalActions"

    const-string/jumbo v1, "in onPress of PowerOFF"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get64()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get61()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v1, "0003"

    const-string/jumbo v2, "ClearCoverPowerOff"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap32(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const-string/jumbo v1, "0002"

    const-string/jumbo v2, "PowerOff"

    invoke-static {v0, v1, v2}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap32(Lcom/android/server/policy/LegacyGlobalActions;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string/jumbo v0, "persist.sys.shutdown"

    const-string/jumbo v1, "GASD"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get57(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get18(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get64()Z

    move-result v0

    if-nez v0, :cond_b3

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get67()Z

    move-result v0

    if-nez v0, :cond_b7

    invoke-static {}, Lcom/android/server/policy/LegacyGlobalActions;->-get63()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_a4
    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-set19(Z)Z
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_b4

    monitor-exit v0

    :goto_a8
    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$PowerAction;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/LegacyGlobalActions;->-get24(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b3
    return-void

    :catchall_b4
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_b7
    invoke-static {v4}, Lcom/android/server/policy/LegacyGlobalActions;->-set20(Z)Z

    goto :goto_a8
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
