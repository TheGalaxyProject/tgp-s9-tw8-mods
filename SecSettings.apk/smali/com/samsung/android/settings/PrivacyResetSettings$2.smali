.class Lcom/samsung/android/settings/PrivacyResetSettings$2;
.super Ljava/lang/Object;
.source "PrivacyResetSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/PrivacyResetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/PrivacyResetSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/PrivacyResetSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 8

    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get1(Lcom/samsung/android/settings/PrivacyResetSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v4

    if-ne p1, v4, :cond_47

    const-string/jumbo v4, "PrivacyResetSettings"

    const-string/jumbo v5, "Collect Diagnostics Preference triggered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get0()Z

    move-result v4

    if-eqz v4, :cond_36

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.tmobile.pr.mytmobile"

    const-string/jumbo v5, "com.tmobile.pr.mytmobile.iqtoggle.ui.OptInSummary"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_2f
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v4, v2}, Lcom/samsung/android/settings/PrivacyResetSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_34} :catch_42

    :cond_34
    :goto_34
    const/4 v4, 0x1

    return v4

    :cond_36
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.carrieriq.tmobile.IQToggle"

    const-string/jumbo v5, "com.carrieriq.tmobile.IQToggle.ui"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :catch_42
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_34

    :cond_47
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/PrivacyResetSettings;->-get5(Lcom/samsung/android/settings/PrivacyResetSettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    if-ne p1, v4, :cond_34

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.sm.ACTION_AUTO_RESET_SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_57
    iget-object v4, p0, Lcom/samsung/android/settings/PrivacyResetSettings$2;->this$0:Lcom/samsung/android/settings/PrivacyResetSettings;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/PrivacyResetSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_5c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_57 .. :try_end_5c} :catch_5d

    goto :goto_34

    :catch_5d
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_34
.end method
