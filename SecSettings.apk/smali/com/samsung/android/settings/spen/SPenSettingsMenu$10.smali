.class Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/spen/SPenSettingsMenu;->showAirViewTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v1}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-get2(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/SecSettingsSwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/spen/SPenSettingsMenu$10;->this$0:Lcom/samsung/android/settings/spen/SPenSettingsMenu;

    invoke-static {v2}, Lcom/samsung/android/settings/spen/SPenSettingsMenu;->-wrap0(Lcom/samsung/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_hovering"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    return-void
.end method
