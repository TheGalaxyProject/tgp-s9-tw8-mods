.class Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;
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

    iput-object p1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_5c

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get1(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "pen_writing_buddy"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5d

    const v0, 0x7f121b7e

    :goto_28
    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get1(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "pen_writing_buddy"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_61

    move v0, v1

    :goto_41
    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v0}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get1(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$4;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v3}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_writing_buddy"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_63

    :goto_59
    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_5c
    return-void

    :cond_5d
    const v0, 0x7f121453

    goto :goto_28

    :cond_61
    move v0, v2

    goto :goto_41

    :cond_63
    move v1, v2

    goto :goto_59
.end method
