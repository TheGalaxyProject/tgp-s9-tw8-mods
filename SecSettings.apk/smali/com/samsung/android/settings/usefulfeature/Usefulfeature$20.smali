.class Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;
.super Ljava/lang/Object;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

.field final synthetic val$preference:Landroid/support/v7/preference/Preference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/support/v7/preference/Preference;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    iput-object p2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;->val$preference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;->val$preference:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get24(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get24(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "intelligent_sleep_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_29

    :goto_25
    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    move v0, v1

    goto :goto_25

    :cond_2b
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;->val$preference:Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;->this$0:Lcom/samsung/android/settings/usefulfeature/Usefulfeature;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->-wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "surface_palm_swipe"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_52

    :goto_4e
    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    goto :goto_28

    :cond_52
    move v0, v1

    goto :goto_4e
.end method
