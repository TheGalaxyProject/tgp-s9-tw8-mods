.class public Lcom/android/settings/notification/AlarmRingtonePreferenceController;
.super Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.source "AlarmRingtonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "alarm_ringtone"

    return-object v0
.end method

.method public getRingtoneType()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method
