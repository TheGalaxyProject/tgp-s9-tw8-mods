.class Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;
.super Ljava/lang/Object;
.source "AppShortcutList.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LeftShortcutOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    const-string/jumbo v3, "RightShortcutOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    :cond_1e
    const-string/jumbo v3, "LeftShortcutOn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    const-string/jumbo v1, "LeftShortcut"

    const-string/jumbo v0, "LeftShortcut"

    :goto_2d
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get5(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_64

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    const-string/jumbo v1, "RightShortcut"

    const-string/jumbo v0, "RightShortcut"

    goto :goto_2d

    :cond_64
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get5(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_91

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "no"

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_91
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_5c

    :cond_9d
    const-string/jumbo v3, "LeftShortcutOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    const-string/jumbo v3, "RightShortcutOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    :cond_af
    const-string/jumbo v3, "LeftShortcutOff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_104

    const-string/jumbo v1, "LeftShortcut"

    const-string/jumbo v0, "LeftShortcut"

    :goto_be
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get5(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_10b

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get5(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_f7

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "no"

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_f7
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5c

    :cond_104
    const-string/jumbo v1, "RightShortcut"

    const-string/jumbo v0, "RightShortcut"

    goto :goto_be

    :cond_10b
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AlreadyOff"

    const-string/jumbo v5, "yes"

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5c

    :cond_130
    const-string/jumbo v3, "LeftShortcutChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_142

    const-string/jumbo v3, "RightShortcutChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    :cond_142
    const-string/jumbo v3, "LeftShortcutChange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18e

    const-string/jumbo v1, "LeftShortcut"

    :goto_14e
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get5(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v3

    if-nez v3, :cond_163

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get5(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_163
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v3

    if-lez v3, :cond_19f

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get4(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_192

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get4(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-nez v3, :cond_192

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setPendingState(Z)V

    goto/16 :goto_5c

    :cond_18e
    const-string/jumbo v1, "RightShortcut"

    goto :goto_14e

    :cond_192
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    iget-object v4, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v4}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-wrap0(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->selectAppShortcutBixby(Ljava/util/List;)V

    goto/16 :goto_5c

    :cond_19f
    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "AppName"

    const-string/jumbo v5, "exist"

    const-string/jumbo v6, "no"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$2;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v3}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get2(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_5c
.end method
