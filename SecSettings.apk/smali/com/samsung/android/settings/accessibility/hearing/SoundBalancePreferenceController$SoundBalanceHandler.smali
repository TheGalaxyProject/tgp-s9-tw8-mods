.class Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;
.super Landroid/os/Handler;
.source "SoundBalancePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundBalanceHandler"
.end annotation


# instance fields
.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;Lcom/samsung/android/settings/bixby/EmSettingsManager;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    const/16 v9, 0x64

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->-get2(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_c

    return-void

    :cond_c
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/16 v0, 0x32

    const/4 v2, 0x0

    const/16 v1, 0x64

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_170

    :goto_1a
    return-void

    :pswitch_1b
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->isSeekbarInitFinish()Z

    move-result v6

    if-eqz v6, :cond_163

    const-string/jumbo v6, "LeftRrightSoundBalanceMoveLeft"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c8

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v3

    const-string/jumbo v6, "SoundBalancePrefController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "audio bance prefre: progress2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v3, :cond_7d

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "LeftRightSoundBalance"

    const-string/jumbo v8, "AlreadyMinimum"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Hearing"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_73
    :goto_73
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->-get1(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->removeMessages(I)V

    goto :goto_1a

    :cond_7d
    add-int/lit8 v6, v3, -0xa

    if-gez v6, :cond_c5

    const/4 v5, 0x0

    :goto_82
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->-get2(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sound_balance"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_bd

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "LeftRightSoundBalance"

    const-string/jumbo v8, "AlreadyMinimum"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Hearing"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_bd
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_73

    :cond_c5
    add-int/lit8 v5, v3, -0xa

    goto :goto_82

    :cond_c8
    const-string/jumbo v6, "LeftRrightSoundBalanceMoveRight"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v3

    const-string/jumbo v6, "SoundBalancePrefController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "audio bance prefre: progress1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v3, v9, :cond_116

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "LeftRightSoundBalance"

    const-string/jumbo v8, "AlreadyMaximum"

    const-string/jumbo v9, "yes"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Hearing"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_73

    :cond_116
    add-int/lit8 v6, v3, 0xa

    if-le v6, v9, :cond_160

    const/16 v5, 0x64

    :goto_11c
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->-get2(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sound_balance"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->-get0(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/settings/accessibility/hearing/AudioBalanceSeekbarPreference;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v6

    if-eqz v6, :cond_157

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "LeftRightSoundBalance"

    const-string/jumbo v8, "AlreadyMaximum"

    const-string/jumbo v9, "no"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v7, "Hearing"

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_157
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_73

    :cond_160
    add-int/lit8 v5, v3, 0xa

    goto :goto_11c

    :cond_163
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->this$0:Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;->-get1(Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController;)Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;

    move-result-object v6

    const-wide/16 v8, 0x64

    invoke-virtual {v6, p1, v8, v9}, Lcom/samsung/android/settings/accessibility/hearing/SoundBalancePreferenceController$SoundBalanceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1a

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method
