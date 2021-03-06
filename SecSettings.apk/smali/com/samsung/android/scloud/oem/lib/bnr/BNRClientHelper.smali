.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/IBNRClientHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;
    }
.end annotation


# static fields
.field private static OPERATION:Ljava/lang/String;


# instance fields
.field private final SyncServiceHandler_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;",
            ">;"
        }
    .end annotation
.end field

.field private appname:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private contentsId:Ljava/lang/String;

.field private mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

.field private mProcessedFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessedKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "101, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", VERSION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "1.7.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BNRClientHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->appname:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    iput-object p4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->contentsId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->category:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "101, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BNRClientHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->setServiceHandler()V

    return-void
.end method

.method static synthetic access$0(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->category:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    return-object v0
.end method

.method static synthetic access$10(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$11(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->fileCopy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->contentsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearPrerestoredData(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->OPERATION:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->convertToBNRItems(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$8(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->addToList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    return-object v0
.end method

.method private addToList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6

    packed-switch p3, :pswitch_data_26

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    if-eqz v0, :cond_e

    :goto_8
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_e
    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/ItemSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/ItemSavedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    goto :goto_8

    :pswitch_15
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    if-eqz v0, :cond_1f

    :goto_19
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1f
    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/FileSavedList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    goto :goto_19

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_4
        :pswitch_15
    .end packed-switch
.end method

.method private clearPrerestoredData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 10

    const/4 v6, 0x0

    const-string/jumbo v3, "BNRClientHelper"

    const-string/jumbo v4, "clearPreRestoredData"

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/ItemSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/ItemSavedList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_27

    :goto_18
    invoke-static {p1, p2}, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/FileSavedList;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_5e

    :goto_26
    return-void

    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preOperation. remove restored values in previous failed restoring.. - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "BNRClientHelper"

    invoke-static {v4, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v4, p1, v3, v6}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->restoreComplete(Landroid/content/Context;[Ljava/lang/String;Z)Z

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_18

    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "preOperation. remove restored values in previous failed restoring.. - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "BNRClientHelper"

    invoke-static {v4, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_80
    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "_scloud_origin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3, v1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->fileCopy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "_scloud_dwnload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_80

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "clearPreRestoredData() delete : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_scloud_dwnload"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "BNRClientHelper"

    invoke-static {v4, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :cond_e5
    iget-object v3, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto/16 :goto_26
.end method

.method private convertToBNRItems(Landroid/os/ParcelFileDescriptor;Ljava/util/List;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v11, 0x0

    :try_start_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_7d
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_b} :catch_82

    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v14

    long-to-int v13, v14

    new-array v2, v13, [B

    invoke-virtual {v7, v2}, Ljava/io/FileInputStream;->read([B)I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1f} :catch_8e
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_1f} :catch_87

    const/4 v8, 0x0

    :goto_20
    :try_start_20
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v8, v13, :cond_77

    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v9, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;

    const-string/jumbo v13, "key"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "value"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "timestamp"

    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v9, v13, v14, v0, v1}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "converToBNRItems : "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getLocalId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRItem;->getTimeStamp()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "BNRClientHelper"

    invoke-static {v14, v13}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_20

    :cond_77
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_7a} :catch_91
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_7a} :catch_8a

    move-object v11, v12

    move-object v6, v7

    :goto_7c
    return-void

    :catch_7d
    move-exception v4

    :goto_7e
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7c

    :catch_82
    move-exception v5

    :goto_83
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7c

    :catch_87
    move-exception v5

    move-object v6, v7

    goto :goto_83

    :catch_8a
    move-exception v5

    move-object v11, v12

    move-object v6, v7

    goto :goto_83

    :catch_8e
    move-exception v4

    move-object v6, v7

    goto :goto_7e

    :catch_91
    move-exception v4

    move-object v11, v12

    move-object v6, v7

    goto :goto_7e
.end method

.method private fileCopy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "fileCopy(), from : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " , to : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "BNRClientHelper"

    invoke-static {v11, v10}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v8, :cond_33

    :cond_28
    const-string/jumbo v10, "BNRClientHelper"

    const-string/jumbo v11, "oldFile is null or not file~!"

    invoke-static {v10, v11}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :cond_33
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_28

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v7, :cond_4e

    :cond_40
    :goto_40
    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_58

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_9c

    :goto_4c
    const/4 v10, 0x1

    return v10

    :cond_4e
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_40

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_40

    :cond_58
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v10, 0x400

    new-array v0, v10, [B

    :try_start_5e
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_63} :catch_a7
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_63} :catch_90

    :try_start_63
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_63 .. :try_end_68} :catch_a9
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_68} :catch_a0

    const/4 v9, 0x0

    :goto_69
    :try_start_69
    array-length v10, v0

    const/4 v11, 0x0

    invoke-virtual {v4, v0, v11, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_85

    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_76} :catch_77
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_76} :catch_a3

    goto :goto_69

    :catch_77
    move-exception v1

    move-object v5, v6

    move-object v3, v4

    :goto_7a
    const-string/jumbo v10, "BNRClientHelper"

    const-string/jumbo v11, "fileCopy() failed"

    invoke-static {v10, v11, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    return v10

    :cond_85
    :try_start_85
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_85 .. :try_end_8e} :catch_77
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8e} :catch_a3

    const/4 v10, 0x1

    return v10

    :catch_90
    move-exception v2

    :goto_91
    const-string/jumbo v10, "BNRClientHelper"

    const-string/jumbo v11, "fileCopy() failed"

    invoke-static {v10, v11, v2}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v10, 0x0

    return v10

    :cond_9c
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_4c

    :catch_a0
    move-exception v2

    move-object v3, v4

    goto :goto_91

    :catch_a3
    move-exception v2

    move-object v5, v6

    move-object v3, v4

    goto :goto_91

    :catch_a7
    move-exception v1

    goto :goto_7a

    :catch_a9
    move-exception v1

    move-object v3, v4

    goto :goto_7a
.end method

.method private setServiceHandler()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$1;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "getClientInfo"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$2;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "backupPrepare"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$3;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "getItemKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$4;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "getFileMeta"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$5;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "backupItem"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$6;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "getFilePath"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$7;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "backupComplete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$8;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "restorePrepare"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$9;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "restoreItem"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$10;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "restoreFile"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "restoreComplete"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$12;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "accountSignIn"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$13;-><init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V

    const-string/jumbo v2, "accountSignOut"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public handleRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->SyncServiceHandler_Map:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;

    invoke-interface {v0, p1, p3, p4}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;->handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
