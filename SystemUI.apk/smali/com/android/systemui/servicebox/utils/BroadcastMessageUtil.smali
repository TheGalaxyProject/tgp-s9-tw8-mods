.class public Lcom/android/systemui/servicebox/utils/BroadcastMessageUtil;
.super Ljava/lang/Object;
.source "BroadcastMessageUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendFullWindowStateChanged(Landroid/content/Context;Z)V
    .registers 3

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {p0, v0}, Lcom/android/systemui/servicebox/utils/BroadcastMessageUtil;->sendStateChanged(Landroid/content/Context;I)V

    return-void
.end method

.method public static sendStateChanged(Landroid/content/Context;I)V
    .registers 4

    if-nez p0, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.keyguard.servicebox.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
