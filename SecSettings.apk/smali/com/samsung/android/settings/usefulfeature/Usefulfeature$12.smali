.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;
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

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get26(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "swipe_to_call_message"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_40

    const/4 v0, 0x1

    :goto_19
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get26(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get26(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get26(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    const v2, 0x7f121b7e

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    const/4 v0, 0x0

    goto :goto_19

    :cond_42
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get26(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get2()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap7(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3f
.end method
