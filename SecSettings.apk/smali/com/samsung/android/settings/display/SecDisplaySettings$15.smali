.class Lcom/samsung/android/settings/display/SecDisplaySettings$15;
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

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get22(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-wrap0(Lcom/samsung/android/settings/display/SecDisplaySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "intelligent_sleep_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v0, 0x1

    :goto_19
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get22(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get22(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v0, :cond_3c

    const v1, 0x7f121b7e

    :goto_2d
    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDisplaySettings$15;->this$0:Lcom/samsung/android/settings/display/SecDisplaySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDisplaySettings;->-get22(Lcom/samsung/android/settings/display/SecDisplaySettings;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_39
    return-void

    :cond_3a
    const/4 v0, 0x0

    goto :goto_19

    :cond_3c
    const v1, 0x7f1219d2

    goto :goto_2d
.end method
