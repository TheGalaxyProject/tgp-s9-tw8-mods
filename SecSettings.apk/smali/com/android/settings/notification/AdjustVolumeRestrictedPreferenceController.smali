.class public abstract Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "AdjustVolumeRestrictedPreferenceController.java"


# instance fields
.field private mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/accounts/AccountRestrictionHelper;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    return-void
.end method


# virtual methods
.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 5

    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    const-string/jumbo v1, "no_adjust_volume"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    return-void
.end method
