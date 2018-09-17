.class public Lcom/android/server/BBCContainer;
.super Lcom/android/server/SEAMSContainer;
.source "BBCContainer.java"


# static fields
.field private static BBCCONTAINER_MAC_PERM:Ljava/lang/String; = null

.field private static final BBCCONTAINER_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/bbccontainer"

.field private static final BBCCONTAINER_TYPE:I = 0x3

.field private static final BBCCONTAIN_START_NUM:I = 0x1f5

.field private static final MAX_BBCCONTAIN_NUM:I = 0xc7

.field private static final TAG:Ljava/lang/String; = "BBCContainer"

.field private static mSKLog:Lcom/android/server/SKLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "/data/security/bbccontainer/mac_permissions.xml"

    sput-object v0, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/SEAMSContainer;-><init>()V

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v1, "BBCContainer"

    const-string/jumbo v2, "enter BBCContainer"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    sput-object p1, Lcom/android/server/BBCContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    iput-object v0, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method


# virtual methods
.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 24

    const/4 v11, 0x0

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_41

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "enter addAppToContainer packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", containerID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", appType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    const/4 v5, 0x5

    move/from16 v0, p4

    if-eq v0, v5, :cond_53

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "Apptype not 5"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x3

    return v5

    :cond_53
    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_66

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " addAppToContainer failed, no packageName found"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_66
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v5

    if-nez v5, :cond_7a

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " invalid container ID"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0xc

    return v5

    :cond_7a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v12

    if-nez v12, :cond_8d

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "bbcMDMID is null, Returning null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x2

    return v5

    :cond_8d
    iget-object v5, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v7, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v7, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_a6

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x2

    return v5

    :cond_a6
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_ca

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addAppToContainer, instance of BBC Container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ca
    const/4 v13, 0x0

    const/4 v4, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    if-nez p2, :cond_e5

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " Input Certificate is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0xe

    return v5

    :cond_e5
    if-nez v16, :cond_168

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_f6

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer, signature is null, package not installed yet"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f6
    const/4 v5, 0x0

    aget-object v4, p2, v5

    const/4 v11, 0x1

    :cond_fa
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_109

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " addAppToContainer 103"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_109
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_11f

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer 104"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11f
    :try_start_11f
    invoke-static {}, Lcom/android/server/BBCContainer;->getBbcEnabled()I

    move-result v18

    const/4 v14, 0x0

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_146

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " addAppToContainer packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_146
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_159

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer, Got Application Info"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_159
    if-nez v10, :cond_1ba

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer, Application Info is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_166} :catch_33a

    const/4 v5, -0x1

    return v5

    :cond_168
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1aa

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_189

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer, cert matches"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_189
    const/4 v13, 0x1

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_1aa

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addAppToContainer, certMatch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1aa
    if-nez v13, :cond_fa

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0xd

    return v5

    :cond_1ba
    :try_start_1ba
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    if-eqz v5, :cond_313

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addAppToContainer, Got Application Info, bbcseInfo is not null appInfo.bbcSpace = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v10, Landroid/content/pm/ApplicationInfo;->bbcSpace:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget v5, v10, Landroid/content/pm/ApplicationInfo;->bbcSpace:I

    if-lez v5, :cond_1f4

    iget v5, v10, Landroid/content/pm/ApplicationInfo;->bbcSpace:I

    const/16 v7, 0x2bc

    if-ge v5, v7, :cond_1f4

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer, return ERROR_ALREADY_CONTAINER_APP"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0x9

    return v5

    :cond_1f4
    const-string/jumbo v5, "default"

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_204

    const-string/jumbo v5, "untrusted"

    iput-object v5, v10, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    :cond_204
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_233

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addAppToContainer 105 appInfo.bbcseInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v10, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", senifo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v10, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    const/4 v6, 0x0

    const/4 v5, 0x5

    move/from16 v0, p4

    if-ne v0, v5, :cond_25b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ":s0:c"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_25b
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v8, p4

    invoke-static/range {v3 .. v9}, Lcom/android/server/BBCContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v5

    if-eqz v5, :cond_277

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "addAppToContainer: addEntryToMac failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_277
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/BBCContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_29c

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "loadContainerSetting,POLICY_FAILED is returned."

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/BBCContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v5, -0x1

    return v5

    :cond_29c
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_2ab

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "load container setting is done"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2ab
    if-nez v11, :cond_2ed

    const/4 v5, 0x5

    move/from16 v0, p4

    if-ne v0, v5, :cond_2ed

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_2d4

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "relabelAppDir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d4
    sget-object v5, Lcom/android/server/BBCContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2ed

    sget-object v5, Lcom/android/server/BBCContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I
    :try_end_2ed
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_2ed} :catch_33a

    :cond_2ed
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_311

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leave addAppToContainer + containerID ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_311
    const/4 v5, 0x0

    return v5

    :cond_313
    :try_start_313
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addAppToContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bbcseInfo is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_338
    .catch Ljava/lang/Exception; {:try_start_313 .. :try_end_338} :catch_33a

    const/4 v5, -0x1

    return v5

    :catch_33a
    move-exception v15

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leave addAppToContainer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5
.end method

.method public createSEContainer(II)I
    .registers 17

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_f

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "enter createBBCContainer"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v13

    :try_start_16
    new-instance v8, Ljava/io/File;

    const-string/jumbo v1, "/data/security/bbccontainer"

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_68

    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasBBCContainers()Z

    move-result v1

    if-nez v1, :cond_37

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "Issue with bbcContainerDir directory"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_37
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_5b

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not exist. Creating dir"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_68} :catch_82

    :cond_68
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v9

    if-nez v9, :cond_93

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "createBBCContainer, bbcMDMID is null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :catch_82
    move-exception v12

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "Issue with bbcContainerDir directory"

    invoke-virtual {v1, v2, v3, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, -0x1

    return v1

    :cond_93
    const/4 v1, 0x1

    new-array v10, v1, [Ljava/lang/String;

    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v10, v2

    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_ce

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "createBBCContainer, Got Application Info"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createBBCContainer, appInfo.seInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ce
    iget v1, v7, Landroid/content/pm/ApplicationInfo;->bbcSpace:I

    if-eqz v1, :cond_e6

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->bbcSpace:I

    const/16 v2, 0x2bc

    if-ge v1, v2, :cond_e6

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "createBBcContainer, The Agent is a Container App"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, -0x9

    return v1

    :cond_e6
    iget-object v1, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->createContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const/4 v1, -0x7

    if-ne v11, v1, :cond_100

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "BBC Container Count Overflow"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x7

    return v1

    :cond_100
    invoke-static {v11}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_169

    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/android/server/BBCContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    move-result v1

    if-eqz v1, :cond_12e

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "createBBCContainer: addEntryToMac failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v1, -0x1

    return v1

    :cond_12e
    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v13, v2}, Lcom/android/server/BBCContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15a

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "createBBCContainer: loadcontainersetting failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/BBCContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v9, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v11}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    const/4 v1, -0x1

    return v1

    :cond_15a
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_169

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "load container setting is done"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_169
    return v11
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 8

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "Entered Get Package Names from BBCContainer"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v1

    if-eqz v1, :cond_58

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_25

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "Given Container ID is BBC Container ID"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    if-nez v0, :cond_37

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "bbcMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_37
    iget-object v1, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4d

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_4d
    const/4 v1, 0x5

    if-ne p2, v1, :cond_58

    iget-object v1, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    const/4 v2, 0x3

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_58
    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "Given Container ID is not my Container ID, returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "enter getSEContainerIDs"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    if-nez v0, :cond_22

    sget-object v1, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "BBCContainer"

    const-string/jumbo v3, "getSEContainerIDs, bbcMDMID is null, Returning null"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_22
    iget-object v1, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getBBCContainerIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    return-object v1
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 12

    const/4 v3, 0x0

    sget-boolean v0, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v1, "BBCContainer"

    const-string/jumbo v2, "enter getSEContainerIDsfromPackageName"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-static {p1}, Lcom/android/server/BBCContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v6

    if-nez v6, :cond_26

    sget-object v0, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v1, "BBCContainer"

    const-string/jumbo v2, "bbcMDMID is null, Returning null"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_26
    const/4 v0, 0x5

    if-ne p2, v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v2, v6, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    const/4 v4, 0x3

    move-object v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDFromPackageName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v8

    const/4 v0, 0x1

    new-array v7, v0, [I

    const/4 v0, 0x0

    aput v8, v7, v0

    return-object v7

    :cond_3d
    sget-object v0, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v1, "BBCContainer"

    const-string/jumbo v2, "getSEContainerIDsFromPackageName, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/server/BBCContainer;->getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 24

    const/4 v11, 0x0

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_10

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "enter removeAppFromContainer"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    const/4 v5, 0x5

    move/from16 v0, p4

    if-eq v0, v5, :cond_22

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "Apptype not 5"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x3

    return v5

    :cond_22
    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_35

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, " removeAppFromContainer failed, no packageName found"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v12

    if-nez v12, :cond_48

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "bbcMDMID is null, Returning null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x2

    return v5

    :cond_48
    iget-object v5, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v6, v12, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_61

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "Given Container ID not created by Caller - Returning Refused - Container Allow Package Case"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x2

    return v5

    :cond_61
    const/4 v13, 0x0

    const/4 v4, 0x0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    if-nez p2, :cond_7c

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, " Input Certificate is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0xe

    return v5

    :cond_7c
    if-nez v16, :cond_151

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_8d

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "removeAppFromContainer, signature is null, package not installed yet"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    const/4 v5, 0x0

    aget-object v4, p2, v5

    const/4 v11, 0x1

    :cond_91
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_a0

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, " removeAppFromContainer 103"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a0
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_b6

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, " removeAppFromContainer 104"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    :try_start_b6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Lcom/android/server/BBCContainer;->getBbcEnabled()I

    move-result v18

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_e4

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " removeAppFromContainer tempPackage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e4
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_f7

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "removeAppFromContainer ok!11"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f7
    iget-object v5, v10, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    if-eqz v5, :cond_1cb

    const/4 v5, 0x5

    move/from16 v0, p4

    if-ne v0, v5, :cond_215

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_124

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remove ContainerID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_124
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/BBCContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1a3

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "removeEntryFromMac failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_14f} :catch_1f2

    const/4 v5, -0x1

    return v5

    :cond_151
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_193

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_172

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "removeAppFromContainer, cert matches"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_172
    const/4 v13, 0x1

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_193

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeAppFromContainer, certMatch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_193
    if-nez v13, :cond_91

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "removeAppFromContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0xd

    return v5

    :cond_1a3
    :try_start_1a3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/BBCContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_215

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "loadContainerSetting failed"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v10, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move/from16 v8, p4

    invoke-static/range {v3 .. v9}, Lcom/android/server/BBCContainer;->addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I

    const/4 v5, -0x1

    return v5

    :cond_1cb
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeAppFromContainer, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " seinfo is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f0
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1f0} :catch_1f2

    const/4 v5, -0x1

    return v5

    :catch_1f2
    move-exception v14

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "leave removeAppFromContainer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_215
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_224

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "BBCContainer"

    const-string/jumbo v7, "leave removeAppFromContainer"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_224
    const/4 v5, 0x0

    return v5
.end method

.method public removeSEContainer(III)I
    .registers 13

    const/4 v8, 0x0

    const/4 v7, -0x1

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_11

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "enter destroyContainer"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v0

    if-nez v0, :cond_2a

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "bbcMDMID is null"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_2a
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_91

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "bbcMDMID is not null"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destroyContainer:  package name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destroyContainer:  certs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destroyContainer:  containerID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_91
    invoke-static {p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v3

    if-eqz v3, :cond_11f

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_a6

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "Given containerID is BBCContainer ID"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    const/4 v3, 0x5

    invoke-virtual {p0, p3, v3}, Lcom/android/server/BBCContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b0

    array-length v3, v2

    if-nez v3, :cond_111

    :cond_b0
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_bf

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "container is empty"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bf
    iget-object v3, p0, Lcom/android/server/BBCContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/pm/PackageManagerService;->removeContainerID(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_105

    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_da

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "remove BBC Container ID Successful"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_da
    iget-object v3, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/server/BBCContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_f5

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "removeEntryFromMac failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_f5
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_104

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "removeEntryFromMac Successful"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_104
    return v8

    :cond_105
    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "remove BBC Container ID Failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    :cond_111
    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "CONTAINER not empty"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, -0xb

    return v3

    :cond_11f
    sget-boolean v3, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v3, :cond_12e

    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "Not BBC containerID"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12e
    sget-object v3, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "BBCContainer"

    const-string/jumbo v5, "removeSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .registers 28

    const/4 v13, 0x0

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_23

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "enter updateAppToContainer packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const/4 v5, 0x5

    move/from16 v0, p5

    if-eq v0, v5, :cond_35

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "Apptype not 5"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x3

    return v5

    :cond_35
    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_48

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " updateAppToContainer failed, no packageName found"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_48
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v5

    if-nez v5, :cond_5c

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " invalid container ID"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0xc

    return v5

    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/BBCContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v14

    if-nez v14, :cond_6f

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "bbcMDMID is null, Returning null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x2

    return v5

    :cond_6f
    iget-object v5, v14, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v7, v14, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v5, v7, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_88

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "Given Container ID not created by Caller - Returning Refused"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x2

    return v5

    :cond_88
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_ac

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppToContainer, instance of BBC Container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ac
    const/4 v15, 0x0

    const/4 v4, 0x0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/android/server/BBCContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    if-nez p2, :cond_c7

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " Input Certificate is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0xe

    return v5

    :cond_c7
    if-nez v18, :cond_14b

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_d8

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer, signature is null, package not installed yet"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d8
    const/4 v5, 0x0

    aget-object v4, p2, v5

    const/4 v13, 0x1

    :cond_dc
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_eb

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, " updateAppToContainer 103"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_eb
    new-instance v3, Ljava/io/File;

    sget-object v5, Lcom/android/server/BBCContainer;->BBCCONTAINER_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_101

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer 104"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_101
    :try_start_101
    invoke-static {}, Lcom/android/server/BBCContainer;->getBbcEnabled()I

    move-result v20

    const/16 v16, 0x0

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_129

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " updateAppToContainer packageName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_129
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_13c

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer, Got Application Info"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13c
    if-nez v12, :cond_19d

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer, Application Info is null"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_149} :catch_2fd

    const/4 v5, -0x1

    return v5

    :cond_14b
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, p2, v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18d

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_16c

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer, cert matches"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16c
    const/4 v15, 0x1

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_18d

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppToContainer, certMatch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18d
    if-nez v15, :cond_dc

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer, input certificate does not match the certificate extracted from package"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, -0xd

    return v5

    :cond_19d
    :try_start_19d
    iget-object v5, v12, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    if-eqz v5, :cond_2d6

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppToContainer, Got Application Info, bbcseInfo is not null appInfo.bbcSpace = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v12, Landroid/content/pm/ApplicationInfo;->bbcSpace:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "default"

    iget-object v7, v12, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cf

    const-string/jumbo v5, "untrusted"

    iput-object v5, v12, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    :cond_1cf
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_1fe

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppToContainer 105 appInfo.bbcseInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v12, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", senifo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v12, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1fe
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    const/4 v6, 0x0

    const/4 v5, 0x5

    move/from16 v0, p5

    if-ne v0, v5, :cond_226

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v12, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ":s0:c"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_226
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v5, p1

    move/from16 v9, p5

    move/from16 v11, p6

    invoke-static/range {v3 .. v11}, Lcom/android/server/BBCContainer;->updateEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I

    move-result v5

    if-eqz v5, :cond_248

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "updateAppToContainer: updateEntryToMac failed"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_248
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/BBCContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_26d

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "loadContainerSetting,POLICY_FAILED is returned."

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-static {v3, v4, v0, v5, v1}, Lcom/android/server/BBCContainer;->removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    const/4 v5, -0x1

    return v5

    :cond_26d
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_27c

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    const-string/jumbo v8, "load container setting is done"

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27c
    if-nez v13, :cond_2b0

    const/4 v5, 0x5

    move/from16 v0, p5

    if-ne v0, v5, :cond_2b0

    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_2a5

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "relabelAppDir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a5
    sget-object v5, Lcom/android/server/BBCContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/seams/SEAMSPolicy;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/samsung/android/knox/seams/SEAMSPolicy;->relabelAppDir(Ljava/lang/String;)I
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_2b0} :catch_2fd

    :cond_2b0
    sget-boolean v5, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v5, :cond_2d4

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leave updateAppToContainer + containerID ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d4
    const/4 v5, 0x0

    return v5

    :cond_2d6
    :try_start_2d6
    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAppToContainer, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bbcseInfo is null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2fb
    .catch Ljava/lang/Exception; {:try_start_2d6 .. :try_end_2fb} :catch_2fd

    const/4 v5, -0x1

    return v5

    :catch_2fd
    move-exception v17

    sget-object v5, Lcom/android/server/BBCContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v7, "BBCContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leave updateAppToContainer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5
.end method
