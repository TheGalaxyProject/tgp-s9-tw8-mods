.class Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;
.super Landroid/database/ContentObserver;
.source "SafetyCareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/safetycare/SafetyCareSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "send_emergency_message"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_49

    const/4 v1, 0x1

    :goto_1d
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "block_emergency_message"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4b

    const/4 v0, 0x1

    :goto_31
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    if-nez v0, :cond_4d

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    const v3, 0x7f1216d4

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    :cond_48
    :goto_48
    return-void

    :cond_49
    const/4 v1, 0x0

    goto :goto_1d

    :cond_4b
    const/4 v0, 0x0

    goto :goto_31

    :cond_4d
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareSettings$2;->this$0:Lcom/samsung/android/settings/safetycare/SafetyCareSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/safetycare/SafetyCareSettings;->-get1(Lcom/samsung/android/settings/safetycare/SafetyCareSettings;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v1, :cond_5c

    const v2, 0x7f121b7e

    :goto_58
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_48

    :cond_5c
    const v2, 0x7f121b7d

    goto :goto_58
.end method
