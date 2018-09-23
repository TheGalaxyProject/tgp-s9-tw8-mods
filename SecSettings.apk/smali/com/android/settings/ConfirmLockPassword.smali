.class public Lcom/android/settings/ConfirmLockPassword;
.super Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;
.source "ConfirmLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;,
        Lcom/android/settings/ConfirmLockPassword$InternalActivity;
    }
.end annotation


# static fields
.field private static final DETAIL_TEXTS:[I

.field private static mAppLock_isPin:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mPersonalPage_isPin:Z


# direct methods
.method static synthetic -get0()[I
    .registers 1

    sget-object v0, Lcom/android/settings/ConfirmLockPassword;->DETAIL_TEXTS:[I

    return-object v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPassword;->mAppLock_isPin:Z

    return v0
.end method

.method static synthetic -get2()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPassword;->mFromAppLock:Z

    return v0
.end method

.method static synthetic -get3()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPassword;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get4()Z
    .registers 1

    sget-boolean v0, Lcom/android/settings/ConfirmLockPassword;->mPersonalPage_isPin:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/settings/ConfirmLockPassword;->mAppLock_isPin:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/settings/ConfirmLockPassword;->mFromAppLock:Z

    return p0
.end method

.method static synthetic -set2(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/settings/ConfirmLockPassword;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic -set3(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/settings/ConfirmLockPassword;->mPersonalPage_isPin:Z

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/settings/ConfirmLockPassword;->DETAIL_TEXTS:[I

    sput-boolean v1, Lcom/android/settings/ConfirmLockPassword;->mFromPersonalPage:Z

    sput-boolean v1, Lcom/android/settings/ConfirmLockPassword;->mPersonalPage_isPin:Z

    sput-boolean v1, Lcom/android/settings/ConfirmLockPassword;->mFromAppLock:Z

    sput-boolean v1, Lcom/android/settings/ConfirmLockPassword;->mAppLock_isPin:Z

    return-void

    nop

    :array_14
    .array-data 4
        0x7f120638
        0x7f120637
        0x7f121064
        0x7f121050
        0x7f12108f
        0x7f12108d
        0x7f121092
        0x7f121090
    .end array-data
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

    const-class v2, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

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

    const-class v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

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

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->isFloating()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_1c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2d

    invoke-static {}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get3()Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get12()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_1d
    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get12()I

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
    invoke-static {}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get3()Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get12()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-nez v1, :cond_26

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_26
    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-get12()I

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

.method public onWindowFocusChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity;->onWindowFocusChanged(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPassword;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0a04f6

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_19

    instance-of v1, v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    if-eqz v1, :cond_19

    check-cast v0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->onWindowFocusChanged(Z)V

    :cond_19
    return-void
.end method
