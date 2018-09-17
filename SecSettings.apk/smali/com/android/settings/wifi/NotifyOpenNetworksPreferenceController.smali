.class public Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "NotifyOpenNetworksPreferenceController.java"


# instance fields
.field private mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

.field private mNotificationChannelHelper:Lcom/android/settings/utils/NotificationChannelHelper;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private getNotificationChannel()Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v4}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v3

    if-nez v3, :cond_a

    return-object v7

    :cond_a
    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getNetworkAvailableNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_16

    if-nez v0, :cond_17

    :cond_16
    return-object v7

    :cond_17
    :try_start_17
    iget-object v4, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mNotificationChannelHelper:Lcom/android/settings/utils/NotificationChannelHelper;

    iget-object v5, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v0, v6}, Lcom/android/settings/utils/NotificationChannelHelper;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_24} :catch_26
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_24} :catch_26

    move-result-object v4

    return-object v4

    :catch_26
    move-exception v1

    const-string/jumbo v4, "OpenNetworks"

    const-string/jumbo v5, "Failed to get notification channel."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v7
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "notify_open_networks"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "notify_open_networks"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    return v4

    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mNetworkScoreManager:Lcom/android/settings/network/NetworkScoreManagerWrapper;

    invoke-virtual {v2}, Lcom/android/settings/network/NetworkScoreManagerWrapper;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    if-nez v1, :cond_18

    return v4

    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.provider.extra.CHANNEL_ID"

    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getNetworkAvailableNotificationChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v1}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x1

    return v2
.end method

.method public isAvailable()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->getNotificationChannel()Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;->getNotificationChannel()Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;->getImportance()I

    move-result v1

    if-eqz v1, :cond_18

    const v1, 0x7f1213b9

    :goto_14
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_a

    :cond_18
    const v1, 0x7f1213b8

    goto :goto_14
.end method
