.class public Lcom/android/server/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static BT_TYPE:I = 0x0

.field private static SDCARD_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BTSdcard"

.field private static WHITELIST_MAC_PERM:Ljava/lang/String;

.field private static WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

.field private static instance:Lcom/android/server/ResourceManager;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "/data/security/whitelist"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    const-string/jumbo v0, "/data/security/whitelist/mac_permissions.xml"

    sput-object v0, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/server/ResourceManager;->BT_TYPE:I

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v1, "BTSdcard"

    const-string/jumbo v2, "enter ResourceManager"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private addAppToBlacklistInternal(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 18

    const/4 v7, 0x0

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_10

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "enter addAppToBlacklist"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :try_start_10
    sget v3, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p4

    if-eq v0, v3, :cond_1e

    sget v3, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p4

    if-eq v0, v3, :cond_1e

    const/4 v3, -0x1

    return v3

    :cond_1e
    new-instance v11, Ljava/io/File;

    sget-object v3, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5c

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_4f

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, " does not exist. Creating dir"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5c} :catch_6f

    :cond_5c
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_80

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, " addAppToBlacklist failed, no packageName found"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :catch_6f
    move-exception v9

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "Issue with whitelistDir directory"

    invoke-virtual {v3, v4, v6, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, -0x1

    return v3

    :cond_80
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_8f

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addAppToBlacklist"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v10

    if-nez p3, :cond_a9

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_a6

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, " Input Certificate is null"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    const/16 v3, -0xe

    return v3

    :cond_a9
    if-nez v10, :cond_10e

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_ba

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addAppToBlacklist, signature is null, package not installed yet"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    const/4 v3, 0x0

    aget-object v2, p3, v3

    const/4 v7, 0x1

    :cond_be
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_cd

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addAppToBlacklist - open whitelist/mac_permissions file"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_cd
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_d4
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v3, :cond_181

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addAppToBlacklist, Got Application Info, Seinfo is not null"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "default"

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    const-string/jumbo v3, "untrusted"

    iput-object v3, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    :cond_f7
    move-object v3, p2

    move v4, p1

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/ResourceManager;->addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v3

    if-eqz v3, :cond_153

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addBlacklistEntryToMac failed"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_10c} :catch_1aa

    const/4 v3, -0x1

    return v3

    :cond_10e
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13f

    const/4 v8, 0x1

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_13f

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "addAppToBlacklist, certMatch: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13f
    if-nez v8, :cond_be

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_150

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addAppToBlacklist, input certificate does not match the certificate extracted from package"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_150
    const/16 v3, -0xd

    return v3

    :cond_153
    :try_start_153
    invoke-direct {p0, p2, p1, v7}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_161

    move/from16 v0, p4

    invoke-static {v1, p2, p1, v0}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    const/4 v3, -0x1

    return v3

    :cond_161
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_170

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "load container setting is done"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_153 .. :try_end_170} :catch_1aa

    :cond_170
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_17f

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "leave addAppToBlacklist"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17f
    const/4 v3, 0x0

    return v3

    :cond_181
    :try_start_181
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_1a8

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "addAppToBlacklist, "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, " seInfo is null"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a8
    .catch Ljava/lang/Exception; {:try_start_181 .. :try_end_1a8} :catch_1aa

    :cond_1a8
    const/4 v3, -0x1

    return v3

    :catch_1aa
    move-exception v9

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_1ba

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "leave addAppToBlacklist: Exception: Returning Policy Failed"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ba
    const/4 v3, -0x1

    return v3
.end method

.method protected static declared-synchronized addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .registers 49

    const-class v39, Lcom/android/server/ResourceManager;

    monitor-enter v39

    :try_start_3
    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_18

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    const-string/jumbo v41, "addBlacklistEntryToMac_begin"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->space:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x4

    const/16 v40, 0x4

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_2e8

    const/16 v38, 0x1

    :goto_42
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x8

    const/16 v40, 0x8

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_2ec

    const/16 v38, 0x1

    :goto_58
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x0

    const/16 v21, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_35a

    move-result-object v8

    const/4 v7, 0x0

    :try_start_65
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_2f0

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_99

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "macPermFile exists "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_a8

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_a8
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v7

    const/16 v21, 0x1

    :goto_b0
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v24, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    const-string/jumbo v38, "signer"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    const/16 v32, 0x0

    const/16 v31, 0x0

    const/4 v5, 0x0

    const/16 v22, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x0

    const-string/jumbo v35, "service"

    move-object/from16 v0, v35

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    const-string/jumbo v38, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v34, :cond_113

    const-string/jumbo v38, "space"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_113
    if-eqz v4, :cond_11f

    const-string/jumbo v38, "allowSpace"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11f
    if-eqz v3, :cond_12b

    const-string/jumbo v38, "containerAllowSpace"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12b
    if-eqz v20, :cond_139

    const-string/jumbo v38, "issdcardsbaapp"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_139
    if-eqz v19, :cond_147

    const-string/jumbo v38, "isbluetoothsbaapp"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_147
    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_190

    const-string/jumbo v38, "sdcarduseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_190

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "addblacklistentrytomac - package = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "whitelisted to access sdcard"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_190
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_1d9

    const-string/jumbo v38, "bluetoothuseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_1d9

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "addblacklistentrytomac - package = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "whitelisted to access bluetooth"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d9
    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_1ee

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    const-string/jumbo v41, "addblacklistentrytomac - done with preparing entry"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ee
    const-string/jumbo v38, "signer"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v31

    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v29

    const-string/jumbo v38, "allow-all"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string/jumbo v38, "signature"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "value"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v34, :cond_22f

    const-string/jumbo v38, "space"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22f
    if-eqz v4, :cond_23b

    const-string/jumbo v38, "allowSpace"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23b
    const/16 v17, 0x0

    :goto_23d
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v38

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_3bb

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    check-cast v32, Lorg/w3c/dom/Element;

    const-string/jumbo v38, "signature"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_50b

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    if-eqz v15, :cond_4e3

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_285

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    const-string/jumbo v41, "Exist elem not null. Package Name already exists"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_285
    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_41b

    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_35d

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_2e4

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "addEntryToMac, Existing "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " entry for "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ", return true and continue with next step"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e4
    .catch Lorg/xml/sax/SAXException; {:try_start_65 .. :try_end_2e4} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_65 .. :try_end_2e4} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_65 .. :try_end_2e4} :catch_526
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_2e4} :catch_520
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_2e4} :catch_51a
    .catchall {:try_start_65 .. :try_end_2e4} :catchall_35a

    :cond_2e4
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_2e8
    const/16 v38, 0x0

    goto/16 :goto_42

    :cond_2ec
    const/16 v38, 0x0

    goto/16 :goto_58

    :cond_2f0
    :try_start_2f0
    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_321

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "addEntryToMac,"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " does not exist, creating file"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_321
    .catch Lorg/xml/sax/SAXException; {:try_start_2f0 .. :try_end_321} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2f0 .. :try_end_321} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2f0 .. :try_end_321} :catch_526
    .catch Ljava/io/IOException; {:try_start_2f0 .. :try_end_321} :catch_520
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_321} :catch_51a
    .catchall {:try_start_2f0 .. :try_end_321} :catchall_35a

    :cond_321
    :try_start_321
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_324
    .catch Ljava/io/IOException; {:try_start_321 .. :try_end_324} :catch_350
    .catch Lorg/xml/sax/SAXException; {:try_start_321 .. :try_end_324} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_321 .. :try_end_324} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_321 .. :try_end_324} :catch_526
    .catch Ljava/lang/Exception; {:try_start_321 .. :try_end_324} :catch_51a
    .catchall {:try_start_321 .. :try_end_324} :catchall_35a

    move-result v16

    :goto_325
    :try_start_325
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_334

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_334
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v7

    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_346
    .catch Lorg/xml/sax/SAXException; {:try_start_325 .. :try_end_346} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_325 .. :try_end_346} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_325 .. :try_end_346} :catch_526
    .catch Ljava/io/IOException; {:try_start_325 .. :try_end_346} :catch_520
    .catch Ljava/lang/Exception; {:try_start_325 .. :try_end_346} :catch_51a
    .catchall {:try_start_325 .. :try_end_346} :catchall_35a

    goto/16 :goto_b0

    :catch_348
    move-exception v14

    :try_start_349
    invoke-virtual {v14}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_34c
    .catchall {:try_start_349 .. :try_end_34c} :catchall_35a

    :goto_34c
    const/16 v38, -0x1

    monitor-exit v39

    return v38

    :catch_350
    move-exception v9

    :try_start_351
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_354
    .catch Lorg/xml/sax/SAXException; {:try_start_351 .. :try_end_354} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_351 .. :try_end_354} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_351 .. :try_end_354} :catch_526
    .catch Ljava/io/IOException; {:try_start_351 .. :try_end_354} :catch_520
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_354} :catch_51a
    .catchall {:try_start_351 .. :try_end_354} :catchall_35a

    goto :goto_325

    :catch_355
    move-exception v12

    :try_start_356
    invoke-virtual {v12}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_359
    .catchall {:try_start_356 .. :try_end_359} :catchall_35a

    goto :goto_34c

    :catchall_35a
    move-exception v38

    monitor-exit v39

    throw v38

    :cond_35d
    const/16 v23, 0x0

    :try_start_35f
    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_416

    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    xor-int/lit8 v38, v38, 0x1

    if-eqz v38, :cond_416

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "sdcarduseridBL"

    move-object/from16 v0, v40

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_3af
    const-string/jumbo v38, "sdcarduseridBL"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    :cond_3bb
    :goto_3bb
    if-nez v18, :cond_3d7

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3d7
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v36

    const/16 v33, 0x0

    if-eqz v21, :cond_50f

    new-instance v33, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v33

    invoke-direct {v0, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    :goto_3f1
    new-instance v26, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-eqz v38, :cond_412

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_412
    .catch Lorg/xml/sax/SAXException; {:try_start_35f .. :try_end_412} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_35f .. :try_end_412} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_35f .. :try_end_412} :catch_526
    .catch Ljava/io/IOException; {:try_start_35f .. :try_end_412} :catch_520
    .catch Ljava/lang/Exception; {:try_start_35f .. :try_end_412} :catch_51a
    .catchall {:try_start_35f .. :try_end_412} :catchall_35a

    :cond_412
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_416
    :try_start_416
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_3af

    :cond_41b
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_4e3

    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_47e

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_47a

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "addEntryToMac, Existing "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " entry for "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ", return true and continue with next step"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47a
    .catch Lorg/xml/sax/SAXException; {:try_start_416 .. :try_end_47a} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_416 .. :try_end_47a} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_416 .. :try_end_47a} :catch_526
    .catch Ljava/io/IOException; {:try_start_416 .. :try_end_47a} :catch_520
    .catch Ljava/lang/Exception; {:try_start_416 .. :try_end_47a} :catch_51a
    .catchall {:try_start_416 .. :try_end_47a} :catchall_35a

    :cond_47a
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_47e
    const/16 v23, 0x0

    :try_start_480
    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_4de

    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    xor-int/lit8 v38, v38, 0x1

    if-eqz v38, :cond_4de

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "bluetoothuseridBL"

    move-object/from16 v0, v40

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_4d0
    const-string/jumbo v38, "bluetoothuseridBL"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    goto/16 :goto_3bb

    :cond_4de
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_4d0

    :cond_4e3
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_507

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    const-string/jumbo v41, "addBlacklistEntryToMac, signature match found. Appending elem"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_507
    const/16 v18, 0x1

    goto/16 :goto_3bb

    :cond_50b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_23d

    :cond_50f
    new-instance v33, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_518
    .catch Lorg/xml/sax/SAXException; {:try_start_480 .. :try_end_518} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_480 .. :try_end_518} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_480 .. :try_end_518} :catch_526
    .catch Ljava/io/IOException; {:try_start_480 .. :try_end_518} :catch_520
    .catch Ljava/lang/Exception; {:try_start_480 .. :try_end_518} :catch_51a
    .catchall {:try_start_480 .. :try_end_518} :catchall_35a

    goto/16 :goto_3f1

    :catch_51a
    move-exception v10

    :try_start_51b
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_34c

    :catch_520
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_34c

    :catch_526
    move-exception v13

    invoke-virtual {v13}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_52a
    .catchall {:try_start_51b .. :try_end_52a} :catchall_35a

    goto/16 :goto_34c
.end method

.method protected static declared-synchronized addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .registers 49

    const-class v39, Lcom/android/server/ResourceManager;

    monitor-enter v39

    :try_start_3
    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_18

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    const-string/jumbo v41, "addWhitelistEntryToMac_begin"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->space:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x4

    const/16 v40, 0x4

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_2e8

    const/16 v38, 0x1

    :goto_42
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v38, v0

    and-int/lit8 v38, v38, 0x8

    const/16 v40, 0x8

    move/from16 v0, v38

    move/from16 v1, v40

    if-ne v0, v1, :cond_2ec

    const/16 v38, 0x1

    :goto_58
    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v19

    const/16 v18, 0x0

    const/16 v21, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_35a

    move-result-object v8

    const/4 v7, 0x0

    :try_start_65
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v38

    if-eqz v38, :cond_2f0

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_99

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "macPermFile exists "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_99
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_a8

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_a8
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v7

    const/16 v21, 0x1

    :goto_b0
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v24, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    const-string/jumbo v38, "signer"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    const/16 v32, 0x0

    const/16 v31, 0x0

    const/4 v5, 0x0

    const/16 v22, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x0

    const-string/jumbo v35, "service"

    move-object/from16 v0, v35

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    const-string/jumbo v38, "name"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v34, :cond_113

    const-string/jumbo v38, "space"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_113
    if-eqz v4, :cond_11f

    const-string/jumbo v38, "allowSpace"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11f
    if-eqz v3, :cond_12b

    const-string/jumbo v38, "containerAllowSpace"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12b
    if-eqz v20, :cond_139

    const-string/jumbo v38, "issdcardsbaapp"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_139
    if-eqz v19, :cond_147

    const-string/jumbo v38, "isbluetoothsbaapp"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_147
    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_190

    const-string/jumbo v38, "sdcarduserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_190

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "addwhitelistentrytomac - package = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "whitelisted to access sdcard"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_190
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_1d9

    const-string/jumbo v38, "bluetoothuserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_1d9

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "addwhitelistentrytomac - package = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, "whitelisted to access bluetooth"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d9
    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_1ee

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    const-string/jumbo v41, "addwhitelistentrytomac - done with preparing entry"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ee
    const-string/jumbo v38, "signer"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v31

    const-string/jumbo v38, "seinfo"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v29

    const-string/jumbo v38, "allow-all"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    const-string/jumbo v38, "signature"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "value"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v34, :cond_22f

    const-string/jumbo v38, "space"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22f
    if-eqz v4, :cond_23b

    const-string/jumbo v38, "allowSpace"

    move-object/from16 v0, v29

    move-object/from16 v1, v38

    invoke-interface {v0, v1, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23b
    const/16 v17, 0x0

    :goto_23d
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v38

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_3bb

    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v32

    check-cast v32, Lorg/w3c/dom/Element;

    const-string/jumbo v38, "signature"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_50b

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    if-eqz v15, :cond_4e3

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_285

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    const-string/jumbo v41, "Exist elem not null. Package Name already exists"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_285
    sget v38, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_41b

    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_35d

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_2e4

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "addEntryToMac, Existing "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " entry for "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ", return true and continue with next step"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e4
    .catch Lorg/xml/sax/SAXException; {:try_start_65 .. :try_end_2e4} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_65 .. :try_end_2e4} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_65 .. :try_end_2e4} :catch_526
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_2e4} :catch_520
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_2e4} :catch_51a
    .catchall {:try_start_65 .. :try_end_2e4} :catchall_35a

    :cond_2e4
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_2e8
    const/16 v38, 0x0

    goto/16 :goto_42

    :cond_2ec
    const/16 v38, 0x0

    goto/16 :goto_58

    :cond_2f0
    :try_start_2f0
    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_321

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "addEntryToMac,"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " does not exist, creating file"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_321
    .catch Lorg/xml/sax/SAXException; {:try_start_2f0 .. :try_end_321} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2f0 .. :try_end_321} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2f0 .. :try_end_321} :catch_526
    .catch Ljava/io/IOException; {:try_start_2f0 .. :try_end_321} :catch_520
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_321} :catch_51a
    .catchall {:try_start_2f0 .. :try_end_321} :catchall_35a

    :cond_321
    :try_start_321
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_324
    .catch Ljava/io/IOException; {:try_start_321 .. :try_end_324} :catch_350
    .catch Lorg/xml/sax/SAXException; {:try_start_321 .. :try_end_324} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_321 .. :try_end_324} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_321 .. :try_end_324} :catch_526
    .catch Ljava/lang/Exception; {:try_start_321 .. :try_end_324} :catch_51a
    .catchall {:try_start_321 .. :try_end_324} :catchall_35a

    move-result v16

    :goto_325
    :try_start_325
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-nez v38, :cond_334

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_334
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v7

    const-string/jumbo v38, "policy"

    move-object/from16 v0, v38

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_346
    .catch Lorg/xml/sax/SAXException; {:try_start_325 .. :try_end_346} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_325 .. :try_end_346} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_325 .. :try_end_346} :catch_526
    .catch Ljava/io/IOException; {:try_start_325 .. :try_end_346} :catch_520
    .catch Ljava/lang/Exception; {:try_start_325 .. :try_end_346} :catch_51a
    .catchall {:try_start_325 .. :try_end_346} :catchall_35a

    goto/16 :goto_b0

    :catch_348
    move-exception v14

    :try_start_349
    invoke-virtual {v14}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_34c
    .catchall {:try_start_349 .. :try_end_34c} :catchall_35a

    :goto_34c
    const/16 v38, -0x1

    monitor-exit v39

    return v38

    :catch_350
    move-exception v9

    :try_start_351
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_354
    .catch Lorg/xml/sax/SAXException; {:try_start_351 .. :try_end_354} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_351 .. :try_end_354} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_351 .. :try_end_354} :catch_526
    .catch Ljava/io/IOException; {:try_start_351 .. :try_end_354} :catch_520
    .catch Ljava/lang/Exception; {:try_start_351 .. :try_end_354} :catch_51a
    .catchall {:try_start_351 .. :try_end_354} :catchall_35a

    goto :goto_325

    :catch_355
    move-exception v12

    :try_start_356
    invoke-virtual {v12}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_359
    .catchall {:try_start_356 .. :try_end_359} :catchall_35a

    goto :goto_34c

    :catchall_35a
    move-exception v38

    monitor-exit v39

    throw v38

    :cond_35d
    const/16 v23, 0x0

    :try_start_35f
    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_416

    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    xor-int/lit8 v38, v38, 0x1

    if-eqz v38, :cond_416

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "sdcarduserid"

    move-object/from16 v0, v40

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_3af
    const-string/jumbo v38, "sdcarduserid"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    :cond_3bb
    :goto_3bb
    if-nez v18, :cond_3d7

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3d7
    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v36

    const/16 v33, 0x0

    if-eqz v21, :cond_50f

    new-instance v33, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v33

    invoke-direct {v0, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    :goto_3f1
    new-instance v26, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v38

    if-eqz v38, :cond_412

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_412
    .catch Lorg/xml/sax/SAXException; {:try_start_35f .. :try_end_412} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_35f .. :try_end_412} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_35f .. :try_end_412} :catch_526
    .catch Ljava/io/IOException; {:try_start_35f .. :try_end_412} :catch_520
    .catch Ljava/lang/Exception; {:try_start_35f .. :try_end_412} :catch_51a
    .catchall {:try_start_35f .. :try_end_412} :catchall_35a

    :cond_412
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_416
    :try_start_416
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_3af

    :cond_41b
    sget v38, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v38

    if-ne v0, v1, :cond_4e3

    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_47e

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_47a

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "addEntryToMac, Existing "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, " entry for "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ", return true and continue with next step"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47a
    .catch Lorg/xml/sax/SAXException; {:try_start_416 .. :try_end_47a} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_416 .. :try_end_47a} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_416 .. :try_end_47a} :catch_526
    .catch Ljava/io/IOException; {:try_start_416 .. :try_end_47a} :catch_520
    .catch Ljava/lang/Exception; {:try_start_416 .. :try_end_47a} :catch_51a
    .catchall {:try_start_416 .. :try_end_47a} :catchall_35a

    :cond_47a
    const/16 v38, 0x0

    monitor-exit v39

    return v38

    :cond_47e
    const/16 v23, 0x0

    :try_start_480
    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_4de

    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string/jumbo v40, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    xor-int/lit8 v38, v38, 0x1

    if-eqz v38, :cond_4de

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, ","

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v40, "bluetoothuserid"

    move-object/from16 v0, v40

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_4d0
    const-string/jumbo v38, "bluetoothuserid"

    move-object/from16 v0, v38

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x1

    goto/16 :goto_3bb

    :cond_4de
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_4d0

    :cond_4e3
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v38, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v38, :cond_507

    sget-object v38, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v40, "BTSdcard"

    const-string/jumbo v41, "addEntryToMac, signature match found. Appending elem"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_507
    const/16 v18, 0x1

    goto/16 :goto_3bb

    :cond_50b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_23d

    :cond_50f
    new-instance v33, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_518
    .catch Lorg/xml/sax/SAXException; {:try_start_480 .. :try_end_518} :catch_348
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_480 .. :try_end_518} :catch_355
    .catch Ljavax/xml/transform/TransformerException; {:try_start_480 .. :try_end_518} :catch_526
    .catch Ljava/io/IOException; {:try_start_480 .. :try_end_518} :catch_520
    .catch Ljava/lang/Exception; {:try_start_480 .. :try_end_518} :catch_51a
    .catchall {:try_start_480 .. :try_end_518} :catchall_35a

    goto/16 :goto_3f1

    :catch_51a
    move-exception v10

    :try_start_51b
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_34c

    :catch_520
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_34c

    :catch_526
    move-exception v13

    invoke-virtual {v13}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_52a
    .catchall {:try_start_51b .. :try_end_52a} :catchall_35a

    goto/16 :goto_34c
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 8

    const/4 v5, 0x0

    if-nez p0, :cond_13

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v4, "checkTrustedEntryExists: curElem is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-object v5

    :cond_13
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    :goto_1a
    if-eqz v0, :cond_46

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_45

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "BTSdcard"

    const-string/jumbo v4, "checkTrustedEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_45
    move-object v1, v0

    :cond_46
    return-object v1

    :cond_47
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_1a
.end method

.method private static checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkUser: existUsers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", newUser="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    move v2, v3

    :goto_35
    if-ge v2, v4, :cond_44

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v2, 0x1

    return v2

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_44
    return v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .registers 3

    const-class v1, Lcom/android/server/ResourceManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/server/ResourceManager;

    invoke-direct {v0, p0}, Lcom/android/server/ResourceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;

    :cond_e
    sget-object v0, Lcom/android/server/ResourceManager;->instance:Lcom/android/server/ResourceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    if-nez p0, :cond_13

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_12

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-object v9

    :cond_13
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v6, 0x40

    :try_start_1a
    invoke-interface {v3, p0, v6, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_28
    array-length v6, v4

    if-ge v1, v6, :cond_37

    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_34} :catch_39

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_37
    return-object v5

    :cond_38
    return-object v9

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v9
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method private static hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v7, 0x0

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_e

    const-string/jumbo v5, "BTSdcard"

    const-string/jumbo v6, "Entered hashset_to_str_array in ResourceManager"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_24

    :cond_16
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_23

    const-string/jumbo v5, "BTSdcard"

    const-string/jumbo v6, " hashset_to_str_array returning null"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    return-object v7

    :cond_24
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_2f

    :cond_41
    return-object v0
.end method

.method private loadContainerSetting(Ljava/lang/String;IZ)I
    .registers 8

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BTSdcard"

    const-string/jumbo v3, "loadContainerSetting_begin"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/4 v0, -0x1

    if-nez p1, :cond_1e

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BTSdcard"

    const-string/jumbo v3, "loadContainerSetting, packageName is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1e
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BTSdcard"

    const-string/jumbo v3, "loadContainerSetting, before calling updateAppInfo"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/ResourceManager;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_50

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_4f

    sget-object v1, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BTSdcard"

    const-string/jumbo v3, "loadContainerSetting, done with updateAppInfoForPackage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    const/4 v0, 0x0

    :cond_50
    return v0
.end method

.method private removeAppFromBlacklistInternal(ILjava/lang/String;I)I
    .registers 15

    const/4 v10, -0x1

    const/4 v0, 0x0

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_11

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "enter removeAppFromBlacklist"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v6, :cond_1a

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v6, :cond_1a

    return v10

    :cond_1a
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2c

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, " removeAppFromBlacklist failed, no packageName found"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_2c
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_44

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_43

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "removeAppFromWhitelist, signature is null, package not installed yet"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    const/4 v0, 0x1

    :cond_44
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_4b
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_6b

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " removeAppFromBlacklist tempPackage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_7a

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "removeAppFromBlacklist ok!11"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_8c

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_8c
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_8f} :catch_93

    move-result v6

    if-ne v6, v10, :cond_95

    return v10

    :catch_93
    move-exception v2

    return v10

    :cond_95
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_a4

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "leave removeAppFromBlacklist"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    const/4 v6, 0x0

    return v6
.end method

.method protected static declared-synchronized removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .registers 34

    const-class v26, Lcom/android/server/ResourceManager;

    monitor-enter v26

    :try_start_3
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_18

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "removeBlacklistEntryFromMac_begin"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/4 v12, 0x0

    const/16 v18, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_365

    move-result-object v5

    :try_start_1f
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_206

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_3f

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "macpermfile exists"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-nez v25, :cond_4e

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_4e
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v25, "policy"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/4 v14, 0x0

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string/jumbo v25, "signer"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v16, 0x0

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_b7

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "Looking for matching entry in /data/security/whitelist/mac_permissions.xml"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "the signer length is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    const/4 v11, 0x0

    :goto_b8
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_18b

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    if-eqz v16, :cond_3d1

    sget v25, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_2a4

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_276

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_120

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeBlacklistEntryFromMac, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " match found for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_120
    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_23b

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_14e

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "removeBlacklistEntryFrommac - User ID Match"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14e
    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v12, 0x1

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_17e

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18b

    :cond_17e
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_18b
    :goto_18b
    if-eqz v12, :cond_3d5

    const-string/jumbo v25, "service"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    if-nez v25, :cond_1a3

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1a3
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_1b8

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "removeBlacklistEntryFromMac, Match found..deleted elem...writing to file"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b8
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v17, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_1f5

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, " removeBlacklistEntryFromMac, entry removed from mac_permissions.xml"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f5
    :goto_1f5
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-eqz v25, :cond_204

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_204
    .catch Lorg/xml/sax/SAXException; {:try_start_1f .. :try_end_204} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1f .. :try_end_204} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1f .. :try_end_204} :catch_416
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_204} :catch_410
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_204} :catch_40a
    .catchall {:try_start_1f .. :try_end_204} :catchall_365

    :cond_204
    :goto_204
    monitor-exit v26

    return v12

    :cond_206
    :try_start_206
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_237

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeBlacklistEntryFromMac, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " does not exist, creating file"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_237
    .catch Lorg/xml/sax/SAXException; {:try_start_206 .. :try_end_237} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_206 .. :try_end_237} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_206 .. :try_end_237} :catch_416
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_237} :catch_410
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_237} :catch_40a
    .catchall {:try_start_206 .. :try_end_237} :catchall_365

    :cond_237
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_23b
    :try_start_23b
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_250

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "it is for Generic Trusted with partial space match"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_250
    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2a4

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    goto/16 :goto_18b

    :cond_276
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_2a0

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeBlacklistEntryFromMac, no match found for"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a0
    .catch Lorg/xml/sax/SAXException; {:try_start_23b .. :try_end_2a0} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_23b .. :try_end_2a0} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_23b .. :try_end_2a0} :catch_416
    .catch Ljava/io/IOException; {:try_start_23b .. :try_end_2a0} :catch_410
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_2a0} :catch_40a
    .catchall {:try_start_23b .. :try_end_2a0} :catchall_365

    :cond_2a0
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_2a4
    :try_start_2a4
    sget v25, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_3d1

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_3a3

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_2f2

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeBlacklistEntryFromMac, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " match found for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f2
    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_368

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_320

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "removeBlacklistEntryFrommac - User ID Match"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_320
    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v12, 0x1

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_350

    const-string/jumbo v25, "sdcarduseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18b

    :cond_350
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_35d
    .catch Lorg/xml/sax/SAXException; {:try_start_2a4 .. :try_end_35d} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2a4 .. :try_end_35d} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2a4 .. :try_end_35d} :catch_416
    .catch Ljava/io/IOException; {:try_start_2a4 .. :try_end_35d} :catch_410
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_35d} :catch_40a
    .catchall {:try_start_2a4 .. :try_end_35d} :catchall_365

    goto/16 :goto_18b

    :catch_35f
    move-exception v10

    :try_start_360
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_363
    .catchall {:try_start_360 .. :try_end_363} :catchall_365

    goto/16 :goto_204

    :catchall_365
    move-exception v25

    monitor-exit v26

    throw v25

    :cond_368
    :try_start_368
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_37d

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "it is for Generic Trusted with partial space match"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37d
    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3d1

    const-string/jumbo v25, "bluetoothuseridBL"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    goto/16 :goto_18b

    :cond_3a3
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_3cd

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeBlacklistEntryFromMac, no match found for"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3cd
    .catch Lorg/xml/sax/SAXException; {:try_start_368 .. :try_end_3cd} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_368 .. :try_end_3cd} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_368 .. :try_end_3cd} :catch_416
    .catch Ljava/io/IOException; {:try_start_368 .. :try_end_3cd} :catch_410
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_3cd} :catch_40a
    .catchall {:try_start_368 .. :try_end_3cd} :catchall_365

    :cond_3cd
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_3d1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b8

    :cond_3d5
    :try_start_3d5
    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " removeBlacklistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ". Please check again"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_402
    .catch Lorg/xml/sax/SAXException; {:try_start_3d5 .. :try_end_402} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3d5 .. :try_end_402} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3d5 .. :try_end_402} :catch_416
    .catch Ljava/io/IOException; {:try_start_3d5 .. :try_end_402} :catch_410
    .catch Ljava/lang/Exception; {:try_start_3d5 .. :try_end_402} :catch_40a
    .catchall {:try_start_3d5 .. :try_end_402} :catchall_365

    goto/16 :goto_1f5

    :catch_404
    move-exception v8

    :try_start_405
    invoke-virtual {v8}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_204

    :catch_40a
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_204

    :catch_410
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_204

    :catch_416
    move-exception v9

    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_41a
    .catchall {:try_start_405 .. :try_end_41a} :catchall_365

    goto/16 :goto_204
.end method

.method private static removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    array-length v5, v3

    :goto_c
    if-ge v4, v5, :cond_37

    aget-object v0, v3, v4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v1, 0x1

    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1a
    if-nez v2, :cond_1e

    move-object v2, v0

    goto :goto_17

    :cond_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_37
    if-eqz v1, :cond_5a

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_59

    sget-object v4, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "BTSdcard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeUser, return: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    return-object v2

    :cond_5a
    return-object v8
.end method

.method protected static declared-synchronized removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .registers 34

    const-class v26, Lcom/android/server/ResourceManager;

    monitor-enter v26

    :try_start_3
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_18

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "removeWhitelistEntryFromMac_begin"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/4 v12, 0x0

    const/16 v18, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_365

    move-result-object v5

    :try_start_1f
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v25

    if-eqz v25, :cond_206

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_3f

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "macpermfile exists"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-nez v25, :cond_4e

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_4e
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v25, "policy"

    move-object/from16 v0, v25

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    const/4 v14, 0x0

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    const-string/jumbo v25, "signer"

    move-object/from16 v0, v25

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v16, 0x0

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_b7

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "Looking for matching entry in /data/security/whitelist/mac_permissions.xml"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "the signer length is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    const/4 v11, 0x0

    :goto_b8
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    move/from16 v0, v25

    if-ge v11, v0, :cond_18b

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    if-eqz v16, :cond_3d1

    sget v25, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_2a4

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_276

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_120

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeWhitelistEntryFromMac, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " match found for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_120
    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_23b

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_14e

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "removeWhitelistEntryFrommac - User ID Match"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14e
    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v12, 0x1

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_17e

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18b

    :cond_17e
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_18b
    :goto_18b
    if-eqz v12, :cond_3d5

    const-string/jumbo v25, "service"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    if-nez v25, :cond_1a3

    move-object/from16 v0, v21

    invoke-interface {v14, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1a3
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_1b8

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "removeWhitelistEntryFromMac, Match found..deleted elem...writing to file"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b8
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v23

    new-instance v22, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v17, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_1f5

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, " removeWhitelistEntryFromMac, entry removed from mac_permissions.xml"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f5
    :goto_1f5
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-eqz v25, :cond_204

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_204
    .catch Lorg/xml/sax/SAXException; {:try_start_1f .. :try_end_204} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1f .. :try_end_204} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1f .. :try_end_204} :catch_416
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_204} :catch_410
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_204} :catch_40a
    .catchall {:try_start_1f .. :try_end_204} :catchall_365

    :cond_204
    :goto_204
    monitor-exit v26

    return v12

    :cond_206
    :try_start_206
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_237

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeWhitelistEntryFromMac, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " does not exist, creating file"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_237
    .catch Lorg/xml/sax/SAXException; {:try_start_206 .. :try_end_237} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_206 .. :try_end_237} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_206 .. :try_end_237} :catch_416
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_237} :catch_410
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_237} :catch_40a
    .catchall {:try_start_206 .. :try_end_237} :catchall_365

    :cond_237
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_23b
    :try_start_23b
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_250

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "it is for Generic Trusted with partial space match"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_250
    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2a4

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    goto/16 :goto_18b

    :cond_276
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_2a0

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeWhitelistEntryFromMac, no match found for"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a0
    .catch Lorg/xml/sax/SAXException; {:try_start_23b .. :try_end_2a0} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_23b .. :try_end_2a0} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_23b .. :try_end_2a0} :catch_416
    .catch Ljava/io/IOException; {:try_start_23b .. :try_end_2a0} :catch_410
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_2a0} :catch_40a
    .catchall {:try_start_23b .. :try_end_2a0} :catchall_365

    :cond_2a0
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_2a4
    :try_start_2a4
    sget v25, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v25

    if-ne v0, v1, :cond_3d1

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_3a3

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_2f2

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeWhitelistEntryFromMac, "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, " match found for "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f2
    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_368

    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_320

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "removeWhitelistEntryFrommac - User ID Match"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_320
    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    const/4 v12, 0x1

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_350

    const-string/jumbo v25, "sdcarduserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v27, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18b

    :cond_350
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_35d
    .catch Lorg/xml/sax/SAXException; {:try_start_2a4 .. :try_end_35d} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2a4 .. :try_end_35d} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2a4 .. :try_end_35d} :catch_416
    .catch Ljava/io/IOException; {:try_start_2a4 .. :try_end_35d} :catch_410
    .catch Ljava/lang/Exception; {:try_start_2a4 .. :try_end_35d} :catch_40a
    .catchall {:try_start_2a4 .. :try_end_35d} :catchall_365

    goto/16 :goto_18b

    :catch_35f
    move-exception v10

    :try_start_360
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_363
    .catchall {:try_start_360 .. :try_end_363} :catchall_365

    goto/16 :goto_204

    :catchall_365
    move-exception v25

    monitor-exit v26

    throw v25

    :cond_368
    :try_start_368
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_37d

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    const-string/jumbo v28, "it is for Generic Trusted with partial space match"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37d
    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/ResourceManager;->removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3d1

    const-string/jumbo v25, "bluetoothuserid"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1, v13}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x1

    goto/16 :goto_18b

    :cond_3a3
    sget-boolean v25, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v25, :cond_3cd

    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "removeWhitelistEntryFromMac, no match found for"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3cd
    .catch Lorg/xml/sax/SAXException; {:try_start_368 .. :try_end_3cd} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_368 .. :try_end_3cd} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_368 .. :try_end_3cd} :catch_416
    .catch Ljava/io/IOException; {:try_start_368 .. :try_end_3cd} :catch_410
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_3cd} :catch_40a
    .catchall {:try_start_368 .. :try_end_3cd} :catchall_365

    :cond_3cd
    const/16 v25, 0x0

    monitor-exit v26

    return v25

    :cond_3d1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_b8

    :cond_3d5
    :try_start_3d5
    sget-object v25, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v27, "BTSdcard"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, " removeWhitelistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ". Please check again"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_402
    .catch Lorg/xml/sax/SAXException; {:try_start_3d5 .. :try_end_402} :catch_35f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3d5 .. :try_end_402} :catch_404
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3d5 .. :try_end_402} :catch_416
    .catch Ljava/io/IOException; {:try_start_3d5 .. :try_end_402} :catch_410
    .catch Ljava/lang/Exception; {:try_start_3d5 .. :try_end_402} :catch_40a
    .catchall {:try_start_3d5 .. :try_end_402} :catchall_365

    goto/16 :goto_1f5

    :catch_404
    move-exception v8

    :try_start_405
    invoke-virtual {v8}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_204

    :catch_40a
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_204

    :catch_410
    move-exception v7

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_204

    :catch_416
    move-exception v9

    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_41a
    .catchall {:try_start_405 .. :try_end_41a} :catchall_365

    goto/16 :goto_204
.end method


# virtual methods
.method public addAppToBlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToBlacklistInternal(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToBlacklistInternal(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 18

    const/4 v7, 0x0

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_10

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "enter addAppToWhitelist"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :try_start_10
    sget v3, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    move/from16 v0, p4

    if-eq v0, v3, :cond_1e

    sget v3, Lcom/android/server/ResourceManager;->BT_TYPE:I

    move/from16 v0, p4

    if-eq v0, v3, :cond_1e

    const/4 v3, -0x1

    return v3

    :cond_1e
    new-instance v11, Ljava/io/File;

    sget-object v3, Lcom/android/server/ResourceManager;->WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5c

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_4f

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, " does not exist. Creating dir"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    invoke-virtual {v11}, Ljava/io/File;->mkdir()Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v11, v3, v4}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_5c} :catch_6f

    :cond_5c
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_80

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, " addAppToWhitelist failed, no packageName found"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :catch_6f
    move-exception v9

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "Issue with whitelistDir directory"

    invoke-virtual {v3, v4, v6, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, -0x1

    return v3

    :cond_80
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_8f

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addAppToWhitelist"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8f
    const/4 v8, 0x0

    const/4 v2, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v10

    if-nez p3, :cond_ae

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_ab

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, " Input Certificate is null"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    const/16 v3, -0xe

    return v3

    :cond_ae
    if-nez v10, :cond_113

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_bf

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addAppToWhitelist, signature is null, package not installed yet"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    const/4 v3, 0x0

    aget-object v2, p3, v3

    const/4 v7, 0x1

    :cond_c3
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_d2

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addAppToWhitelist - open whitelist/mac_permissions file"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d2
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_d9
    invoke-static/range {p2 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    if-eqz v3, :cond_186

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addAppToWhitelist, Got Application Info, Seinfo is not null"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "default"

    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fc

    const-string/jumbo v3, "untrusted"

    iput-object v3, v5, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    :cond_fc
    move-object v3, p2

    move v4, p1

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/ResourceManager;->addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v3

    if-eqz v3, :cond_158

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addWhitelistEntryToMac failed"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_111} :catch_1af

    const/4 v3, -0x1

    return v3

    :cond_113
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, p3, v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_144

    const/4 v8, 0x1

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_144

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "addAppToWhitelist, certMatch: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_144
    if-nez v8, :cond_c3

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_155

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "addAppToWhitelist, input certificate does not match the certificate extracted from package"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_155
    const/16 v3, -0xd

    return v3

    :cond_158
    :try_start_158
    invoke-direct {p0, p2, p1, v7}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_166

    move/from16 v0, p4

    invoke-static {v1, p2, p1, v0}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    const/4 v3, -0x1

    return v3

    :cond_166
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_175

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "load container setting is done"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_175} :catch_1af

    :cond_175
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_184

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "leave addAppToWhitelist"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_184
    const/4 v3, 0x0

    return v3

    :cond_186
    :try_start_186
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_1ad

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "addAppToWhitelist, "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v12, " seInfo is null"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1ad} :catch_1af

    :cond_1ad
    const/4 v3, -0x1

    return v3

    :catch_1af
    move-exception v9

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_1bf

    sget-object v3, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BTSdcard"

    const-string/jumbo v6, "leave addAppToWhitelist: Exception: Returning Policy Failed"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1bf
    const/4 v3, -0x1

    return v3
.end method

.method public clearSBABlacklist(II)I
    .registers 13

    const/4 v9, 0x0

    const/4 v7, -0x1

    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v6, :cond_b

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v6, :cond_b

    return v7

    :cond_b
    const/4 v4, -0x1

    :try_start_c
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_3a

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_2e

    move-result v4

    if-eqz v4, :cond_1b

    return v7

    :catch_2e
    move-exception v0

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "clearBlacklist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    return v9
.end method

.method public clearWhitelist(II)I
    .registers 13

    const/4 v9, 0x0

    const/4 v7, -0x1

    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v6, :cond_b

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v6, :cond_b

    return v7

    :cond_b
    const/4 v4, -0x1

    :try_start_c
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_3a

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2a} :catch_2e

    move-result v4

    if-eqz v4, :cond_1b

    return v7

    :catch_2e
    move-exception v0

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "clearWhitelist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3a
    return v9
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .registers 5

    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_a

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .registers 4

    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p1, v1, :cond_a

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p1, v1, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .registers 5

    sget v1, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v1, :cond_a

    sget v1, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v1, :cond_a

    const/4 v1, 0x0

    return-object v1

    :cond_a
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ResourceManager;->hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .registers 7

    const/4 v3, -0x1

    :try_start_1
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p2, v2, :cond_a

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p2, v2, :cond_a

    return v3

    :cond_a
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    return v2

    :catch_18
    move-exception v0

    return v3

    :cond_1a
    return v3
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .registers 8

    const/4 v3, -0x1

    :try_start_1
    sget v2, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v2, :cond_a

    sget v2, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v2, :cond_a

    return v3

    :cond_a
    invoke-static {p1, p3}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    return v2

    :catch_18
    move-exception v0

    return v3

    :cond_1a
    return v3
.end method

.method public removeAppFromBlacklist(ILjava/lang/String;I)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromBlacklistInternal(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromBlacklistInternal(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .registers 15

    const/4 v10, -0x1

    const/4 v0, 0x0

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_11

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "enter removeAppFromWhitelist"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    sget v6, Lcom/android/server/ResourceManager;->SDCARD_TYPE:I

    if-eq p3, v6, :cond_1a

    sget v6, Lcom/android/server/ResourceManager;->BT_TYPE:I

    if-eq p3, v6, :cond_1a

    return v10

    :cond_1a
    invoke-static {p2}, Lcom/android/server/ResourceManager;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2c

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, " removeAppFromWhitelist failed, no packageName found"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_2c
    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static {p2, p1}, Lcom/android/server/ResourceManager;->getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_44

    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_43

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "removeAppFromWhitelist, signature is null, package not installed yet"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    const/4 v0, 0x1

    :cond_44
    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/android/server/ResourceManager;->WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_4b
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_6b

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " removeAppFromWhitelist tempPackage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_7a

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "removeAppFromWhitelist ok!11"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    invoke-static {v3, p2, p1, p3}, Lcom/android/server/ResourceManager;->removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_8c

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "removeEntryFromMac failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v10

    :cond_8c
    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/ResourceManager;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_8f} :catch_93

    move-result v6

    if-ne v6, v10, :cond_95

    return v10

    :catch_93
    move-exception v2

    return v10

    :cond_95
    sget-boolean v6, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v6, :cond_a4

    sget-object v6, Lcom/android/server/ResourceManager;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BTSdcard"

    const-string/jumbo v8, "leave removeAppFromWhitelist"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    const/4 v6, 0x0

    return v6
.end method
