.class Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;
.super Landroid/database/ContentObserver;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/spen/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8

    const v3, 0x7f121b7e

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "pen_hovering"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_56

    move v0, v1

    :goto_1b
    invoke-virtual {v4, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "pen_hovering"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_58

    move v0, v3

    :goto_3a
    invoke-virtual {v4, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v3}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5c

    :goto_52
    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_55
    return-void

    :cond_56
    move v0, v2

    goto :goto_1b

    :cond_58
    const v0, 0x7f121440

    goto :goto_3a

    :cond_5c
    move v1, v2

    goto :goto_52

    :cond_5e
    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$5;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_77

    :goto_73
    invoke-virtual {v0, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_55

    :cond_77
    const v3, 0x7f121b7d

    goto :goto_73
.end method
