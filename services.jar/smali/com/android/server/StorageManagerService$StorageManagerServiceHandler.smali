.class Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;
.super Landroid/os/Handler;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StorageManagerServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 28

    const-string/jumbo v21, "StorageManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleMessage :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_534

    :cond_27
    :goto_27
    return-void

    :pswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-wrap12(Lcom/android/server/StorageManagerService;)V

    goto :goto_27

    :pswitch_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-wrap11(Lcom/android/server/StorageManagerService;)V

    goto :goto_27

    :pswitch_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-wrap3(Lcom/android/server/StorageManagerService;)Z

    move-result v21

    if-nez v21, :cond_6f

    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_27

    :cond_6f
    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "Running fstrim idle maintenance"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v21 .. v23}, Lcom/android/server/StorageManagerService;->-set2(Lcom/android/server/StorageManagerService;J)J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-get8(Lcom/android/server/StorageManagerService;)Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/StorageManagerService;->-get7(Lcom/android/server/StorageManagerService;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/io/File;->setLastModified(J)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_9c} :catch_c1

    :goto_9c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-wrap6(Lcom/android/server/StorageManagerService;)Z

    move-result v21

    if-eqz v21, :cond_cc

    const/4 v9, 0x2

    :goto_a9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/android/server/StorageManagerService;->fstrim(I)V

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Runnable;

    if-eqz v5, :cond_27

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_27

    :catch_c1
    move-exception v6

    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "Unable to record last fstrim!"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_cc
    const/4 v9, 0x0

    goto :goto_a9

    :pswitch_ce
    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "handleMessage :: H_SHUTDOWN"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/storage/IStorageShutdownObserver;

    const/16 v18, 0x0

    :try_start_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string/jumbo v22, "volume"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, "shutdown"

    const/16 v25, 0x0

    aput-object v24, v23, v25

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_102
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_df .. :try_end_102} :catch_531

    move-result v18

    :goto_103
    if-eqz v13, :cond_27

    if-eqz v18, :cond_113

    const/16 v21, 0x0

    :goto_109
    :try_start_109
    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/os/storage/IStorageShutdownObserver;->onShutDownComplete(I)V
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_109 .. :try_end_10e} :catch_110

    goto/16 :goto_27

    :catch_110
    move-exception v10

    goto/16 :goto_27

    :cond_113
    const/16 v21, -0x1

    goto :goto_109

    :pswitch_116
    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "handleMessage :: H_VOLUME_MOUNT"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/storage/VolumeInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v21

    if-nez v21, :cond_1a5

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v21

    if-nez v21, :cond_145

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v21

    if-eqz v21, :cond_1a5

    :cond_145
    const-string/jumbo v21, "StorageManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "hold mount "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " to avoid anr"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/StorageManagerService;->-get13(Lcom/android/server/StorageManagerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v22

    const-string/jumbo v23, "physicalVolumeLatch"

    invoke-static/range {v21 .. v23}, Lcom/android/server/StorageManagerService;->-wrap20(Lcom/android/server/StorageManagerService;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    const-string/jumbo v21, "StorageManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "release mount "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " to avoid anr"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/StorageManagerService;->-wrap2(Lcom/android/server/StorageManagerService;Landroid/os/storage/VolumeInfo;)Z

    move-result v21

    if-eqz v21, :cond_1dc

    const-string/jumbo v21, "StorageManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Ignoring mount "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " due to policy"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_1dc
    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    const-string/jumbo v22, "readonly_storage"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Lcom/android/server/StorageManagerService;->-wrap1(Lcom/android/server/StorageManagerService;Ljava/lang/String;Z)Z

    move-result v21

    if-eqz v21, :cond_1f9

    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "Policy has restriction \'readonly_storage\'; readonly"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v8, -0x80000000

    :cond_1f9
    const/4 v15, 0x0

    :try_start_1fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2fa

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v21

    if-nez v21, :cond_2fa

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v21

    if-eqz v21, :cond_2fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v21

    if-eqz v21, :cond_2fa

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_2fa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-get4(Lcom/android/server/StorageManagerService;)I

    move-result v21

    if-nez v21, :cond_2fa

    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "Pre check SD card"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    :goto_24a
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    move-object/from16 v21, v0

    if-eqz v21, :cond_270

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/StorageManagerService;->mDem:Lcom/samsung/android/security/SemSdCardEncryption;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/security/SemSdCardEncryption;->getSdCardEncryptionPreferences(Ljava/lang/String;)Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    move-result-object v17

    :cond_270
    if-nez v17, :cond_277

    new-instance v17, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    :cond_277
    if-eqz v15, :cond_305

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/StorageManagerService;->requiredEncPolicyCheck(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_305

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string/jumbo v22, "volume"

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, "mount"

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v24, v0

    or-int v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x3

    aput-object v24, v23, v25

    const-string/jumbo v24, "hidden"

    const/16 v25, 0x4

    aput-object v24, v23, v25

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_2d9
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1fa .. :try_end_2d9} :catch_2db

    goto/16 :goto_27

    :catch_2db
    move-exception v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-get6(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v21

    const-string/jumbo v22, "mount_storage"

    const/16 v23, 0xb

    move-object/from16 v0, v21

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_27

    :cond_2fa
    :try_start_2fa
    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "don\'t use pre check SD card"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24a

    :cond_305
    if-eqz v15, :cond_318

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->isAdminPolicyEnabled()Z

    move-result v21

    if-eqz v21, :cond_318

    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "Do not mount external SD card on user mode(=not owner) under SD card encryption policy is set"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    :cond_318
    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "handleMessage:: execute volume mount !!"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v15, :cond_373

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string/jumbo v22, "volume"

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, "mount"

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v24, v0

    or-int v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x3

    aput-object v24, v23, v25

    const-string/jumbo v24, "hidden"

    const/16 v25, 0x4

    aput-object v24, v23, v25

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    goto/16 :goto_27

    :cond_373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-get0(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string/jumbo v22, "volume"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, "mount"

    const/16 v25, 0x0

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v24, v0

    or-int v24, v24, v8

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x3

    aput-object v24, v23, v25

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_3ba
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2fa .. :try_end_3ba} :catch_2db

    goto/16 :goto_27

    :pswitch_3bc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/storage/VolumeInfo;

    const-string/jumbo v21, "StorageManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleMessage :: H_VOLUME_UNMOUNT ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/StorageManagerService;->unmount(Ljava/lang/String;)V

    goto/16 :goto_27

    :pswitch_3f8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/storage/StorageVolume;

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v21, "StorageManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleMessage :: H_VOLUME_BROADCAST (Volume "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " broadcasting "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_27

    new-instance v12, Landroid/content/Intent;

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v21, "android.os.storage.extra.STORAGE_VOLUME"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v21, 0x5000000

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_27

    :pswitch_482
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/content/Intent;

    const-string/jumbo v21, "StorageManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleMessage :: H_INTERNAL_BROADCAST : ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-get2(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v23, "android.permission.WRITE_MEDIA_STORAGE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_27

    :pswitch_4c5
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    const-string/jumbo v21, "StorageManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "handleMessage :: H_PARTITION_FORGET : ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v14}, Lcom/android/server/StorageManagerService;->-wrap10(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V

    goto/16 :goto_27

    :pswitch_4fb
    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "handleMessage :: H_RESET"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/StorageManagerService$StorageManagerServiceHandler;->this$0:Lcom/android/server/StorageManagerService;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/StorageManagerService;->-wrap17(Lcom/android/server/StorageManagerService;)V

    goto/16 :goto_27

    :pswitch_50f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v21

    if-eqz v21, :cond_527

    const-string/jumbo v21, "StorageManagerService"

    const-string/jumbo v22, "It is factory binary, so we dont get the log"

    invoke-static/range {v21 .. v22}, Lcom/android/server/utils/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_527
    const-string/jumbo v21, "bugreportmount"

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/os/Debug;->saveDump(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_27

    :catch_531
    move-exception v11

    goto/16 :goto_103

    :pswitch_data_534
    .packed-switch 0x1
        :pswitch_28
        :pswitch_32
        :pswitch_ce
        :pswitch_3c
        :pswitch_116
        :pswitch_3f8
        :pswitch_482
        :pswitch_3bc
        :pswitch_4c5
        :pswitch_4fb
        :pswitch_50f
    .end packed-switch
.end method
