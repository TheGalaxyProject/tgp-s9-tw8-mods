.class Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;
.super Ljava/lang/Object;
.source "ToggleMagnifierPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .registers 16

    const/4 v11, 0x2

    const/16 v14, 0x46

    const/4 v13, 0x0

    const/4 v12, 0x1

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ToggleMagnifierPreferenceFragment"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onStateReceived : stateId - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v8, v9, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v12, :cond_9a

    const/4 v5, 0x1

    :goto_3d
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->isMagnifierWindowExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v8, "is_enabled"

    invoke-virtual {v0, v8, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "hover_zoom_value"

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    float-to-int v1, v8

    const-string/jumbo v8, "MagnifierWindowOn"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9c

    if-eqz v5, :cond_2b8

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    const-string/jumbo v10, "AlreadyOn"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_99
    return-void

    :cond_9a
    const/4 v5, 0x0

    goto :goto_3d

    :cond_9c
    const-string/jumbo v8, "MagnifierWindowOff"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d1

    if-nez v5, :cond_300

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    const-string/jumbo v10, "AlreadyOff"

    const-string/jumbo v11, "Yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_99

    :cond_d1
    const-string/jumbo v8, "ZoomPercentageSetMax"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_124

    if-nez v5, :cond_f7

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_f7

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffMagnifierWindow(Landroid/content/Context;Z)V

    :cond_f7
    if-ne v1, v14, :cond_348

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "ZoomPercentage"

    const-string/jumbo v10, "AlreadyMaximum"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_124
    const-string/jumbo v8, "ZoomPercentageSetMin"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_177

    if-nez v5, :cond_14a

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_14a

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffMagnifierWindow(Landroid/content/Context;Z)V

    :cond_14a
    if-nez v1, :cond_386

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "ZoomPercentage"

    const-string/jumbo v10, "AlreadyMinimum"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_177
    const-string/jumbo v8, "ZoomPercentageSetIncrease"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ca

    if-nez v5, :cond_19d

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_19d

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffMagnifierWindow(Landroid/content/Context;Z)V

    :cond_19d
    if-ne v1, v14, :cond_3c4

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "ZoomPercentage"

    const-string/jumbo v10, "AlreadyMaximum"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_1ca
    const-string/jumbo v8, "ZoomPercentageSetDecrease"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21d

    if-nez v5, :cond_1f0

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_1f0

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffMagnifierWindow(Landroid/content/Context;Z)V

    :cond_1f0
    if-nez v1, :cond_404

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "ZoomPercentage"

    const-string/jumbo v10, "AlreadyMinimum"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_21d
    const-string/jumbo v8, "MagnifierSize"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27c

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v8

    if-lez v8, :cond_46f

    :try_start_233
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I
    :try_end_23d
    .catch Ljava/lang/NumberFormatException; {:try_start_233 .. :try_end_23d} :catch_444

    move-result v6

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "hover_zoom_magnifier_size"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_49a

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierSize"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_27c
    const-string/jumbo v8, "HorizontalFocusLockOn"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29a

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v8

    if-nez v8, :cond_567

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_29a
    const-string/jumbo v8, "HoriziontalFocusLockOff"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68f

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v8

    if-nez v8, :cond_5fb

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_2b8
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_2e2

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    const-string/jumbo v10, "AlreadyOn"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_2e2
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get5(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v8

    if-eqz v8, :cond_2f3

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get5(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_2f3
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_300
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_32a

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    const-string/jumbo v10, "AlreadyOff"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_32a
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get5(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v8

    if-eqz v8, :cond_33b

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get5(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_33b
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_348
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_372

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "ZoomPercentage"

    const-string/jumbo v10, "AlreadyMaximum"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_372
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v8, v8, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v8, v14}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_386
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_3b0

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "ZoomPercentage"

    const-string/jumbo v10, "AlreadyMinimum"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3b0
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v8, v8, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    invoke-virtual {v8, v13}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_3c4
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_3ee

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "ZoomPercentage"

    const-string/jumbo v10, "AlreadyMaximum"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3ee
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v8, v8, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    add-int/lit8 v9, v1, 0xa

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_404
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_42e

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "ZoomPercentage"

    const-string/jumbo v10, "AlreadyMinimum"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_42e
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    iget-object v8, v8, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->mMagnifierZoom:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;

    add-int/lit8 v9, v1, -0xa

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$MagnifierImageZoom;->setZoomValue(I)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :catch_444
    move-exception v3

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierSize"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_46f
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierSize"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_49a
    if-ltz v6, :cond_49e

    if-le v6, v11, :cond_4c9

    :cond_49e
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierSize"

    const-string/jumbo v10, "Exist"

    const-string/jumbo v11, "no"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_4c9
    if-nez v5, :cond_4e6

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_4e6

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffMagnifierWindow(Landroid/content/Context;Z)V

    :cond_4e6
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "hover_zoom_magnifier_size"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v7/preference/SecDropDownPreference;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecDropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v7/preference/SecDropDownPreference;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v9}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v7/preference/SecDropDownPreference;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/preference/SecDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/SecDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_55a

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierSize"

    const-string/jumbo v10, "Valid"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierSizeSize"

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v10}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get3(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v7/preference/SecDropDownPreference;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v7/preference/SecDropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_55a
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_567
    if-nez v5, :cond_584

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_584

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffMagnifierWindow(Landroid/content/Context;Z)V

    :cond_584
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5bb

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "HorizontalFocusLockOn"

    const-string/jumbo v10, "AlreadyOn"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_5bb
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_5ee

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "HorizontalFocusLockOn"

    const-string/jumbo v10, "AlreadyOn"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_5ee
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_5fb
    if-nez v5, :cond_618

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get0(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "finger_magnifier"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v4, :cond_618

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-virtual {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffMagnifierWindow(Landroid/content/Context;Z)V

    :cond_618
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v8

    if-nez v8, :cond_64f

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "HoriziontalFocusLockOff"

    const-string/jumbo v10, "AlreadyOff"

    const-string/jumbo v11, "yes"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_64f
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Landroid/support/v14/preference/SecSwitchPreference;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v14/preference/SecSwitchPreference;->performClick()V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_682

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "HoriziontalFocusLockOff"

    const-string/jumbo v10, "AlreadyOff"

    const-string/jumbo v11, "No"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    const-string/jumbo v9, "MagnifierWindow"

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_682
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99

    :cond_68f
    iget-object v8, p0, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;

    invoke-static {v8}, Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/ToggleMagnifierPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_99
.end method
