.class public Lcom/android/settings/deviceinfo/AdditionalSystemUpdatePreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "AdditionalSystemUpdatePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "additional_system_update_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
