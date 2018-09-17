.class public Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;
.super Lcom/android/settings/core/PreferenceController;
.source "CMCCEnableWarningPrefController.java"


# static fields
.field private static DBG:Z

.field private static final vendorNotificationStyle:Ljava/lang/String;


# instance fields
.field private enableWarningcontrolPref:Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;

.field private final mInSetupWizard:Z

.field private mIsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->vendorNotificationStyle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->mIsAvailable:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->mInSetupWizard:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "wlan_notify_cmcc"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->enableWarningcontrolPref:Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->mInSetupWizard:Z

    if-nez v0, :cond_20

    const-string/jumbo v0, "CMCC"

    sget-object v1, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->vendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2e

    :cond_20
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->enableWarningcontrolPref:Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->enableWarningcontrolPref:Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->mIsAvailable:Z

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->enableWarningcontrolPref:Lcom/samsung/android/settings/wifi/CMCCWarningDialogPreference;

    :cond_2e
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "wlan_notify_cmcc"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/CMCCEnableWarningPrefController;->mIsAvailable:Z

    return v0
.end method
