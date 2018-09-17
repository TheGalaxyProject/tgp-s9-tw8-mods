.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineListHandler"
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_ALIAS_IDX:I = 0x0

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_ID_IDX:I = 0x1

.field private static final ENGINE_LIST_XML:Ljava/lang/String; = "sdp_engine_list.xml"

.field private static final TAG_ENGINE:Ljava/lang/String; = "engine"

.field private static final TAG_ENGINE_LIST:Ljava/lang/String; = "engine_list"


# instance fields
.field final synthetic this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)Landroid/util/SparseArray;
    .registers 2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListLocked()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->updateEngineListLocked()I

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    return-void
.end method

.method private getEngineListLocked()Landroid/util/SparseArray;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x3

    move v15, v14

    :goto_9
    add-int/lit8 v14, v15, -0x1

    if-lez v15, :cond_f9

    invoke-virtual {v7}, Landroid/util/SparseArray;->clear()V

    const/4 v12, 0x1

    :try_start_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile()Landroid/util/XmlMoreAtomicFile;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    const-string/jumbo v17, "UTF-8"

    move-object/from16 v0, v17

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    :goto_32
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_e6

    packed-switch v9, :pswitch_data_fc

    :cond_3b
    :goto_3b
    :pswitch_3b
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_32

    :pswitch_40
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "engine"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3b

    const-string/jumbo v17, "alias"

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_93

    const-string/jumbo v17, "id"

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_93

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_9e

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    xor-int/lit8 v12, v17, 0x1

    :cond_93
    :goto_93
    if-eqz v12, :cond_a0

    invoke-virtual {v7, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get0()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    goto :goto_3b

    :cond_9e
    const/4 v12, 0x0

    goto :goto_93

    :cond_a0
    new-instance v17, Ljava/lang/Exception;

    const-string/jumbo v18, "Suspicious of damaged file..."

    invoke-direct/range {v17 .. v18}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_a9} :catch_a9
    .catchall {:try_start_11 .. :try_end_a9} :catchall_f0

    :catch_a9
    move-exception v6

    :try_start_aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    move-object/from16 v17, v0

    const-string/jumbo v18, "SdpManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "EngineListHandler :: Failed to get engine list... "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v6, v2}, Lcom/android/server/SdpManagerService;->-wrap30(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    if-eqz v8, :cond_de

    invoke-virtual {v8}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V
    :try_end_dd
    .catchall {:try_start_aa .. :try_end_dd} :catchall_f0

    const/4 v8, 0x0

    :cond_de
    if-eqz v11, :cond_e3

    :try_start_e0
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_ee

    :cond_e3
    :goto_e3
    move v15, v14

    goto/16 :goto_9

    :cond_e6
    if-eqz v11, :cond_eb

    :try_start_e8
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ec

    :cond_eb
    :goto_eb
    return-object v7

    :catch_ec
    move-exception v5

    goto :goto_eb

    :catch_ee
    move-exception v5

    goto :goto_e3

    :catchall_f0
    move-exception v17

    if-eqz v11, :cond_f6

    :try_start_f3
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_f6} :catch_f7

    :cond_f6
    :goto_f6
    throw v17

    :catch_f7
    move-exception v5

    goto :goto_f6

    :cond_f9
    const/16 v17, 0x0

    return-object v17

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3b
        :pswitch_40
        :pswitch_3b
    .end packed-switch
.end method

.method private getEngineListXmlFile()Landroid/util/XmlMoreAtomicFile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Landroid/util/XmlMoreAtomicFile;

    move-result-object v0

    return-object v0
.end method

.method private getEngineListXmlFile(I)Landroid/util/XmlMoreAtomicFile;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 p1, 0x0

    :cond_4
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/users/sdp_engine_list.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_23

    if-nez p1, :cond_23

    const-string/jumbo v1, "SdpManagerService"

    const-string/jumbo v2, "Failed to get engine list due to non-existence..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_23
    new-instance v1, Landroid/util/XmlMoreAtomicFile;

    invoke-direct {v1, v0}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method private updateEngineListLocked()I
    .registers 16

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x1

    :try_start_4
    invoke-direct {p0, v12}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->getEngineListXmlFile(I)Landroid/util/XmlMoreAtomicFile;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_1b

    move-result-object v4

    iget-object v12, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v12}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v12

    if-nez v12, :cond_22

    invoke-virtual {v4}, Landroid/util/XmlMoreAtomicFile;->delete()V

    const/4 v12, 0x0

    return v12

    :catch_1b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/16 v12, -0x63

    return v12

    :cond_22
    const/4 v9, 0x1

    :try_start_23
    invoke-virtual {v4}, Landroid/util/XmlMoreAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2c} :catch_b7
    .catchall {:try_start_23 .. :try_end_2c} :catchall_d6

    :try_start_2c
    new-instance v11, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v11}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v12, "UTF-8"

    invoke-interface {v11, v1, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v12, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v12, "engine_list"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    iget-object v12, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v12}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v10

    :goto_5b
    if-ge v6, v10, :cond_9e

    iget-object v12, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v12}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    iget-object v12, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v12}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    const-string/jumbo v12, "engine"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "alias"

    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v11, v14, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "id"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v11, v14, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v12, "engine"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5b

    :cond_9e
    const-string/jumbo v12, "engine_list"

    const/4 v13, 0x0

    invoke-interface {v11, v13, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v4, v5}, Landroid/util/XmlMoreAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_ab} :catch_e5
    .catchall {:try_start_2c .. :try_end_ab} :catchall_e2

    if-eqz v1, :cond_b0

    :try_start_ad
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b5

    :cond_b0
    :goto_b0
    move-object v0, v1

    :cond_b1
    :goto_b1
    if-eqz v9, :cond_df

    const/4 v12, 0x0

    :goto_b4
    return v12

    :catch_b5
    move-exception v2

    goto :goto_b0

    :catch_b7
    move-exception v3

    :goto_b8
    :try_start_b8
    iget-object v12, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineListHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    iget-object v12, v12, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->this$0:Lcom/android/server/SdpManagerService;

    const-string/jumbo v13, "SdpManagerService"

    const-string/jumbo v14, "Failed to update engine list..."

    invoke-static {v12, v13, v3, v14}, Lcom/android/server/SdpManagerService;->-wrap30(Lcom/android/server/SdpManagerService;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v5, :cond_cd

    invoke-virtual {v4, v5}, Landroid/util/XmlMoreAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_cd
    .catchall {:try_start_b8 .. :try_end_cd} :catchall_d6

    :cond_cd
    const/4 v9, 0x0

    if-eqz v0, :cond_b1

    :try_start_d0
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_b1

    :catch_d4
    move-exception v2

    goto :goto_b1

    :catchall_d6
    move-exception v12

    :goto_d7
    if-eqz v0, :cond_dc

    :try_start_d9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd

    :cond_dc
    :goto_dc
    throw v12

    :catch_dd
    move-exception v2

    goto :goto_dc

    :cond_df
    const/16 v12, -0x63

    goto :goto_b4

    :catchall_e2
    move-exception v12

    move-object v0, v1

    goto :goto_d7

    :catch_e5
    move-exception v3

    move-object v0, v1

    goto :goto_b8
.end method
