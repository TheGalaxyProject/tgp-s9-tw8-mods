.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiApBackupRestore.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;
    }
.end annotation


# static fields
.field private static cipher:Ljavax/crypto/Cipher;

.field private static key:Ljavax/crypto/spec/SecretKeySpec;

.field private static mIsCanceled:Z

.field private static final permissions:[Ljava/lang/String;


# instance fields
.field private final MAX_CLIENT:I

.field private final WL_FAIL:I

.field private final WL_NOT_MAC:I

.field private action:I

.field private currentOS:I

.field private mExportSessionTime:Ljava/lang/String;

.field private mOption:I

.field private mSecurityLevel:I

.field private mSessionKey:Ljava/lang/String;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSource:Ljava/lang/String;

.field private final maxClient:I

.field private salt:[B

.field private final support5G:Z

.field private final timeout:I

.field private xmlConf:Ljava/lang/String;

.field private xmlModel:Ljava/lang/String;

.field private xmlOtherConf:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    return v0
.end method

.method static synthetic -get1()Ljavax/crypto/Cipher;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic -get10()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->permissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)[B
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    return v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlOtherConf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    return v0
.end method

.method static synthetic -get3()Ljavax/crypto/spec/SecretKeySpec;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .registers 1

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method static synthetic -set1(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 1

    sput-object p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mExportSessionTime:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mOption:I

    return p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSecurityLevel:I

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSessionKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;[B)[B
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->salt:[B

    return-object p1
.end method

.method static synthetic -set7(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlConf:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlModel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->xmlOtherConf:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->permissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->MAX_CLIENT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->WL_NOT_MAC:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->WL_FAIL:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->currentOS:I

    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->support5G:Z

    sget v0, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->maxClient:I

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultTimeOut:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->timeout:I

    return-void
.end method


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .registers 22

    const-string/jumbo v14, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    const-string/jumbo v14, "/data/misc/wifi/softap.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->createJSONObj(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    const/4 v12, 0x0

    :try_start_22
    new-instance v13, Ljava/io/FileWriter;

    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "/data/misc/wifi_hostapd/backup.conf"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2f} :catch_64
    .catchall {:try_start_22 .. :try_end_2f} :catchall_8a

    :try_start_2f
    const-string/jumbo v14, "WifiApBackupRestore"

    const-string/jumbo v15, "Writing the JSON"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3b} :catch_163
    .catchall {:try_start_2f .. :try_end_3b} :catchall_15f

    if-eqz v13, :cond_40

    :try_start_3d
    invoke-virtual {v13}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_5f

    :cond_40
    :goto_40
    const-string/jumbo v14, "/data/misc/wifi_hostapd/backup.conf"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getFileSize(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v14, 0x0

    cmp-long v14, v6, v14

    if-nez v14, :cond_96

    const-string/jumbo v14, "WifiApBackupRestore"

    const-string/jumbo v15, "Backup failed!, There is no conf file"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    :catch_5f
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :catch_64
    move-exception v8

    :goto_65
    :try_start_65
    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "FileWriter exception "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_65 .. :try_end_7f} :catchall_8a

    if-eqz v12, :cond_40

    :try_start_81
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_40

    :catch_85
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :catchall_8a
    move-exception v14

    :goto_8b
    if-eqz v12, :cond_90

    :try_start_8d
    invoke-virtual {v12}, Ljava/io/FileWriter;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    :cond_90
    :goto_90
    throw v14

    :catch_91
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_90

    :cond_96
    new-instance v3, Ljava/io/File;

    const-string/jumbo v14, "/data/misc/wifi_hostapd/backup.conf"

    invoke-direct {v3, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_dc

    const/4 v9, 0x0

    :try_start_a9
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_b2} :catch_fc
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_131

    :try_start_b2
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v16

    new-instance v15, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1, v10, v15}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_c8} :catch_15c
    .catchall {:try_start_b2 .. :try_end_c8} :catchall_159

    if-eqz v10, :cond_cd

    :try_start_ca
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_dd

    :cond_cd
    :goto_cd
    const-string/jumbo v14, "WifiApBackupRestore"

    const-string/jumbo v15, "Cloud BACK UP complete!!!!!!!!!!"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    :cond_dc
    return-void

    :catch_dd
    move-exception v5

    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception on closing.."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cd

    :catch_fc
    move-exception v5

    :goto_fd
    :try_start_fd
    const-string/jumbo v14, "WifiApBackupRestore"

    const-string/jumbo v15, "err"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_10c
    .catchall {:try_start_fd .. :try_end_10c} :catchall_131

    if-eqz v9, :cond_111

    :try_start_10e
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_112

    :cond_111
    :goto_111
    return-void

    :catch_112
    move-exception v5

    const-string/jumbo v14, "WifiApBackupRestore"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Exception on closing.."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_111

    :catchall_131
    move-exception v14

    :goto_132
    if-eqz v9, :cond_137

    :try_start_134
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_138

    :cond_137
    :goto_137
    throw v14

    :catch_138
    move-exception v5

    const-string/jumbo v15, "WifiApBackupRestore"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Exception on closing.."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_137

    :catchall_159
    move-exception v14

    move-object v9, v10

    goto :goto_132

    :catch_15c
    move-exception v5

    move-object v9, v10

    goto :goto_fd

    :catchall_15f
    move-exception v14

    move-object v12, v13

    goto/16 :goto_8b

    :catch_163
    move-exception v8

    move-object v12, v13

    goto/16 :goto_65
.end method

.method public createJSONObj(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;Landroid/content/Context;)Ljava/lang/String;
    .registers 24

    const/4 v6, 0x0

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v16, Ljava/io/BufferedInputStream;

    new-instance v17, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v16 .. v17}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_1b} :catch_2d8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1b} :catch_2db
    .catchall {:try_start_6 .. :try_end_1b} :catchall_2d5

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move-object/from16 v0, p2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v13, v0, :cond_51

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :cond_51
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->vendorIE:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apIsolate:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->wpsStatus:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->txPowerMode:I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    if-eqz v3, :cond_9d

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_9d
    const-string/jumbo v16, "version"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v16, "SSID"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p2

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v16, v0

    if-eqz v16, :cond_19a

    const-string/jumbo v16, "hidden"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_ce
    if-nez v3, :cond_1ce

    const-string/jumbo v16, "use_security"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "passphrase"

    const-string/jumbo v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_e9
    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v16, v0

    if-eqz v16, :cond_10b

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v16, v0

    const/16 v17, 0xe

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_1f4

    const-string/jumbo v16, "band"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_10b
    :goto_10b
    const-string/jumbo v16, "channel"

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "timeout"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getTimeoutValueFromPreference(Landroid/content/Context;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "allow"

    move-object/from16 v0, p2

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v8

    if-eqz v8, :cond_212

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    :goto_151
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_202

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-virtual {v15}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v15}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_173
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_173} :catch_174
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_173} :catch_1a8
    .catchall {:try_start_1b .. :try_end_173} :catchall_1ec

    goto :goto_151

    :catch_174
    move-exception v5

    move-object v6, v7

    :goto_176
    :try_start_176
    const-string/jumbo v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "JSONException enountered.."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catchall {:try_start_176 .. :try_end_192} :catchall_2d5

    const/16 v16, 0x0

    if-eqz v6, :cond_199

    :try_start_196
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_199
    .catch Ljava/io/IOException; {:try_start_196 .. :try_end_199} :catch_297

    :cond_199
    :goto_199
    return-object v16

    :cond_19a
    :try_start_19a
    const-string/jumbo v16, "hidden"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1a6
    .catch Lorg/json/JSONException; {:try_start_19a .. :try_end_1a6} :catch_174
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_1a6} :catch_1a8
    .catchall {:try_start_19a .. :try_end_1a6} :catchall_1ec

    goto/16 :goto_ce

    :catch_1a8
    move-exception v4

    move-object v6, v7

    :goto_1aa
    :try_start_1aa
    const-string/jumbo v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "READ loadApConfigurationOldVer() : IOException"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c6
    .catchall {:try_start_1aa .. :try_end_1c6} :catchall_2d5

    const/16 v16, 0x0

    if-eqz v6, :cond_1cd

    :try_start_1ca
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cd} :catch_278

    :cond_1cd
    :goto_1cd
    return-object v16

    :cond_1ce
    :try_start_1ce
    const-string/jumbo v16, "use_security"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "passphrase"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ea
    .catch Lorg/json/JSONException; {:try_start_1ce .. :try_end_1ea} :catch_174
    .catch Ljava/io/IOException; {:try_start_1ce .. :try_end_1ea} :catch_1a8
    .catchall {:try_start_1ce .. :try_end_1ea} :catchall_1ec

    goto/16 :goto_e9

    :catchall_1ec
    move-exception v16

    move-object v6, v7

    :goto_1ee
    if-eqz v6, :cond_1f3

    :try_start_1f0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_1f3} :catch_2b6

    :cond_1f3
    :goto_1f3
    throw v16

    :cond_1f4
    :try_start_1f4
    const-string/jumbo v16, "band"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_10b

    :cond_202
    const-string/jumbo v16, "allowed_devices_name"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v16, "allowed_devices"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_212
    const-string/jumbo v16, "PMFChecked"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getPMFChecked(Landroid/content/Context;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "PSChecked"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getPSChecked(Landroid/content/Context;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "WifiSharing"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->getWifiSharing(Landroid/content/Context;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v16, "hotspot"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_250
    .catch Lorg/json/JSONException; {:try_start_1f4 .. :try_end_250} :catch_174
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_250} :catch_1a8
    .catchall {:try_start_1f4 .. :try_end_250} :catchall_1ec

    if-eqz v7, :cond_255

    :try_start_252
    invoke-virtual {v7}, Ljava/io/DataInputStream;->close()V
    :try_end_255
    .catch Ljava/io/IOException; {:try_start_252 .. :try_end_255} :catch_25a

    :cond_255
    :goto_255
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    return-object v16

    :catch_25a
    move-exception v4

    const-string/jumbo v16, "WifiApBackupRestore"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_255

    :catch_278
    move-exception v4

    const-string/jumbo v17, "WifiApBackupRestore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1cd

    :catch_297
    move-exception v4

    const-string/jumbo v17, "WifiApBackupRestore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_199

    :catch_2b6
    move-exception v4

    const-string/jumbo v17, "WifiApBackupRestore"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Exception in ReadnadPRINTWifiApConfig.."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f3

    :catchall_2d5
    move-exception v16

    goto/16 :goto_1ee

    :catch_2d8
    move-exception v5

    goto/16 :goto_176

    :catch_2db
    move-exception v4

    goto/16 :goto_1aa
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFileSize(Ljava/lang/String;)J
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    return-wide v2
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1211b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPMFChecked(Landroid/content/Context;)I
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_pmf_checked"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "WifiApBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " getPMFChecked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getPSChecked(Landroid/content/Context;)I
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_powersave_mode_checked"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "WifiApBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " getPSChecked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getTimeoutValueFromPreference(Landroid/content/Context;)I
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_e

    const-string/jumbo v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWifiSharing(Landroid/content/Context;)I
    .registers 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "WifiApBackupRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " getWifiSharing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SOURCE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSource:Ljava/lang/String;

    const-string/jumbo v2, "ACTION"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->action:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    return-void

    :cond_20
    sput-boolean v4, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mIsCanceled:Z

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_BACKUP_HOTSPOT_SETTING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string/jumbo v2, "WifiApBackupRestore"

    const-string/jumbo v3, "request backup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_41
    :goto_41
    return-void

    :cond_42
    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_RESTORE_HOTSPOT_SETTING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v2, "WifiApBackupRestore"

    const-string/jumbo v3, "request restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$WifiApBRthread;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_41
.end method

.method public readJSON(Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_4
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_9} :catch_128
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_88
    .catchall {:try_start_4 .. :try_end_9} :catchall_f0

    :try_start_9
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_13} :catch_12b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_134
    .catchall {:try_start_9 .. :try_end_13} :catchall_11c

    const/4 v2, 0x0

    :try_start_14
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_19} :catch_12f
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_138
    .catchall {:try_start_14 .. :try_end_19} :catchall_11f

    :goto_19
    :try_start_19
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5b

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_28} :catch_29
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_13d
    .catchall {:try_start_19 .. :try_end_28} :catchall_123

    goto :goto_19

    :catch_29
    move-exception v0

    move-object v3, v4

    move-object v5, v6

    move-object v7, v8

    :goto_2d
    :try_start_2d
    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readJSON exception.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_f0

    if-eqz v3, :cond_4f

    :try_start_4c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_4f
    if-eqz v7, :cond_54

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_54} :catch_d0

    :cond_54
    :goto_54
    if-eqz v5, :cond_11b

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_5b
    if-eqz v4, :cond_60

    :try_start_5d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    :cond_60
    if-eqz v8, :cond_65

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_65} :catch_69

    :cond_65
    :goto_65
    move-object v3, v4

    move-object v5, v6

    move-object v7, v8

    goto :goto_54

    :catch_69
    move-exception v1

    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception on closing.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_65

    :catch_88
    move-exception v1

    :goto_89
    :try_start_89
    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readJSON IOEx.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a6
    .catchall {:try_start_89 .. :try_end_a6} :catchall_f0

    if-eqz v3, :cond_ab

    :try_start_a8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_ab
    if-eqz v7, :cond_54

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_b0} :catch_b1

    goto :goto_54

    :catch_b1
    move-exception v1

    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception on closing.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_54

    :catch_d0
    move-exception v1

    const-string/jumbo v9, "WifiApBackupRestore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception on closing.."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_54

    :catchall_f0
    move-exception v9

    :goto_f1
    if-eqz v3, :cond_f6

    :try_start_f3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    :cond_f6
    if-eqz v7, :cond_fb

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_fb} :catch_fc

    :cond_fb
    :goto_fb
    throw v9

    :catch_fc
    move-exception v1

    const-string/jumbo v10, "WifiApBackupRestore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Exception on closing.."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_fb

    :cond_11b
    return-object v12

    :catchall_11c
    move-exception v9

    move-object v7, v8

    goto :goto_f1

    :catchall_11f
    move-exception v9

    move-object v3, v4

    move-object v7, v8

    goto :goto_f1

    :catchall_123
    move-exception v9

    move-object v3, v4

    move-object v5, v6

    move-object v7, v8

    goto :goto_f1

    :catch_128
    move-exception v0

    goto/16 :goto_2d

    :catch_12b
    move-exception v0

    move-object v7, v8

    goto/16 :goto_2d

    :catch_12f
    move-exception v0

    move-object v3, v4

    move-object v7, v8

    goto/16 :goto_2d

    :catch_134
    move-exception v1

    move-object v7, v8

    goto/16 :goto_89

    :catch_138
    move-exception v1

    move-object v3, v4

    move-object v7, v8

    goto/16 :goto_89

    :catch_13d
    move-exception v1

    move-object v3, v4

    move-object v5, v6

    move-object v7, v8

    goto/16 :goto_89
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .registers 35

    const-string/jumbo v27, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiManager;

    new-instance v24, Ljava/io/File;

    const-string/jumbo v27, "/data/misc/wifi_hostapd/restore.conf"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/FileInputStream;

    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v28

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    new-instance v30, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$2;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    move-wide/from16 v0, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v30

    invoke-static {v11, v0, v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_40} :catch_1ab
    .catchall {:try_start_24 .. :try_end_40} :catchall_1d9

    if-eqz v11, :cond_45

    :try_start_42
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_18c

    :cond_45
    :goto_45
    const/16 v27, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    const-string/jumbo v27, "/data/misc/wifi_hostapd/restore.conf"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->readJSON(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    if-eqz v22, :cond_225

    :try_start_5d
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v19, Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {v19 .. v19}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string/jumbo v27, "version"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const-string/jumbo v27, "hotspot"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    const-string/jumbo v27, "SSID"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string/jumbo v27, "hidden"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v12, v0, :cond_1fe

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    :goto_af
    const-string/jumbo v27, "channel"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v19

    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    const/16 v27, 0x4

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_d4

    const/16 v27, 0xe

    move/from16 v0, v27

    if-ge v5, v0, :cond_231

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    :cond_d4
    :goto_d4
    const-string/jumbo v27, "allow"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    const-string/jumbo v27, "use_security"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v6, v0, :cond_23b

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v27, v0

    const/16 v28, 0x4

    invoke-virtual/range {v27 .. v28}, Ljava/util/BitSet;->set(I)V

    :goto_ff
    if-eqz v6, :cond_116

    const-string/jumbo v27, "passphrase"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :cond_116
    const-string/jumbo v27, "timeout"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setTimeout(ILandroid/content/Context;)V

    const-string/jumbo v27, "allowed_devices_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_24c

    const-string/jumbo v27, "allowed_devices_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    const-string/jumbo v27, "allowed_devices"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v26

    if-eqz v18, :cond_24c

    const/4 v13, 0x0

    :goto_156
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v27

    move/from16 v0, v27

    if-ge v13, v0, :cond_24c

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_248

    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "Whitelist MAC invalid. QUIT!!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_189
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_189} :catch_208

    const/16 v23, 0x0

    return-void

    :catch_18c
    move-exception v14

    const-string/jumbo v27, "WifiApBackupRestore"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "FOS ioexception "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    :catch_1ab
    move-exception v9

    const/16 v27, 0x0

    :try_start_1ae
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_1b5
    .catchall {:try_start_1ae .. :try_end_1b5} :catchall_1d9

    if-eqz v11, :cond_1ba

    :try_start_1b7
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1ba
    .catch Ljava/io/IOException; {:try_start_1b7 .. :try_end_1ba} :catch_1bb

    :cond_1ba
    :goto_1ba
    return-void

    :catch_1bb
    move-exception v14

    const-string/jumbo v27, "WifiApBackupRestore"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "FOS ioexception "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ba

    :catchall_1d9
    move-exception v27

    if-eqz v11, :cond_1df

    :try_start_1dc
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1df} :catch_1e0

    :cond_1df
    :goto_1df
    throw v27

    :catch_1e0
    move-exception v14

    const-string/jumbo v28, "WifiApBackupRestore"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "FOS ioexception "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1df

    :cond_1fe
    const/16 v27, 0x0

    :try_start_200
    move/from16 v0, v27

    move-object/from16 v1, v19

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_206
    .catch Lorg/json/JSONException; {:try_start_200 .. :try_end_206} :catch_208

    goto/16 :goto_af

    :catch_208
    move-exception v10

    const-string/jumbo v27, "WifiApBackupRestore"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "JSON EXCEeption enountered.."

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_225
    :goto_225
    if-nez v23, :cond_2e1

    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "SCLOUD RESTORE Fail!!.."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_230
    return-void

    :cond_231
    const/16 v27, 0x1

    :try_start_233
    move/from16 v0, v27

    move-object/from16 v1, v19

    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    goto/16 :goto_d4

    :cond_23b
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_ff

    :cond_248
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_156

    :cond_24c
    const-string/jumbo v27, "PMFChecked"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2b7

    const-string/jumbo v27, "PMFChecked"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setPMFChecked(ILandroid/content/Context;)V

    :goto_26d
    const-string/jumbo v27, "PSChecked"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2cc

    const-string/jumbo v27, "PSChecked"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setPSChecked(ILandroid/content/Context;)V

    :goto_28e
    const-string/jumbo v27, "WifiSharing"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_2af

    const-string/jumbo v27, "WifiSharing"

    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setWIFISharing(ILandroid/content/Context;)V

    :cond_2af
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v23

    goto/16 :goto_225

    :cond_2b7
    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "device dont have PMF"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setPMFChecked(ILandroid/content/Context;)V

    goto :goto_26d

    :cond_2cc
    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "device does\'t have PS"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->setPSChecked(ILandroid/content/Context;)V
    :try_end_2e0
    .catch Lorg/json/JSONException; {:try_start_233 .. :try_end_2e0} :catch_208

    goto :goto_28e

    :cond_2e1
    const-string/jumbo v27, "WifiApBackupRestore"

    const-string/jumbo v28, "restore - complete!"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_230
.end method

.method public setPMFChecked(ILandroid/content/Context;)V
    .registers 6

    const-string/jumbo v0, "WifiApBackupRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setPMFChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_pmf_checked"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setPSChecked(ILandroid/content/Context;)V
    .registers 6

    const-string/jumbo v0, "WifiApBackupRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setPSChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_powersave_mode_checked"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public setTimeout(ILandroid/content/Context;)V
    .registers 6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_e

    const-string/jumbo v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApBackupRestore;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setWIFISharing(ILandroid/content/Context;)V
    .registers 6

    const-string/jumbo v0, "WifiApBackupRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " setWIFISharing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
