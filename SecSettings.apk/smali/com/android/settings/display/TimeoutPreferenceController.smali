.class public Lcom/android/settings/display/TimeoutPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "TimeoutPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mScreenTimeoutKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mScreenTimeoutKey:Ljava/lang/String;

    return-void
.end method

.method public static getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 12

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    cmp-long v1, p0, v4

    if-ltz v1, :cond_9

    if-nez p2, :cond_a

    :cond_9
    return-object v6

    :cond_a
    if-eqz p3, :cond_9

    array-length v1, p3

    array-length v4, p2

    if-ne v1, v4, :cond_9

    const/4 v0, 0x0

    :goto_11
    array-length v1, p3

    if-ge v0, v1, :cond_28

    aget-object v1, p3, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v1, p0, v2

    if-nez v1, :cond_25

    aget-object v1, p2, v0

    return-object v1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_28
    return-object v6
.end method

.method private updateTimeoutPreferenceDescription(Lcom/android/settings/TimeoutListPreference;J)V
    .registers 12

    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f120871

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_17
    invoke-virtual {p1, v1}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1b
    invoke-static {p2, p3, v0, v3}, Lcom/android/settings/display/TimeoutPreferenceController;->getTimeoutDescription(J[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_25

    const-string/jumbo v1, ""

    goto :goto_17

    :cond_25
    iget-object v4, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const v6, 0x7f121795

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_17
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mScreenTimeoutKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_off_timeout"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    check-cast p1, Lcom/android/settings/TimeoutListPreference;

    int-to-long v2, v1

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/display/TimeoutPreferenceController;->updateTimeoutPreferenceDescription(Lcom/android/settings/TimeoutListPreference;J)V
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_18} :catch_1a

    :goto_18
    const/4 v2, 0x1

    return v2

    :catch_1a
    move-exception v0

    const-string/jumbo v2, "TimeoutPrefContr"

    const-string/jumbo v3, "could not persist screen timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 14

    move-object v6, p1

    check-cast v6, Lcom/android/settings/TimeoutListPreference;

    iget-object v7, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "screen_off_timeout"

    const-wide/16 v10, 0x7530

    invoke-static {v7, v8, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_37

    iget-object v7, p0, Lcom/android/settings/display/TimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLockForUserAndProfiles(I)J

    move-result-wide v4

    invoke-virtual {v6, v4, v5, v0}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_37
    invoke-direct {p0, v6, v2, v3}, Lcom/android/settings/display/TimeoutPreferenceController;->updateTimeoutPreferenceDescription(Lcom/android/settings/TimeoutListPreference;J)V

    return-void
.end method
