.class public Lcom/android/settings/notification/NotificationVolumePreferenceController;
.super Lcom/android/settings/notification/RingVolumePreferenceController;
.source "NotificationVolumePreferenceController.java"


# instance fields
.field private mHelper:Lcom/android/settings/notification/AudioHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 5

    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;Lcom/android/settings/notification/AudioHelper;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/RingVolumePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    iput-object p4, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public getMuteIcon()I
    .registers 2

    const v0, 0x1080384

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "notification_volume"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method
