.class public Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "WifiSleepPolicyPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static DBG:Z


# instance fields
.field private mIsAvailable:Z

.field private sleepPolicyPref:Landroid/support/v7/preference/SecListDialogPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mIsAvailable:Z

    return-void
.end method

.method private updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V
    .registers 10

    if-eqz p2, :cond_5f

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030152

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_43

    const v2, 0x7f030151

    :goto_1a
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_25
    array-length v4, v3

    if-ge v0, v4, :cond_5f

    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    array-length v4, v1

    if-ge v0, v4, :cond_5c

    const/4 v4, 0x2

    if-ne v0, v4, :cond_47

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f1202e5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_42
    return-void

    :cond_43
    const v2, 0x7f030150

    goto :goto_1a

    :cond_47
    if-nez v0, :cond_56

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f1202e4

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_42

    :cond_56
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_42

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_5f
    const-string/jumbo v4, ""

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v4, "ConfigureWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/settings/core/PreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string/jumbo v0, "sleep_policy"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecListDialogPreference;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->sleepPolicyPref:Landroid/support/v7/preference/SecListDialogPreference;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->sleepPolicyPref:Landroid/support/v7/preference/SecListDialogPreference;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mIsAvailable:Z

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->sleepPolicyPref:Landroid/support/v7/preference/SecListDialogPreference;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f12055d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecListDialogPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "sleep_policy"

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mIsAvailable:Z

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .registers 13

    const v6, 0x7f12179b

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v4

    const v5, 0x7f120a1e

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    :try_start_10
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "wifi_sleep_policy"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1, v3}, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const v5, 0x7f12179b

    const v8, 0x7f120a20

    invoke-virtual {v4, v5, v8, v6, v7}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_3a} :catch_3c

    const/4 v4, 0x1

    return v4

    :catch_3c
    move-exception v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f122128

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v9
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .registers 7

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->sleepPolicyPref:Landroid/support/v7/preference/SecListDialogPreference;

    if-eqz v2, :cond_30

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->sleepPolicyPref:Landroid/support/v7/preference/SecListDialogPreference;

    const v3, 0x7f030151

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecListDialogPreference;->setEntries(I)V

    :cond_14
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_sleep_policy"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->sleepPolicyPref:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/SecListDialogPreference;->setValue(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->sleepPolicyPref:Landroid/support/v7/preference/SecListDialogPreference;

    invoke-direct {p0, v2, v0}, Lcom/android/settings/wifi/WifiSleepPolicyPreferenceController;->updateSleepPolicySummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    :cond_30
    return-void
.end method
