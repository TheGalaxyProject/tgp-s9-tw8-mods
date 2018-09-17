.class final Lcom/android/server/desktopmode/DockManager$DockHandler;
.super Landroid/os/Handler;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DockHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DockManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DockManager;Lcom/android/server/desktopmode/DockManager$DockHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DockManager$DockHandler;-><init>(Lcom/android/server/desktopmode/DockManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    sparse-switch v21, :sswitch_data_846

    :cond_9
    :goto_9
    return-void

    :sswitch_a
    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_18

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "MSG_DOCK_FAST_CHARGING_REQUEST_POWER_INFO requestConnectedPowerChargerInfoUpdate"

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get11(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v21

    if-eqz v21, :cond_9

    :try_start_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get12(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    const/16 v23, 0x64

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get11(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;->requestConnectedPowerChargerInfoUpdate()V
    :try_end_50
    .catch Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException; {:try_start_24 .. :try_end_50} :catch_51

    goto :goto_9

    :catch_51
    move-exception v7

    invoke-virtual {v7}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->printStackTrace()V

    goto :goto_9

    :sswitch_56
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_83

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_DOCK_FAST_CHARGING_REQUEST_SET_ENABLE setFastChargingEnable, enable="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get11(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v21

    if-eqz v21, :cond_9

    :try_start_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get12(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x64

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get11(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v8}, Lcom/samsung/android/lib/dexcontrol/ISDCDeviceController;->setFastChargingEnable(Z)V
    :try_end_bf
    .catch Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException; {:try_start_8f .. :try_end_bf} :catch_c1

    goto/16 :goto_9

    :catch_c1
    move-exception v7

    invoke-virtual {v7}, Lcom/samsung/android/lib/dexcontrol/NotSupportDexFeatureException;->printStackTrace()V

    goto/16 :goto_9

    :sswitch_c7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_f4

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_DOCK_FAST_CHARGING_RESPONSE_SET_ENABLE onChargingModeUpdated, fastCharging="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get12(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x65

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    if-eqz v10, :cond_12d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const-string/jumbo v22, "controllib"

    const/16 v23, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    goto/16 :goto_9

    :cond_12d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const-string/jumbo v22, "controllib"

    const/16 v23, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->updateAdaptiveFastChargingSettingsEnabled()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->requestConnectedPowerChargerInfoUpdate()V

    goto/16 :goto_9

    :sswitch_155
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_180

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_DOCK_FAST_CHARGING_VERSION_DSVERSION_UPDATED onDSVersionUpdated, version="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get12(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    const/16 v23, 0x67

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    if-eqz v19, :cond_1b9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->-set4(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)Ljava/lang/String;

    :goto_1ac
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/DockManager;->-wrap2(Lcom/android/server/desktopmode/DockManager;Z)V

    goto/16 :goto_9

    :cond_1b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const-string/jumbo v22, "####"

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/DockManager;->-set4(Lcom/android/server/desktopmode/DockManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1ac

    :sswitch_1c6
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_22a

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_DOCK_FAST_CHARGING_RESPONSE_POWER_INFO onConnectedPowerChargerInfoUpdated, power="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " previous power="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/desktopmode/DockManager;->-get4(Lcom/android/server/desktopmode/DockManager;)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " support="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " mAdaptiveFastChargingSettingsEnabled="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/server/desktopmode/DockManager;->-get1(Lcom/android/server/desktopmode/DockManager;)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get12(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x65

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/desktopmode/DesktopModeHwManager;->isWiredFastCharging()Z

    move-result v21

    if-nez v21, :cond_29e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get1(Lcom/android/server/desktopmode/DockManager;)Z

    move-result v21

    if-eqz v21, :cond_29e

    const/16 v21, 0x2

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_312

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    :cond_29e
    :goto_29e
    if-eqz v15, :cond_2ae

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get4(Lcom/android/server/desktopmode/DockManager;)I

    move-result v21

    move/from16 v0, v21

    if-eq v15, v0, :cond_2ef

    :cond_2ae
    const/16 v21, 0xf

    move/from16 v0, v21

    if-ge v15, v0, :cond_333

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get4(Lcom/android/server/desktopmode/DockManager;)I

    move-result v21

    if-eqz v21, :cond_2d2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get4(Lcom/android/server/desktopmode/DockManager;)I

    move-result v21

    const/16 v22, 0xf

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2ef

    :cond_2d2
    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_2e0

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "updateDockLowChargerPower true"

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateDockLowChargerPower(Z)V

    :cond_2ef
    :goto_2ef
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v15}, Lcom/android/server/desktopmode/DockManager;->-set1(Lcom/android/server/desktopmode/DockManager;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->-set2(Lcom/android/server/desktopmode/DockManager;I)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-wrap1(Lcom/android/server/desktopmode/DockManager;)V

    goto/16 :goto_9

    :cond_312
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_31c

    if-nez v16, :cond_29e

    :cond_31c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    goto/16 :goto_29e

    :cond_333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get4(Lcom/android/server/desktopmode/DockManager;)I

    move-result v21

    const/16 v22, 0xf

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2ef

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_353

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "updateDockLowChargerPower false"

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get10(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/desktopmode/DesktopModeHwManager;->updateDockLowChargerPower(Z)V

    goto :goto_2ef

    :sswitch_363
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_392

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_DOCK_FAST_CHARGING_ERROR onError, error="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v9}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get12(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-static {v9}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x66

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    const/16 v21, -0x5

    move/from16 v0, v21

    if-lt v9, v0, :cond_3ce

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static {v9}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DockManager;->updateDockFastChargingState(ILjava/lang/String;)V

    :cond_3ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get5(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const-string/jumbo v6, ""

    const/4 v11, 0x0

    :goto_3e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get5(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseBooleanArray;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v11, v0, :cond_447

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/desktopmode/DockManager;->-get5(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/android/server/desktopmode/DockManager;->dockControlErrorToString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/desktopmode/DockManager;->-get5(Lcom/android/server/desktopmode/DockManager;)Landroid/util/SparseBooleanArray;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_3e5

    :cond_447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get12(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    const/16 v22, 0x68

    const/16 v23, 0xf1

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_460
    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_46e

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "MSG_DOCK_FOTA_REQUEST_CHECK"

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get7(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    move-result-object v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    const/16 v23, 0x64

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get7(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;->requestCheckFotaUpdateAvailable()V

    goto/16 :goto_9

    :sswitch_4a8
    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_4b6

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "MSG_DOCK_FOTA_REQUEST_START"

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get7(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    move-result-object v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    const/16 v23, 0x64

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get7(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;->startFotaUpdate()V

    goto/16 :goto_9

    :sswitch_4f0
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/util/HashMap;

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_53d

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_DOCK_FOTA_RESPONSE_ONBOOT onBootMode, deviceCategory="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", bootMode="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", versionMap="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_53d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x65

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_9

    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v4, v0, :cond_597

    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v4, v0, :cond_9

    :cond_597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_5a6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_5d3

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_DOCK_FOTA_RESPONSE_ONCHECK onCheckedFotaUpdateAvailable, isFotaUpdateAvailable="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x65

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    if-eqz v13, :cond_605

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    goto/16 :goto_9

    :cond_605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_614
    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_622

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "MSG_DOCK_FOTA_RESPONSE_ONSTART onStart"

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    const/16 v23, 0x65

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_650
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_6c3

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_688

    const/16 v21, 0x3

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_6c3

    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v12, v0, :cond_688

    const/16 v21, 0x64

    move/from16 v0, v21

    if-ne v12, v0, :cond_6c3

    :cond_688
    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_DOCK_FOTA_RESPONSE_ONPROGRESS onProgress, updateType="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", total="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", index="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x65

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_746
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_773

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_DOCK_FOTA_RESPONSE_ONEND onEnd, isSuccess="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x65

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    if-eqz v14, :cond_7a5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    goto/16 :goto_9

    :cond_7a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_7b4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-boolean v21, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v21, :cond_7e3

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MSG_DOCK_FOTA_ERROR_ONERROR onError, error="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v9}, Lcom/android/server/desktopmode/DockManager;->dockFotaErrorToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-static {v9}, Lcom/android/server/desktopmode/DockManager;->dockFotaErrorToString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x66

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get6(Lcom/android/server/desktopmode/DockManager;)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_825

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    goto/16 :goto_9

    :cond_825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/desktopmode/DockManager;->-get6(Lcom/android/server/desktopmode/DockManager;)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/desktopmode/DockManager$DockHandler;->this$0:Lcom/android/server/desktopmode/DockManager;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/desktopmode/DockManager;->updateDockFotaState(ILjava/lang/String;)V

    goto/16 :goto_9

    :sswitch_data_846
    .sparse-switch
        0xca -> :sswitch_a
        0xcb -> :sswitch_56
        0xd3 -> :sswitch_1c6
        0xd4 -> :sswitch_c7
        0xdd -> :sswitch_363
        0xe7 -> :sswitch_155
        0x12e -> :sswitch_460
        0x12f -> :sswitch_4a8
        0x137 -> :sswitch_4f0
        0x138 -> :sswitch_5a6
        0x139 -> :sswitch_614
        0x13a -> :sswitch_650
        0x13b -> :sswitch_746
        0x141 -> :sswitch_7b4
    .end sparse-switch
.end method
