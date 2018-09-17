.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->registerBootReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15f

    const/4 v3, 0x1

    :try_start_f
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "multiWindowDynamicEnabled"

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setMultiWindowState(Z)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_29} :catch_160

    :cond_29
    :goto_29
    const/4 v4, 0x0

    :try_start_2a
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "deviceSpeakerEnabledState"

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3b} :catch_17d

    move-result v4

    :goto_3c
    if-eqz v4, :cond_50

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get0(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V

    :cond_50
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v5

    if-eqz v5, :cond_65

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v5

    if-eqz v5, :cond_65

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v5, v10}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    :cond_65
    :try_start_65
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedStatusBarMode"

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9e

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "statusBarMode"

    const/16 v8, 0x3e8

    const/4 v9, 0x4

    invoke-virtual {v5, v8, v6, v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedStatusBarMode"

    const/16 v8, 0x3e8

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v6, v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_9e} :catch_1a2

    :cond_9e
    :goto_9e
    :try_start_9e
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedStatusBarClockState"

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_d6

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "statusBarClockState"

    const/16 v8, 0x3e8

    const/4 v9, 0x4

    invoke-virtual {v5, v8, v6, v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedStatusBarClockState"

    const/16 v8, 0x3e8

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v6, v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_d6} :catch_19f

    :cond_d6
    :goto_d6
    :try_start_d6
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedStatusBarIconsState"

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_10e

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "statusBarIconsState"

    const/16 v8, 0x3e8

    const/4 v9, 0x4

    invoke-virtual {v5, v8, v6, v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedStatusBarIconsState"

    const/16 v8, 0x3e8

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v6, v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_10e} :catch_19c

    :cond_10e
    :goto_10e
    :try_start_10e
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedHardKeyIntentState"

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_146

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "hardKeyIntentMode"

    const/16 v8, 0x3e8

    const/4 v9, 0x4

    invoke-virtual {v5, v8, v6, v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get1(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v5

    const-string/jumbo v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sealedHardKeyIntentState"

    const/16 v8, 0x3e8

    const/4 v9, -0x1

    invoke-virtual {v5, v8, v6, v7, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_146} :catch_19a

    :cond_146
    :goto_146
    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-get2(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result v5

    if-eqz v5, :cond_15f

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getSettingsHiddenState()I

    move-result v5

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_15f

    iget-object v5, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$1;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    const/16 v6, 0x1800

    invoke-virtual {v5, v10, v6}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setSettingsHiddenState(ZI)I

    :cond_15f
    return-void

    :catch_160
    move-exception v1

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception for multi-window state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    :catch_17d
    move-exception v1

    const-string/jumbo v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSpeaker failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    :catch_19a
    move-exception v2

    goto :goto_146

    :catch_19c
    move-exception v2

    goto/16 :goto_10e

    :catch_19f
    move-exception v2

    goto/16 :goto_d6

    :catch_1a2
    move-exception v2

    goto/16 :goto_9e
.end method
