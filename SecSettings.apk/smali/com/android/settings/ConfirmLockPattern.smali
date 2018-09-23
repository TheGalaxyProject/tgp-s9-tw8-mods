.class public Lcom/android/settings/ConfirmLockPattern;
.super Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;,
        Lcom/android/settings/ConfirmLockPattern$InternalActivity;,
        Lcom/android/settings/ConfirmLockPattern$Stage;
    }
.end annotation


# static fields
.field private static mFromPersonalPage:Z

.field private static mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get1()Lcom/android/settings/ConfirmLockPattern$Stage;
    .registers 1

    sget-object v0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/settings/ConfirmLockPattern$Stage;)Lcom/android/settings/ConfirmLockPattern$Stage;
    .registers 1

    sput-object p0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    sput-object v0, Lcom/android/settings/ConfirmLockPattern;->mUiStage:Lcom/android/settings/ConfirmLockPattern$Stage;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ConfirmLockPattern;->mFromPersonalPage:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .registers 3

    const-class v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

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

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2d

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get5()Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get14()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_1d
    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get14()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_2d

    const/4 v1, 0x1

    return v1

    :cond_2d
    invoke-super {p0, p1, p2}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_36

    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_c
    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get5()Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get14()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_26
    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get14()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    return v1

    :pswitch_data_36
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
