.class public Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;
.super Lcom/android/settings/SettingsActivity;
.source "KnoxChooseLockTwoFactor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;
    }
.end annotation


# instance fields
.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 6

    new-instance v1, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v3, ":settings:show_fragment"

    const-class v4, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isFullScreenSupported()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2e
    const-string/jumbo v3, ":android:no_headers"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v1
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .registers 3

    const-class v0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->intent:Landroid/content/Intent;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x4

    if-ne p1, v1, :cond_39

    invoke-static {}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get5()Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get3(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get7()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_39

    :cond_23
    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get7()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_39

    const/4 v1, 0x1

    return v1

    :cond_39
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_e
    invoke-static {}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get5()Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get3(Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-static {}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get7()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_2e
    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor$KnoxChooseLockTwoFactorFragment;->-get7()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_43

    return v4

    :cond_43
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/KnoxChooseLockTwoFactor;->finish()V

    return v4

    :pswitch_data_4a
    .packed-switch 0x102002c
        :pswitch_e
    .end packed-switch
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    return-void
.end method
