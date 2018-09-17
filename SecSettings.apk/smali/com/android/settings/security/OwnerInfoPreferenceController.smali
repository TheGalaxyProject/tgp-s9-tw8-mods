.class public Lcom/android/settings/security/OwnerInfoPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "OwnerInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/security/OwnerInfoPreferenceController$OwnerInfoCallback;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

.field private final mParent:Landroid/app/Fragment;


# direct methods
.method static synthetic -get0(Lcom/android/settings/security/OwnerInfoPreferenceController;)Landroid/app/Fragment;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mParent:Landroid/app/Fragment;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mParent:Landroid/app/Fragment;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p3, :cond_11

    invoke-virtual {p3, p0}, Lcom/android/settings/core/lifecycle/Lifecycle;->addObserver(Lcom/android/settings/core/lifecycle/LifecycleObserver;)Lcom/android/settings/core/lifecycle/LifecycleObserver;

    :cond_11
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 3

    const-string/jumbo v0, "owner_info_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    iput-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    return-void
.end method

.method getDeviceOwner()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    return-object v0
.end method

.method getDeviceOwnerInfo()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOwnerInfo()Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "owner_info_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method isDeviceOwnerInfoEnabled()Z
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    return v0
.end method

.method isOwnerInfoEnabled()Z
    .registers 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v1, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateEnableState()V

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->updateSummary()V

    return-void
.end method

.method public updateEnableState()V
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-nez v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isDeviceOwnerInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getDeviceOwner()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    iget-object v2, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v3, Lcom/android/settings/security/OwnerInfoPreferenceController;->MY_USER_ID:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    new-instance v2, Lcom/android/settings/security/OwnerInfoPreferenceController$1;

    invoke-direct {v2, p0}, Lcom/android/settings/security/OwnerInfoPreferenceController$1;-><init>(Lcom/android/settings/security/OwnerInfoPreferenceController;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_15
.end method

.method public updateSummary()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isDeviceOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    iget-object v1, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mOwnerInfoPref:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->isOwnerInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/settings/security/OwnerInfoPreferenceController;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    :goto_20
    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_24
    iget-object v0, p0, Lcom/android/settings/security/OwnerInfoPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f12141c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_20
.end method
