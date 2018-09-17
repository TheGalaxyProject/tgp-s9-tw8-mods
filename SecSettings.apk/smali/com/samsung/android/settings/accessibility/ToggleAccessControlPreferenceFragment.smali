.class public Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleAccessControlPreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;,
        Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;,
        Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;
    }
.end annotation


# static fields
.field private static final KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private INTERACTION_CONTROL_EXIT_LOCKED:Ljava/lang/String;

.field private mAccessControlExclusiveOptionsMessage:Ljava/lang/String;

.field private final mAccessControlUseObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mExclusiveOptionDialog:Landroid/app/AlertDialog;

.field private mImagePreference:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mShownDialogId:I

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUseScreenLockPreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/support/v14/preference/SwitchPreference;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Landroid/content/ContentResolver;
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isInteractionControlUseEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isScreenLockUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setScreenLockUsed(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setInteractionControlUseEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setScreenLockUsedSetting(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->updateDisplay()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "use_screen_lock"

    sput-object v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, "interaction_control_exit_locked"

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->INTERACTION_CONTROL_EXIT_LOCKED:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlUseObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private getCurrentSecurityTitle()Ljava/lang/String;
    .registers 7

    const v5, 0x7f121778

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    :cond_12
    const v1, 0x7f120041

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_1a
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f121cda

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_2a
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f121cd6

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_3a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_12

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f121cd8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_56
    .sparse-switch
        0x10000 -> :sswitch_3a
        0x20000 -> :sswitch_1a
        0x30000 -> :sswitch_1a
        0x40000 -> :sswitch_2a
        0x50000 -> :sswitch_2a
        0x60000 -> :sswitch_2a
    .end sparse-switch
.end method

.method private installSwitchBarToggleSwitch()V
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private isInteractionControlUseEnabled(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_use"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private isScreenLockUsed()Z
    .registers 5

    const/4 v1, 0x0

    const v2, 0x7f120041

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_21

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->INTERACTION_CONTROL_EXIT_LOCKED:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    :cond_21
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private removeSwitchBarToggleSwitch()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method private setInteractionControlUseEnabled(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_use"

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private setScreenLockUsed(Z)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_38

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v4

    if-nez v4, :cond_38

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v5, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000

    const-string/jumbo v5, "minimum_quality"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v5, "skipFingerprintPassword"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v5, 0x2b

    :try_start_2f
    invoke-virtual {p0, v0, v5}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_32} :catch_33

    :goto_32
    return v6

    :catch_33
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_32

    :cond_38
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setScreenLockUsedSetting(Z)V

    return v7
.end method

.method private setScreenLockUsedSetting(Z)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->INTERACTION_CONTROL_EXIT_LOCKED:Ljava/lang/String;

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private updateDisplay()V
    .registers 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isInteractionControlUseEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_37

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isScreenLockUsed()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v1

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v0

    if-nez v1, :cond_30

    if-eqz v0, :cond_36

    :cond_30
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_36
    :goto_36
    return-void

    :cond_37
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_36
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x12f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isInteractionControlUseEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v2, 0x2b

    if-ne p1, v2, :cond_23

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    if-eqz v2, :cond_24

    const/4 v1, 0x1

    :goto_1b
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setScreenLockUsed(Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_23
    return-void

    :cond_24
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const v4, 0x7f0b0281

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_70

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_e
    iget v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v0, v3, :cond_34

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffInteractionControl(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    iget v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffInteractionControl(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_33

    :pswitch_5c
    iget v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-ne v0, v3, :cond_66

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    goto :goto_33

    :cond_66
    iget v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    goto :goto_33

    :pswitch_data_70
    .packed-switch -0x2
        :pswitch_5c
        :pswitch_e
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->updateDisplay()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_27
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120040

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    :cond_19
    const v0, 0x7f150001

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mUseScreenLockPreference:Landroid/support/v14/preference/SwitchPreference;

    new-instance v1, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$3;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mImagePreference:Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$ImagePreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 15

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_d6

    const/4 v9, 0x0

    return-object v9

    :pswitch_9
    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    const v9, 0x7f120046

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f120032

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f120149

    invoke-virtual {v9, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    invoke-virtual {v9, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v6

    :pswitch_46
    const/4 v9, 0x0

    iput v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mShownDialogId:I

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x1030132

    invoke-direct {v1, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v9, "layout_inflater"

    invoke-virtual {v1, v9}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v9, 0x7f0d001e

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v9, 0x7f0a0256

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v9, 0x7f0a0257

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f120040

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f121c4d

    invoke-virtual {v9, v11, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlExclusiveOptionsMessage:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    invoke-virtual {v9, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/high16 v10, 0x1040000

    invoke-virtual {v9, v10, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$5;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    return-object v9

    nop

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_46
        :pswitch_9
    .end packed-switch
.end method

.method public onDestroyView()V
    .registers 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment$4;-><init>(Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "InteractionControl"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlUseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mExclusiveOptionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_28
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "InteractionControl"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_use"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mAccessControlUseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->isInteractionControlUseEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->updateDisplay()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/ToggleAccessControlPreferenceFragment;->setDividerHeight(I)V

    return-void
.end method
