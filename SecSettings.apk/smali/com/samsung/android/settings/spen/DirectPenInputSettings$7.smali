.class Lcom/samsung/android/settings/spen/DirectPenInputSettings$7;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/DirectPenInputSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$7;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v5, p1, Landroid/support/v14/preference/SwitchPreference;

    if-eqz v5, :cond_2b

    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$7;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$7;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get3(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2c

    const/4 v2, 0x1

    :goto_24
    if-nez v2, :cond_2e

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2b
    :goto_2b
    return v4

    :cond_2c
    const/4 v2, 0x0

    goto :goto_24

    :cond_2e
    iget-object v5, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$7;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get7(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/spen/DirectPenInputSettings$7;->this$0:Lcom/samsung/android/settings/spen/DirectPenInputSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/spen/DirectPenInputSettings;->-get4(Lcom/samsung/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_41

    move v3, v4

    :cond_41
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2b
.end method
