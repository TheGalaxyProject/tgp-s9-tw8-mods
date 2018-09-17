.class public Lcom/android/settings/SecuritySettings$SecuritySubSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecuritySubSettings"
.end annotation


# static fields
.field private static final SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mLockAfter:Lcom/android/settings/TimeoutListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

.field private mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

.field private mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

.field private mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lock_after_timeout"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "visiblepattern"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "power_button_instantly_locks"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private createPreferenceHierarchy()V
    .registers 10

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v5, "lock_after_timeout"

    invoke-virtual {p0, v5}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/TimeoutListPreference;

    iput-object v5, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    iget-object v5, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    if-eqz v5, :cond_3e

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->setupLockAfterPreference()V

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->updateLockAfterPreferenceSummary()V

    :cond_3e
    const-string/jumbo v5, "visiblepattern"

    invoke-virtual {p0, v5}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    const-string/jumbo v5, "power_button_instantly_locks"

    invoke-virtual {p0, v5}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v14/preference/SwitchPreference;

    iput-object v5, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    iget-object v7, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v5, v6, v7, v8}, Lcom/android/settings/SecuritySettings;->-wrap1(Landroid/content/Context;Lcom/android/settings/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v5, :cond_80

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_80

    iget-object v5, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const v7, 0x7f1210ae

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_80
    iget-object v5, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/security/OwnerInfoPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    iget-object v5, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {v5}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateEnableState()V

    const/4 v0, 0x0

    :goto_8f
    sget-object v5, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_a4

    sget-object v5, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->SWITCH_PREFERENCE_KEYS:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {p0, v5}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_a1

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a1
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    :cond_a4
    return-void
.end method

.method private static getResIdForLockUnlockSubScreen(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/settings/ManagedLockPasswordProvider;)I
    .registers 4

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    :cond_15
    const/4 v0, 0x0

    return v0

    :sswitch_17
    const v0, 0x7f1500f1

    return v0

    :sswitch_1b
    const v0, 0x7f1500f5

    return v0

    :sswitch_1f
    const v0, 0x7f1500ee

    return v0

    :sswitch_23
    invoke-virtual {p2}, Lcom/android/settings/ManagedLockPasswordProvider;->getResIdForLockUnlockSubScreen()I

    move-result v0

    return v0

    :cond_28
    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_15

    const v0, 0x7f1500fa

    return v0

    :sswitch_data_36
    .sparse-switch
        0x10000 -> :sswitch_17
        0x20000 -> :sswitch_1b
        0x30000 -> :sswitch_1b
        0x40000 -> :sswitch_1f
        0x50000 -> :sswitch_1f
        0x60000 -> :sswitch_1f
        0x80000 -> :sswitch_23
    .end sparse-switch
.end method

.method private setupLockAfterPreference()V
    .registers 15

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v10, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v1, v10, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_4f

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v10, "screen_off_timeout"

    invoke-static {v1, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v6, v1

    const-wide/16 v10, 0x0

    sub-long v12, v2, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_4f
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .registers 15

    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v10

    if-eqz v10, :cond_15

    const v10, 0x7f120871

    invoke-virtual {p0, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_f
    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10, v5}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "lock_screen_lock_after_timeout"

    const-wide/16 v12, 0x1388

    invoke-static {v10, v11, v12, v13}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v10, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockAfter:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v10}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_30
    array-length v10, v9

    if-ge v4, v10, :cond_49

    aget-object v10, v9, v4

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v10, v2, v6

    if-ltz v10, :cond_46

    move v0, v4

    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_49
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    iget-object v12, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v13, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v10, v11, v12, v13}, Lcom/android/settings/SecuritySettings;->-wrap1(Landroid/content/Context;Lcom/android/settings/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_93

    aget-object v10, v9, v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_7f

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    const v11, 0x7f120fec

    invoke-virtual {p0, v11, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_7f
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const v11, 0x7f120fe4

    invoke-virtual {p0, v11, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_f

    :cond_93
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aget-object v11, v1, v0

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f120fe3

    invoke-virtual {p0, v11, v10}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_f
.end method


# virtual methods
.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x57

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/trustagent/TrustAgentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/android/settings/security/OwnerInfoPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    return-void
.end method

.method public onOwnerInfoUpdated()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "power_button_instantly_locks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    :cond_1c
    :goto_1c
    const/4 v3, 0x1

    return v3

    :cond_1e
    const-string/jumbo v3, "lock_after_timeout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :try_start_2d
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lock_screen_lock_after_timeout"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_37} :catch_3e

    :goto_37
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->setupLockAfterPreference()V

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->updateLockAfterPreferenceSummary()V

    goto :goto_1c

    :catch_3e
    move-exception v0

    const-string/jumbo v3, "SecuritySettings"

    const-string/jumbo v4, "could not persist lockAfter timeout setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :cond_49
    const-string/jumbo v3, "visiblepattern"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    goto :goto_1c
.end method

.method public onResume()V
    .registers 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->createPreferenceHierarchy()V

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mVisiblePattern:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_19
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mPowerButtonInstantlyLocks:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/settings/SecuritySettings;->-get0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2c
    iget-object v0, p0, Lcom/android/settings/SecuritySettings$SecuritySubSettings;->mOwnerInfoPreferenceController:Lcom/android/settings/security/OwnerInfoPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    return-void
.end method
