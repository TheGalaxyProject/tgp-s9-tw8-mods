.class public Lcom/android/settings/deviceinfo/KernelVersionPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "KernelVersionPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "kernel_version"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
