.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;
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

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "fingerprint_gesture_quick"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_49

    const/4 v0, 0x1

    :goto_19
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_48

    const-string/jumbo v1, ""

    if-eqz v0, :cond_4b

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    const v3, 0x7f121b7e

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2d
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_48
    return-void

    :cond_49
    const/4 v0, 0x0

    goto :goto_19

    :cond_4b
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get2()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap5(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    const v3, 0x7f120b20

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d

    :cond_5f
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    const v3, 0x7f120b21

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2d
.end method
