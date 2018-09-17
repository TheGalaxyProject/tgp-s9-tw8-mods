.class Lcom/samsung/android/settings/display/AutoBrightness$1;
.super Landroid/database/ContentObserver;
.source "AutoBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AutoBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AutoBrightness;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AutoBrightness;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-get3(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-wrap0(Lcom/samsung/android/settings/display/AutoBrightness;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-get3(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    if-eqz v0, :cond_45

    move v1, v2

    :goto_20
    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-get2(Lcom/samsung/android/settings/display/AutoBrightness;)Landroid/support/v7/preference/SecPreference;

    move-result-object v1

    if-eqz v0, :cond_47

    :goto_2b
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/AutoBrightness;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_44
    return-void

    :cond_45
    move v1, v3

    goto :goto_20

    :cond_47
    move v2, v3

    goto :goto_2b
.end method
