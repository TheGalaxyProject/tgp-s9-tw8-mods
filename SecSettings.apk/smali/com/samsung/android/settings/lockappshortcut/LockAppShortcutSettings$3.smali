.class Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;
.super Ljava/lang/Object;
.source "LockAppShortcutSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "LeftShortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get3(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get0(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Z

    move-result v1

    if-nez v1, :cond_5a

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LeftShortcut"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LeftShortcut"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_4e
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_59
    :goto_59
    return-void

    :cond_5a
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v1, :cond_72

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    if-nez v1, :cond_85

    :cond_72
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LeftShortcut"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_85
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AppName"

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoLeft:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "LeftShortcut"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    :cond_b9
    const-string/jumbo v1, "RightShortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get4(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Landroid/support/v7/preference/SecPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/SecPreferenceScreen;->performClick()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_fd

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get1(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Z

    move-result v1

    if-nez v1, :cond_10a

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RightShortcut"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f1
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RightShortcut"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_fd
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_59

    :cond_10a
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    if-eqz v1, :cond_122

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-boolean v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->isActive:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_122

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    if-nez v1, :cond_135

    :cond_122
    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RightShortcut"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "no"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f1

    :cond_135
    const-string/jumbo v1, ""

    iget-object v2, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_122

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "AppName"

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    iget-object v3, v3, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->appInfoRight:Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;

    iget-object v3, v3, Lcom/samsung/android/settings/lockappshortcut/AppShortcutInfo$AppInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings$3;->this$0:Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;->-get2(Lcom/samsung/android/settings/lockappshortcut/LockAppShortcutSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "RightShortcut"

    const-string/jumbo v3, "Available"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f1
.end method
