.class Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;
.super Ljava/lang/Object;
.source "MultiSoundSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/multisound/MultiSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeparateAppSoundOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_49
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    const-string/jumbo v3, "TurnedOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_7c
    :goto_7c
    return-void

    :cond_7d
    const-string/jumbo v1, "SeparateAppSoundOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-nez v1, :cond_bc

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_bc
    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get3(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    const-string/jumbo v3, "TurnedOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    const-string/jumbo v2, "Separateappsound"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisound/MultiSoundSettings$2;->this$0:Lcom/samsung/android/settings/multisound/MultiSoundSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/multisound/MultiSoundSettings;->-get1(Lcom/samsung/android/settings/multisound/MultiSoundSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_7c
.end method
