.class Lcom/samsung/android/settings/display/SecDisplaySettings$8;
.super Landroid/database/ContentObserver;
.source "SecDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDisplaySettings;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 9

    const v1, 0x7f12130d

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get13(Lcom/samsung/android/settings/display/SecDisplaySettings;)Z

    move-result v4

    if-eqz v4, :cond_55

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "aod_night_mode"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_49

    const/4 v0, 0x1

    :goto_25
    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap6(Lcom/samsung/android/settings/display/SecDisplaySettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_36
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_48
    :goto_48
    return-void

    :cond_49
    const/4 v0, 0x0

    goto :goto_25

    :cond_4b
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_36

    :cond_55
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v5}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "night_mode"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6d

    const v1, 0x7f121b7e

    :cond_6d
    invoke-virtual {v4, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "night_mode"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a2

    move v1, v2

    :goto_86
    invoke-virtual {v4, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get12(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$8;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "night_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a4

    :goto_9e
    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_48

    :cond_a2
    move v1, v3

    goto :goto_86

    :cond_a4
    move v2, v3

    goto :goto_9e
.end method
