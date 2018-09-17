.class public Lcom/android/settings/notification/MediaVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "MediaVolumePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;Lcom/android/settings/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public getAudioStream()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public getMuteIcon()I
    .registers 2

    const v0, 0x108037e

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "media_volume"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
