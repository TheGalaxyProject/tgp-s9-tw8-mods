.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 13

    const v6, 0x7f121b7e

    const v7, 0x7f121b7d

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "access_control_enabled"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_4c

    if-ne v4, v10, :cond_125

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_11a

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f121b77

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_4c
    :goto_4c
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_89

    if-ne v4, v10, :cond_193

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_188

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_17a

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f121497

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_89
    :goto_89
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_c6

    if-ne v4, v10, :cond_20b

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_200

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_1f2

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f12149a

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_c6
    :goto_c6
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v5, :cond_fe

    if-ne v4, v10, :cond_275

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_26a

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap6()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_fe
    :goto_fe
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v5

    if-eqz v5, :cond_119

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get2()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2c9

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_119
    :goto_119
    return-void

    :cond_11a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_4c

    :cond_125
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "surface_palm_swipe"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_164

    const/4 v1, 0x1

    :goto_13e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_16a

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v1, :cond_166

    move v5, v6

    :goto_15f
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_4c

    :cond_164
    const/4 v1, 0x0

    goto :goto_13e

    :cond_166
    const v5, 0x7f121b77

    goto :goto_15f

    :cond_16a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v1, :cond_178

    move v5, v6

    :goto_173
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_4c

    :cond_178
    move v5, v7

    goto :goto_173

    :cond_17a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f121496

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_89

    :cond_188
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_89

    :cond_193
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "motion_pick_up"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1d2

    const/4 v2, 0x1

    :goto_1ac
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_1e2

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v2, :cond_1d4

    move v5, v6

    :goto_1cd
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_89

    :cond_1d2
    const/4 v2, 0x0

    goto :goto_1ac

    :cond_1d4
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_1de

    const v5, 0x7f121497

    goto :goto_1cd

    :cond_1de
    const v5, 0x7f121496

    goto :goto_1cd

    :cond_1e2
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v2, :cond_1f0

    move v5, v6

    :goto_1eb
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_89

    :cond_1f0
    move v5, v7

    goto :goto_1eb

    :cond_1f2
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    const v8, 0x7f121499

    invoke-virtual {v5, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_c6

    :cond_200
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_c6

    :cond_20b
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "motion_pick_up_to_call_out"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_24a

    const/4 v3, 0x1

    :goto_224
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_25a

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v3, :cond_24c

    move v5, v6

    :goto_245
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_c6

    :cond_24a
    const/4 v3, 0x0

    goto :goto_224

    :cond_24c
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap3()Z

    move-result v5

    if-eqz v5, :cond_256

    const v5, 0x7f12149a

    goto :goto_245

    :cond_256
    const v5, 0x7f121499

    goto :goto_245

    :cond_25a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v8

    if-eqz v3, :cond_268

    move v5, v6

    :goto_263
    invoke-virtual {v8, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_c6

    :cond_268
    move v5, v7

    goto :goto_263

    :cond_26a
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_fe

    :cond_275
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "motion_merged_mute_pause"

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2b3

    const/4 v0, 0x1

    :goto_28e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_2ba

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v0, :cond_2b5

    :goto_2ae
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_fe

    :cond_2b3
    const/4 v0, 0x0

    goto :goto_28e

    :cond_2b5
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap6()I

    move-result v6

    goto :goto_2ae

    :cond_2ba
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v5

    if-eqz v0, :cond_2c7

    :goto_2c2
    invoke-virtual {v5, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_fe

    :cond_2c7
    move v6, v7

    goto :goto_2c2

    :cond_2c9
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_119
.end method
