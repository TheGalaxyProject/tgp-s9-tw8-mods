.class Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;
.super Ljava/lang/Object;
.source "WifiSmartSwitchBackupRestore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBRthread"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mIntent:Landroid/content/Intent;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method private getModelName()Ljava/lang/String;
    .registers 6

    const/16 v4, 0x8

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1c

    const-string/jumbo v2, "SAMSUNG-"

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1c
    return-object v1
.end method


# virtual methods
.method backup()V
    .registers 28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->permissionCheck()Z

    move-result v23

    if-nez v23, :cond_1c

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string/jumbo v24, "SAVE_PATH"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    const-string/jumbo v24, "ACTION"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "SESSION_KEY"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "SOURCE"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "EXPORT_SESSION_TIME"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mExportSessionTime:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v24, v0

    const-string/jumbo v25, "SECURITY_LEVEL"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "[BACKUP] path: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "         action: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    aget-object v25, v25, v8

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " mSource: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "  mSecurityLevel: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/WifiManager;->retrieveBackupData()[B

    move-result-object v22

    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "wifiFullConfigData.length  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " bytes"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_435

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_160

    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v24, "There is no networks to backup"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_160
    :try_start_160
    new-instance v21, Landroid/os/StatFs;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    if-nez v21, :cond_1bd

    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v24, "checking memory fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_189
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_189} :catch_18a

    return-void

    :catch_18a
    move-exception v14

    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Exception : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_1bd
    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v23

    move/from16 v0, v23

    int-to-long v10, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/StatFs;->getBlockSize()I

    move-result v23

    move/from16 v0, v23

    int-to-long v6, v0

    mul-long v16, v10, v6

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v23, v16, v24

    if-gez v23, :cond_222

    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "freeSpaceInBytes : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ", wifiFullConfigData.length : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_222
    const-string/jumbo v23, "/data/misc/wifi_share_profile/backup.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const-string/jumbo v23, "/data/misc/wifi_share_profile/backup_old.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const-string/jumbo v23, "/data/misc/wifi_share_profile/backup_old.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeOldStyle(Ljava/lang/String;)V

    const-string/jumbo v23, "/data/misc/wifi_share_profile/backup.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeOldStyle(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string/jumbo v23, "/data/misc/wifi_share_profile/backup.conf"

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    const-string/jumbo v23, "/data/misc/wifi_share_profile/backup_old.conf"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    :try_start_269
    new-instance v15, Ljava/io/FileOutputStream;

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-direct {v15, v9, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v18, Ljava/io/DataOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v15}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    const-string/jumbo v23, "/data/misc/wifi_share_profile/backup_old.conf"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "wpa_supplicant.conf"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_2f6

    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v24, "encrypt old file fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_2df
    .catch Ljava/io/IOException; {:try_start_269 .. :try_end_2df} :catch_3d4
    .catchall {:try_start_269 .. :try_end_2df} :catchall_41d

    if-eqz v9, :cond_2ea

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_2ea

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_2ea
    if-eqz v12, :cond_2f5

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_2f5

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_2f5
    return-void

    :cond_2f6
    :try_start_2f6
    const-string/jumbo v23, "/data/misc/wifi_share_profile/backup.conf"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "WifiConfigStore.xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v19

    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_363

    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v24, "encrypt new file fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_34c
    .catch Ljava/io/IOException; {:try_start_2f6 .. :try_end_34c} :catch_3d4
    .catchall {:try_start_2f6 .. :try_end_34c} :catchall_41d

    if-eqz v9, :cond_357

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_357

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_357
    if-eqz v12, :cond_362

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_362

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_362
    return-void

    :cond_363
    :try_start_363
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeXML(Ljava/lang/String;)I

    move-result v19

    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_3a8

    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v24, "makeXML fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_391
    .catch Ljava/io/IOException; {:try_start_363 .. :try_end_391} :catch_3d4
    .catchall {:try_start_363 .. :try_end_391} :catchall_41d

    if-eqz v9, :cond_39c

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_39c

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_39c
    if-eqz v12, :cond_3a7

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_3a7

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_3a7
    return-void

    :cond_3a8
    if-eqz v9, :cond_3b3

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_3b3

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_3b3
    if-eqz v12, :cond_3be

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_3be

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_3be
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    :cond_3d3
    :goto_3d3
    return-void

    :catch_3d4
    move-exception v13

    :try_start_3d5
    const-string/jumbo v23, "WifiSmartSwitchBackupRestore"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "backup file IO exception "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V
    :try_end_406
    .catchall {:try_start_3d5 .. :try_end_406} :catchall_41d

    if-eqz v9, :cond_411

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_411

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_411
    if-eqz v12, :cond_41c

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_41c

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_41c
    return-void

    :catchall_41d
    move-exception v23

    if-eqz v9, :cond_429

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_429

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_429
    if-eqz v12, :cond_434

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_434

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_434
    throw v23

    :cond_435
    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v8, v0, :cond_3d3

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    goto :goto_3d3
.end method

.method createBnRFile(Ljava/lang/String;)V
    .registers 7

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_e
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string/jumbo v2, "WifiSmartSwitchBackupRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createBnRFile exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-set0(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5e

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-set1(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;[B)[B

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get2(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    :goto_42
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherInputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    :cond_5e
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_42
.end method

.method encrypt(ILjava/lang/String;Ljava/lang/String;)I
    .registers 22

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    if-nez p1, :cond_64

    :try_start_7
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_33
    .catchall {:try_start_7 .. :try_end_e} :catchall_ce

    :try_start_e
    new-instance v6, Ljava/io/FileOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_10d
    .catchall {:try_start_e .. :try_end_15} :catchall_103

    :try_start_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_111
    .catchall {:try_start_15 .. :try_end_1a} :catchall_106

    move-result-object v10

    move-object v5, v6

    move-object v8, v9

    :cond_1d
    :goto_1d
    const/4 v12, 0x0

    const/16 v14, 0x400

    :try_start_20
    new-array v1, v14, [B

    :goto_22
    if-eqz v8, :cond_80

    const/4 v14, 0x0

    const/16 v15, 0x400

    invoke-virtual {v8, v1, v14, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v14, -0x1

    if-eq v12, v14, :cond_80

    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_32} :catch_33
    .catchall {:try_start_20 .. :try_end_32} :catchall_ce

    goto :goto_22

    :catch_33
    move-exception v2

    :goto_34
    :try_start_34
    const-string/jumbo v14, "WifiSmartSwitchBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "error : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_34 .. :try_end_4e} :catchall_ce

    const/4 v13, -0x1

    if-eqz v10, :cond_54

    :try_start_51
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_54
    if-eqz v5, :cond_59

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_59
    if-eqz v8, :cond_5e

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_5e
    if-eqz v3, :cond_63

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_63} :catch_b2

    :cond_63
    :goto_63
    return v13

    :cond_64
    const/4 v14, 0x1

    move/from16 v0, p1

    if-ne v0, v14, :cond_1d

    :try_start_69
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_70} :catch_33
    .catchall {:try_start_69 .. :try_end_70} :catchall_ce

    :try_start_70
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->decryptStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_7d} :catch_116
    .catchall {:try_start_70 .. :try_end_7d} :catchall_10a

    move-object v3, v4

    move-object v10, v11

    goto :goto_1d

    :cond_80
    if-eqz v10, :cond_85

    :try_start_82
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_85
    if-eqz v5, :cond_8a

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_8a
    if-eqz v8, :cond_8f

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_8f
    if-eqz v3, :cond_63

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_94} :catch_95

    goto :goto_63

    :catch_95
    move-exception v7

    const-string/jumbo v14, "WifiSmartSwitchBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "io exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b0
    const/4 v13, -0x1

    goto :goto_63

    :catch_b2
    move-exception v7

    const-string/jumbo v14, "WifiSmartSwitchBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "io exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    :catchall_ce
    move-exception v14

    :goto_cf
    if-eqz v10, :cond_d4

    :try_start_d1
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    :cond_d4
    if-eqz v5, :cond_d9

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_d9
    if-eqz v8, :cond_de

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_de
    if-eqz v3, :cond_e3

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_e3} :catch_e4

    :cond_e3
    :goto_e3
    throw v14

    :catch_e4
    move-exception v7

    const-string/jumbo v15, "WifiSmartSwitchBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "io exception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    goto :goto_e3

    :catchall_103
    move-exception v14

    move-object v8, v9

    goto :goto_cf

    :catchall_106
    move-exception v14

    move-object v5, v6

    move-object v8, v9

    goto :goto_cf

    :catchall_10a
    move-exception v14

    move-object v3, v4

    goto :goto_cf

    :catch_10d
    move-exception v2

    move-object v8, v9

    goto/16 :goto_34

    :catch_111
    move-exception v2

    move-object v5, v6

    move-object v8, v9

    goto/16 :goto_34

    :catch_116
    move-exception v2

    move-object v3, v4

    goto/16 :goto_34
.end method

.method public encryptStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-set0(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    if-ne v2, v4, :cond_65

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateEncryptSalt()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-set1(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;[B)[B

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get2(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    :goto_4a
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get3(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get0(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2

    :cond_65
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-set2(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;

    goto :goto_4a
.end method

.method public generateEncryptSalt()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    new-array v0, v2, [B

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method public generatePBKDF2SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/16 v1, 0x3e8

    const/16 v4, 0x100

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get2(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;)[B

    move-result-object v6

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string/jumbo v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method public generateSHA256SecretKey()Ljavax/crypto/spec/SecretKeySpec;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    const/16 v2, 0x10

    new-array v1, v2, [B

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    array-length v3, v1

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method inputStreamToByteArray(Ljava/io/InputStream;)[B
    .registers 8

    const/4 v4, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v5, 0x400

    new-array v1, v5, [B

    const/4 v3, -0x1

    :goto_b
    :try_start_b
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1c

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_16} :catch_17

    goto :goto_b

    :catch_17
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1b
    return-object v4

    :cond_1c
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_23} :catch_17

    goto :goto_1b
.end method

.method makeOldStyle(Ljava/lang/String;)V
    .registers 31

    const-string/jumbo v8, "ssid"

    const-string/jumbo v5, "scan_ssid"

    const-string/jumbo v6, "key_mgmt"

    const-string/jumbo v7, "psk"

    sget-object v25, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v26, 0x0

    aget-object v9, v25, v26

    sget-object v25, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v26, 0x1

    aget-object v10, v25, v26

    sget-object v25, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v26, 0x2

    aget-object v11, v25, v26

    sget-object v25, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    const/16 v26, 0x3

    aget-object v12, v25, v26

    const-string/jumbo v13, "wep_tx_keyidx"

    const-string/jumbo v4, "autojoin"

    const-string/jumbo v3, "auth_alg"

    const-string/jumbo v25, "WifiSmartSwitchBackupRestore"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "makeOldStyle "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    move-result-object v17

    const/16 v21, 0x0

    const-string/jumbo v24, "\n\t"

    :try_start_5a
    new-instance v22, Ljava/io/FileWriter;

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_67} :catch_402
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_67} :catch_375
    .catchall {:try_start_5a .. :try_end_67} :catchall_3d9

    :try_start_67
    const-string/jumbo v25, "Old_Version_Style\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_75
    :goto_75
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_342

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v15, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    move/from16 v25, v0

    if-nez v25, :cond_75

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v25, v0

    sget-object v26, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v25, "EAP"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_75

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v25, v0

    if-eqz v25, :cond_ba

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v25

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_75

    :cond_ba
    const-string/jumbo v25, "network={"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-boolean v0, v15, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v25, v0

    if-eqz v25, :cond_11c

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "=1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_11c
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14f

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_14f
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v25, v0

    sget-object v26, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    if-eqz v25, :cond_1c1

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_1c1
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    if-eqz v25, :cond_1fc

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_1fc
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget-object v25, v25, v26

    if-eqz v25, :cond_237

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_237
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    aget-object v25, v25, v26

    if-eqz v25, :cond_272

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_272
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-object v25, v25, v26

    if-eqz v25, :cond_2ad

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget-object v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_2ad
    iget-object v0, v15, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v25, v25, v26

    if-eqz v25, :cond_2e4

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :cond_2e4
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v15, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const-string/jumbo v25, "\n}\n\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_31b
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_31b} :catch_31d
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_31b} :catch_405
    .catchall {:try_start_67 .. :try_end_31b} :catchall_3fe

    goto/16 :goto_75

    :catch_31d
    move-exception v18

    move-object/from16 v21, v22

    :goto_320
    :try_start_320
    const-string/jumbo v25, "WifiSmartSwitchBackupRestore"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "makeOldStyle File not found "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33e
    .catchall {:try_start_320 .. :try_end_33e} :catchall_3d9

    :try_start_33e
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileWriter;->close()V
    :try_end_341
    .catch Ljava/io/IOException; {:try_start_33e .. :try_end_341} :catch_3b8

    :goto_341
    return-void

    :cond_342
    :try_start_342
    const-string/jumbo v25, "New_Version_Style\n"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/io/FileWriter;->flush()V
    :try_end_34f
    .catch Ljava/io/FileNotFoundException; {:try_start_342 .. :try_end_34f} :catch_31d
    .catch Ljava/io/IOException; {:try_start_342 .. :try_end_34f} :catch_405
    .catchall {:try_start_342 .. :try_end_34f} :catchall_3fe

    :try_start_34f
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileWriter;->close()V
    :try_end_352
    .catch Ljava/io/IOException; {:try_start_34f .. :try_end_352} :catch_355

    :goto_352
    move-object/from16 v21, v22

    goto :goto_341

    :catch_355
    move-exception v20

    const-string/jumbo v25, "WifiSmartSwitchBackupRestore"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "fw.close IOException"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_352

    :catch_375
    move-exception v19

    :goto_376
    :try_start_376
    const-string/jumbo v25, "WifiSmartSwitchBackupRestore"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "makeOldStyle IOException :"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_394
    .catchall {:try_start_376 .. :try_end_394} :catchall_3d9

    :try_start_394
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileWriter;->close()V
    :try_end_397
    .catch Ljava/io/IOException; {:try_start_394 .. :try_end_397} :catch_398

    goto :goto_341

    :catch_398
    move-exception v20

    const-string/jumbo v25, "WifiSmartSwitchBackupRestore"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "fw.close IOException"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_341

    :catch_3b8
    move-exception v20

    const-string/jumbo v25, "WifiSmartSwitchBackupRestore"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "fw.close IOException"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_341

    :catchall_3d9
    move-exception v25

    :goto_3da
    :try_start_3da
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileWriter;->close()V
    :try_end_3dd
    .catch Ljava/io/IOException; {:try_start_3da .. :try_end_3dd} :catch_3de

    :goto_3dd
    throw v25

    :catch_3de
    move-exception v20

    const-string/jumbo v26, "WifiSmartSwitchBackupRestore"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "fw.close IOException"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v20 .. v20}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3dd

    :catchall_3fe
    move-exception v25

    move-object/from16 v21, v22

    goto :goto_3da

    :catch_402
    move-exception v18

    goto/16 :goto_320

    :catch_405
    move-exception v19

    move-object/from16 v21, v22

    goto/16 :goto_376
.end method

.method makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x1

    array-length v2, p2

    invoke-virtual {p1, v3, v2}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    :goto_c
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_29

    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_c

    :cond_29
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_38

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method makeXML(Ljava/lang/String;)I
    .registers 12

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "wifi_wpaconf.xml"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/io/FileWriter;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_a4
    .catchall {:try_start_2 .. :try_end_2b} :catchall_cc

    :try_start_2b
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string/jumbo v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v7, ""

    const-string/jumbo v8, "Wi-Fi"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "model"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "model"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "conf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "wpa_supplicant.conf"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "conf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "newConf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "WifiConfigStore.xml"

    invoke-interface {v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "newConf"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, ""

    const-string/jumbo v8, "Wi-Fi"

    invoke-interface {v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_97} :catch_dc
    .catchall {:try_start_2b .. :try_end_97} :catchall_d9

    if-eqz v5, :cond_9c

    :try_start_99
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9e

    :cond_9c
    :goto_9c
    move-object v4, v5

    :cond_9d
    :goto_9d
    return v2

    :catch_9e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_9c

    :catch_a4
    move-exception v1

    :goto_a5
    :try_start_a5
    const-string/jumbo v7, "WifiSmartSwitchBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "makeXML exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bf
    .catchall {:try_start_a5 .. :try_end_bf} :catchall_cc

    const/4 v2, -0x1

    if-eqz v4, :cond_9d

    :try_start_c2
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6

    goto :goto_9d

    :catch_c6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_9d

    :catchall_cc
    move-exception v7

    :goto_cd
    if-eqz v4, :cond_d2

    :try_start_cf
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d3

    :cond_d2
    :goto_d2
    throw v7

    :catch_d3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v2, -0x1

    goto :goto_d2

    :catchall_d9
    move-exception v7

    move-object v4, v5

    goto :goto_cd

    :catch_dc
    move-exception v1

    move-object v4, v5

    goto :goto_a5
.end method

.method public permissionCheck()Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->-get1()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_7
    if-ge v1, v4, :cond_17

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_14

    return v2

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    const/4 v1, 0x1

    return v1
.end method

.method readXML(Ljava/lang/String;)I
    .registers 18

    const/4 v11, 0x0

    const/4 v5, 0x0

    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    new-instance v6, Ljava/io/FileReader;

    new-instance v13, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "wifi_wpaconf.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_35} :catch_1a6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_1a9
    .catchall {:try_start_2 .. :try_end_35} :catchall_1a4

    :try_start_35
    invoke-interface {v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    const/4 v7, 0x0

    const-string/jumbo v12, ""

    const-string/jumbo v2, ""

    :goto_43
    const/4 v13, 0x1

    if-eq v9, v13, :cond_196

    const/4 v13, 0x2

    if-ne v9, v13, :cond_6e

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_68

    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_68

    const-string/jumbo v13, "newConf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_69

    :cond_68
    const/4 v7, 0x1

    :cond_69
    :goto_69
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_43

    :cond_6e
    const/4 v13, 0x4

    if-ne v9, v13, :cond_165

    if-eqz v7, :cond_ca

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ca

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    const-string/jumbo v13, "WifiSmartSwitchBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] model : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v15, v15, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlModel:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_a6} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_a6} :catch_101
    .catchall {:try_start_35 .. :try_end_a6} :catchall_15d

    goto :goto_69

    :catch_a7
    move-exception v10

    move-object v5, v6

    :goto_a9
    :try_start_a9
    const-string/jumbo v13, "WifiSmartSwitchBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "runtimeException "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c3
    .catchall {:try_start_a9 .. :try_end_c3} :catchall_1a4

    const/4 v11, -0x1

    if-eqz v5, :cond_c9

    :try_start_c6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_c9} :catch_1a0

    :cond_c9
    :goto_c9
    return v11

    :cond_ca
    if-eqz v7, :cond_126

    :try_start_cc
    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_126

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    const-string/jumbo v13, "WifiSmartSwitchBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] wpa_supplicant.conf : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v15, v15, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catch Ljava/lang/RuntimeException; {:try_start_cc .. :try_end_ff} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_ff} :catch_101
    .catchall {:try_start_cc .. :try_end_ff} :catchall_15d

    goto/16 :goto_69

    :catch_101
    move-exception v1

    move-object v5, v6

    :goto_103
    :try_start_103
    const-string/jumbo v13, "WifiSmartSwitchBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "read XML Error "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_103 .. :try_end_11d} :catchall_1a4

    const/4 v11, -0x1

    if-eqz v5, :cond_c9

    :try_start_120
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_123
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_123} :catch_124

    goto :goto_c9

    :catch_124
    move-exception v4

    return v11

    :cond_126
    if-eqz v7, :cond_69

    :try_start_128
    const-string/jumbo v13, "newConf"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_69

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    const-string/jumbo v13, "WifiSmartSwitchBackupRestore"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[readXML] WifiConfigStore.xml : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v15, v15, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15b
    .catch Ljava/lang/RuntimeException; {:try_start_128 .. :try_end_15b} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_15b} :catch_101
    .catchall {:try_start_128 .. :try_end_15b} :catchall_15d

    goto/16 :goto_69

    :catchall_15d
    move-exception v13

    move-object v5, v6

    :goto_15f
    if-eqz v5, :cond_164

    :try_start_161
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_164} :catch_1a2

    :cond_164
    throw v13

    :cond_165
    const/4 v13, 0x3

    if-ne v9, v13, :cond_69

    :try_start_168
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_17a

    const-string/jumbo v13, "model"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_17a

    const/4 v7, 0x0

    goto/16 :goto_69

    :cond_17a
    if-eqz v7, :cond_188

    const-string/jumbo v13, "conf"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_188

    const/4 v7, 0x0

    goto/16 :goto_69

    :cond_188
    if-eqz v7, :cond_69

    const-string/jumbo v13, "newConf"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_190
    .catch Ljava/lang/RuntimeException; {:try_start_168 .. :try_end_190} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_190} :catch_101
    .catchall {:try_start_168 .. :try_end_190} :catchall_15d

    move-result v13

    if-eqz v13, :cond_69

    const/4 v7, 0x0

    goto/16 :goto_69

    :cond_196
    if-eqz v6, :cond_19b

    :try_start_198
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_19b
    .catch Ljava/lang/Exception; {:try_start_198 .. :try_end_19b} :catch_19e

    :cond_19b
    move-object v5, v6

    goto/16 :goto_c9

    :catch_19e
    move-exception v4

    return v11

    :catch_1a0
    move-exception v4

    return v11

    :catch_1a2
    move-exception v4

    return v11

    :catchall_1a4
    move-exception v13

    goto :goto_15f

    :catch_1a6
    move-exception v10

    goto/16 :goto_a9

    :catch_1a9
    move-exception v1

    goto/16 :goto_103
.end method

.method restore()V
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string/jumbo v22, "SAVE_PATH"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string/jumbo v22, "ACTION"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SESSION_KEY"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSessionKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SOURCE"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string/jumbo v23, "SECURITY_LEVEL"

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[RESTORE] path: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "         action: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->actionStrings:[Ljava/lang/String;

    aget-object v23, v23, v6

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " mSource: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "  mSecurityLevel: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSecurityLevel:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->permissionCheck()Z

    move-result v21

    if-nez v21, :cond_ef

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x4

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_ef
    if-nez v6, :cond_50d

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->getModelName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->readXML(Ljava/lang/String;)I

    move-result v19

    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "[readXML] xmlNewConf: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "  xmlOldConf: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_161

    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v22, "xml parsing error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x3

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_161
    const-string/jumbo v21, "/data/misc/wifi_share_profile/restore.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->createBnRFile(Ljava/lang/String;)V

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_22c

    new-instance v16, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "/data/misc/wifi_share_profile/restore.conf"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlNewConf:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    :cond_201
    :goto_201
    if-eqz v16, :cond_20d

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-gtz v21, :cond_2c2

    :cond_20d
    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v22, "can\'t read file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x3

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_22c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_201

    new-instance v16, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "/data/misc/wifi_share_profile/restore.conf"

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->encrypt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlOldConf:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    goto/16 :goto_201

    :cond_2c2
    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_2e9

    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v22, "decrypt fail"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    return-void

    :cond_2e9
    const/16 v17, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    :try_start_2ed
    const-string/jumbo v21, "wpa_supplicant.conf"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->xmlConf:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_383

    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v22, "START restore OLD STYLE"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Ljava/io/File;

    const-string/jumbo v21, "/data/misc/wifi_share_profile/restore.conf"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_317
    .catch Ljava/io/FileNotFoundException; {:try_start_2ed .. :try_end_317} :catch_485
    .catch Ljava/io/IOException; {:try_start_2ed .. :try_end_317} :catch_423
    .catchall {:try_start_2ed .. :try_end_317} :catchall_4d8

    :try_start_317
    new-instance v14, Ljava/io/FileInputStream;

    const-string/jumbo v21, "/data/misc/wifi_share_profile/restore.conf"

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_321
    .catch Ljava/io/FileNotFoundException; {:try_start_317 .. :try_end_321} :catch_539
    .catch Ljava/io/IOException; {:try_start_317 .. :try_end_321} :catch_54b
    .catchall {:try_start_317 .. :try_end_321} :catchall_52a

    :try_start_321
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_326
    .catch Ljava/io/FileNotFoundException; {:try_start_321 .. :try_end_326} :catch_53e
    .catch Ljava/io/IOException; {:try_start_321 .. :try_end_326} :catch_550
    .catchall {:try_start_321 .. :try_end_326} :catchall_52e

    const/4 v8, 0x0

    :try_start_327
    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Bytes "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/io/FileInputStream;->available()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/net/wifi/WifiManager;->restoreSupplicantBackupData([B[B)V
    :try_end_358
    .catch Ljava/io/FileNotFoundException; {:try_start_327 .. :try_end_358} :catch_544
    .catch Ljava/io/IOException; {:try_start_327 .. :try_end_358} :catch_556
    .catchall {:try_start_327 .. :try_end_358} :catchall_533

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v17, v18

    :goto_35c
    :try_start_35c
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_362
    .catch Ljava/io/IOException; {:try_start_35c .. :try_end_362} :catch_3f5

    :goto_362
    if-eqz v17, :cond_36d

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_36d

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    :cond_36d
    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    :cond_382
    :goto_382
    return-void

    :cond_383
    :try_start_383
    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v22, "START restore"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "/data/misc/wifi_share_profile/restore.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->throwAwayOldStyle(Ljava/lang/String;)V

    new-instance v18, Ljava/io/File;

    const-string/jumbo v21, "/data/misc/wifi_share_profile/restore.conf"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3a2
    .catch Ljava/io/FileNotFoundException; {:try_start_383 .. :try_end_3a2} :catch_485
    .catch Ljava/io/IOException; {:try_start_383 .. :try_end_3a2} :catch_423
    .catchall {:try_start_383 .. :try_end_3a2} :catchall_4d8

    :try_start_3a2
    new-instance v14, Ljava/io/FileInputStream;

    const-string/jumbo v21, "/data/misc/wifi_share_profile/restore.conf"

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3ac
    .catch Ljava/io/FileNotFoundException; {:try_start_3a2 .. :try_end_3ac} :catch_539
    .catch Ljava/io/IOException; {:try_start_3a2 .. :try_end_3ac} :catch_54b
    .catchall {:try_start_3a2 .. :try_end_3ac} :catchall_52a

    :try_start_3ac
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b1
    .catch Ljava/io/FileNotFoundException; {:try_start_3ac .. :try_end_3b1} :catch_53e
    .catch Ljava/io/IOException; {:try_start_3ac .. :try_end_3b1} :catch_550
    .catchall {:try_start_3ac .. :try_end_3b1} :catchall_52e

    :try_start_3b1
    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Bytes "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v14}, Ljava/io/FileInputStream;->available()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/io/FileInputStream;->available()I

    move-result v21

    move/from16 v0, v21

    new-array v7, v0, [B

    invoke-virtual {v14}, Ljava/io/FileInputStream;->available()I

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v12, v7, v0, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiManager;->restoreBackupData([B)V
    :try_end_3ef
    .catch Ljava/io/FileNotFoundException; {:try_start_3b1 .. :try_end_3ef} :catch_544
    .catch Ljava/io/IOException; {:try_start_3b1 .. :try_end_3ef} :catch_556
    .catchall {:try_start_3b1 .. :try_end_3ef} :catchall_533

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v17, v18

    goto/16 :goto_35c

    :catch_3f5
    move-exception v10

    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "restore close Exception "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_362

    :catch_423
    move-exception v10

    :goto_424
    :try_start_424
    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "restore file IO exception "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44f
    .catchall {:try_start_424 .. :try_end_44f} :catchall_4d8

    :try_start_44f
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_455
    .catch Ljava/io/IOException; {:try_start_44f .. :try_end_455} :catch_457

    goto/16 :goto_362

    :catch_457
    move-exception v10

    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "restore close Exception "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_362

    :catch_485
    move-exception v9

    :goto_486
    :try_start_486
    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "restore File not Found exception: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a2
    .catchall {:try_start_486 .. :try_end_4a2} :catchall_4d8

    :try_start_4a2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4a8
    .catch Ljava/io/IOException; {:try_start_4a2 .. :try_end_4a8} :catch_4aa

    goto/16 :goto_362

    :catch_4aa
    move-exception v10

    const-string/jumbo v21, "WifiSmartSwitchBackupRestore"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "restore close Exception "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "  "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_362

    :catchall_4d8
    move-exception v21

    :goto_4d9
    :try_start_4d9
    invoke-virtual {v11}, Ljava/io/DataInputStream;->close()V

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4df
    .catch Ljava/io/IOException; {:try_start_4d9 .. :try_end_4df} :catch_4e0

    :goto_4df
    throw v21

    :catch_4e0
    move-exception v10

    const-string/jumbo v22, "WifiSmartSwitchBackupRestore"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "restore close Exception "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "  "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4df

    :cond_50d
    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v6, v0, :cond_382

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x3

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->sendResponse(IIII)V

    goto/16 :goto_382

    :catchall_52a
    move-exception v21

    move-object/from16 v17, v18

    goto :goto_4d9

    :catchall_52e
    move-exception v21

    move-object v13, v14

    move-object/from16 v17, v18

    goto :goto_4d9

    :catchall_533
    move-exception v21

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v17, v18

    goto :goto_4d9

    :catch_539
    move-exception v9

    move-object/from16 v17, v18

    goto/16 :goto_486

    :catch_53e
    move-exception v9

    move-object v13, v14

    move-object/from16 v17, v18

    goto/16 :goto_486

    :catch_544
    move-exception v9

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v17, v18

    goto/16 :goto_486

    :catch_54b
    move-exception v10

    move-object/from16 v17, v18

    goto/16 :goto_424

    :catch_550
    move-exception v10

    move-object v13, v14

    move-object/from16 v17, v18

    goto/16 :goto_424

    :catch_556
    move-exception v10

    move-object v11, v12

    move-object v13, v14

    move-object/from16 v17, v18

    goto/16 :goto_424
.end method

.method public run()V
    .registers 3

    const-string/jumbo v0, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->backup()V

    :cond_12
    :goto_12
    return-void

    :cond_13
    const-string/jumbo v0, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->restore()V

    goto :goto_12
.end method

.method sendResponse(IIII)V
    .registers 9

    const-string/jumbo v1, "WifiSmartSwitchBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "r:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",rs:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isCanceled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mIsCanceled:Z

    if-eqz v1, :cond_42

    return-void

    :cond_42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_8b

    const-string/jumbo v1, "com.sec.android.intent.action.RESPONSE_BACKUP_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mExportSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_59
    :goto_59
    const-string/jumbo v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ERR_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "SOURCE"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "SmartSwitch"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->this$0:Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;

    iget-object v2, v2, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore;->mSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_8a
    return-void

    :cond_8b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_59

    const-string/jumbo v1, "com.sec.android.intent.action.RESPONSE_RESTORE_WIFIWPACONF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_59

    :cond_95
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestore$WifiBRthread;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_8a
.end method

.method throwAwayOldStyle(Ljava/lang/String;)V
    .registers 13

    const-string/jumbo v7, "WifiSmartSwitchBackupRestore"

    const-string/jumbo v8, "throwAwayOldStyle"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v2, 0x0

    :try_start_b
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_84
    .catchall {:try_start_b .. :try_end_15} :catchall_c6

    :try_start_15
    const-string/jumbo v0, ""

    :cond_18
    invoke-virtual {v6}, Ljava/io/BufferedReader;->ready()Z

    move-result v7

    if-eqz v7, :cond_2d

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    const-string/jumbo v7, "New_Version_Style"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_2d
    :goto_2d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->ready()Z

    move-result v7

    if-eqz v7, :cond_50

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2d

    :cond_50
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_55} :catch_f5
    .catchall {:try_start_15 .. :try_end_55} :catchall_ee

    :try_start_55
    invoke-virtual {v3, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5b} :catch_f8
    .catchall {:try_start_55 .. :try_end_5b} :catchall_f1

    if-eqz v3, :cond_60

    :try_start_5d
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    :cond_60
    if-eqz v6, :cond_65

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_65} :catch_68

    :cond_65
    :goto_65
    move-object v2, v3

    move-object v5, v6

    :cond_67
    :goto_67
    return-void

    :catch_68
    move-exception v1

    const-string/jumbo v7, "WifiSmartSwitchBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "throwAwayOldStyle try IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    :catch_84
    move-exception v1

    :goto_85
    :try_start_85
    const-string/jumbo v7, "WifiSmartSwitchBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "throwAwayOldStyle IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_85 .. :try_end_9f} :catchall_c6

    if-eqz v2, :cond_a4

    :try_start_a1
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    :cond_a4
    if-eqz v5, :cond_67

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a9} :catch_aa

    goto :goto_67

    :catch_aa
    move-exception v1

    const-string/jumbo v7, "WifiSmartSwitchBackupRestore"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "throwAwayOldStyle try IOException "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    :catchall_c6
    move-exception v7

    :goto_c7
    if-eqz v2, :cond_cc

    :try_start_c9
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    :cond_cc
    if-eqz v5, :cond_d1

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d1} :catch_d2

    :cond_d1
    :goto_d1
    throw v7

    :catch_d2
    move-exception v1

    const-string/jumbo v8, "WifiSmartSwitchBackupRestore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "throwAwayOldStyle try IOException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d1

    :catchall_ee
    move-exception v7

    move-object v5, v6

    goto :goto_c7

    :catchall_f1
    move-exception v7

    move-object v2, v3

    move-object v5, v6

    goto :goto_c7

    :catch_f5
    move-exception v1

    move-object v5, v6

    goto :goto_85

    :catch_f8
    move-exception v1

    move-object v2, v3

    move-object v5, v6

    goto :goto_85
.end method
