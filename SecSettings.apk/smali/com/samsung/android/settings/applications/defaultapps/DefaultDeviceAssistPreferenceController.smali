.class public Lcom/samsung/android/settings/applications/defaultapps/DefaultDeviceAssistPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultDeviceAssistPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getBixbyStateId()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DeviceAssistanceApp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected getDefaultAppInfo()Lcom/android/settings/applications/defaultapps/DefaultAppInfo;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "assist_and_voice_input"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-static {}, Lcom/android/settings/Utils;->isNavigationBar()Z

    move-result v0

    if-nez v0, :cond_10

    const v0, 0x7f12023b

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_f
    return-void

    :cond_10
    const v0, 0x7f12023a

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_f
.end method
