.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;
.super Landroid/content/BroadcastReceiver;
.source "XmlBackup.java"


# static fields
.field private static cipher:Ljavax/crypto/Cipher;

.field private static revSettingValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sBackupThread:Ljava/lang/Thread;

.field private static salt:[B

.field private static secretKey:Ljavax/crypto/spec/SecretKeySpec;

.field private static settingValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -set0(Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 1

    sput-object p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->sBackupThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->Backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->Restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private Backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 34

    new-instance v8, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_10

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_10
    new-instance v20, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/Settingsofaccessibility.esasf"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_3a

    :try_start_37
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->createNewFile()Z
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_268

    :cond_3a
    :goto_3a
    const/16 v19, 0x0

    const/4 v12, 0x0

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    sput-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    const/16 v17, 0x0

    const/4 v13, 0x0

    :try_start_47
    new-instance v23, Ljava/io/StringWriter;

    invoke-direct/range {v23 .. v23}, Ljava/io/StringWriter;-><init>()V

    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_53
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_53} :catch_2ff
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_53} :catch_302
    .catchall {:try_start_47 .. :try_end_53} :catchall_2ee

    :try_start_53
    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v14, v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->encryptStream(Ljava/io/OutputStream;ILjava/lang/String;)Ljava/io/OutputStream;

    move-result-object v17

    const/16 v24, 0x1

    sput v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    sget-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    if-eqz v24, :cond_68

    sget-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    :cond_68
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValue(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v24

    sput-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v21

    if-nez v21, :cond_81

    const-string/jumbo v24, "KiesBackup"

    const-string/jumbo v25, "serializer is null"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_81} :catch_200
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_81} :catch_2b9
    .catchall {:try_start_53 .. :try_end_81} :catchall_2fc

    :cond_81
    :try_start_81
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string/jumbo v24, "UTF-8"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v24, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/16 v25, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v24, "ro.product.model"

    const-string/jumbo v25, "Unknown"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v24, "KiesBackup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "model is "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v24, "SharingAccessibilitySettings"

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v24, "Version"

    const-string/jumbo v25, "1.0"

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v24, "Platform"

    const-string/jumbo v25, "LL"

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v24, "ModelNumber"

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_11a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_274

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_1a4

    sget-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v25, "[saveValueToFile]"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "key : ["

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v26, "]"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v26, " : "

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->settingValue:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a4
    const/16 v24, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1af
    .catch Ljava/lang/RuntimeException; {:try_start_81 .. :try_end_1af} :catch_1b1
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_1af} :catch_28e
    .catchall {:try_start_81 .. :try_end_1af} :catchall_2fc

    goto/16 :goto_11a

    :catch_1b1
    move-exception v11

    :try_start_1b2
    invoke-virtual {v11}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/16 v19, 0x1

    const/4 v12, 0x1

    const-string/jumbo v24, "KiesBackup"

    const-string/jumbo v25, "RuntimeException occured"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c1
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v23 .. v23}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "UTF-8"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v15, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v18, 0x0

    const/16 v24, 0x400

    move/from16 v0, v24

    new-array v7, v0, [B

    :goto_1e0
    const/16 v24, 0x0

    const/16 v25, 0x400

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v7, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v18

    const/16 v24, -0x1

    move/from16 v0, v18

    move/from16 v1, v24

    if-eq v0, v1, :cond_2d8

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1ff
    .catch Ljava/lang/RuntimeException; {:try_start_1b2 .. :try_end_1ff} :catch_200
    .catch Ljava/lang/Exception; {:try_start_1b2 .. :try_end_1ff} :catch_2b9
    .catchall {:try_start_1b2 .. :try_end_1ff} :catchall_2fc

    goto :goto_1e0

    :catch_200
    move-exception v11

    move-object v13, v14

    :goto_202
    :try_start_202
    invoke-virtual {v11}, Ljava/lang/RuntimeException;->printStackTrace()V

    const/16 v19, 0x1

    const/4 v12, 0x2

    const-string/jumbo v24, "KiesBackup"

    const-string/jumbo v25, "RuntimeException occured!"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catchall {:try_start_202 .. :try_end_211} :catchall_2ee

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    :goto_21d
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v24, "com.samsung.android.intent.action.RESPONSE_BACKUP_ACC_SETTING"

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v24, "RESULT"

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v24, "ERR_CODE"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v24, "REQ_SIZE"

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->length()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v24, "REBOOT"

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v24, "SOURCE"

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_268
    move-exception v9

    const-string/jumbo v24, "KiesBackup"

    const-string/jumbo v25, "IOException: exception in createNewFile() method"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3a

    :cond_274
    :try_start_274
    const-string/jumbo v24, "SharingAccessibilitySettings"

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface/range {v21 .. v21}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    const/16 v24, 0x0

    sput v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I
    :try_end_28c
    .catch Ljava/lang/RuntimeException; {:try_start_274 .. :try_end_28c} :catch_1b1
    .catch Ljava/lang/Exception; {:try_start_274 .. :try_end_28c} :catch_28e
    .catchall {:try_start_274 .. :try_end_28c} :catchall_2fc

    goto/16 :goto_1c1

    :catch_28e
    move-exception v10

    :try_start_28f
    const-string/jumbo v24, "KiesBackup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Exception >>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    const/4 v12, 0x1

    const-string/jumbo v24, "KiesBackup"

    const-string/jumbo v25, "Error occured while generate XML"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b7
    .catch Ljava/lang/RuntimeException; {:try_start_28f .. :try_end_2b7} :catch_200
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_2b7} :catch_2b9
    .catchall {:try_start_28f .. :try_end_2b7} :catchall_2fc

    goto/16 :goto_1c1

    :catch_2b9
    move-exception v10

    move-object v13, v14

    :goto_2bb
    :try_start_2bb
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v19, 0x1

    const/4 v12, 0x2

    const-string/jumbo v24, "KiesBackup"

    const-string/jumbo v25, "File error occured!"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ca
    .catchall {:try_start_2bb .. :try_end_2ca} :catchall_2ee

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_21d

    :cond_2d8
    :try_start_2d8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V
    :try_end_2df
    .catch Ljava/lang/RuntimeException; {:try_start_2d8 .. :try_end_2df} :catch_200
    .catch Ljava/lang/Exception; {:try_start_2d8 .. :try_end_2df} :catch_2b9
    .catchall {:try_start_2d8 .. :try_end_2df} :catchall_2fc

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object v13, v14

    goto/16 :goto_21d

    :catchall_2ee
    move-exception v24

    :goto_2ef
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/OutputStream;)V

    throw v24

    :catchall_2fc
    move-exception v24

    move-object v13, v14

    goto :goto_2ef

    :catch_2ff
    move-exception v11

    goto/16 :goto_202

    :catch_302
    move-exception v10

    goto :goto_2bb
.end method

.method private Restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 34

    new-instance v17, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "/Settingsofaccessibility.esasf"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_37

    const-string/jumbo v24, "KiesBackup"

    const-string/jumbo v25, "loadFile is not exists."

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/4 v10, 0x3

    return-void

    :cond_37
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    sput-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    const/16 v16, 0x0

    const/4 v13, 0x0

    :try_start_41
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_48} :catch_234
    .catchall {:try_start_41 .. :try_end_48} :catchall_232

    :try_start_48
    move/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {v14, v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->decryptStream(Ljava/io/InputStream;ILjava/lang/String;)Ljava/io/InputStream;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4f} :catch_166
    .catchall {:try_start_48 .. :try_end_4f} :catchall_218

    move-result-object v16

    :try_start_50
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_57
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_50 .. :try_end_57} :catch_144
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_57} :catch_1f6
    .catchall {:try_start_50 .. :try_end_57} :catchall_218

    move-result-object v5

    const/4 v6, 0x0

    :try_start_59
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_5e
    .catch Lorg/xml/sax/SAXException; {:try_start_59 .. :try_end_5e} :catch_117
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_59 .. :try_end_5e} :catch_144
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_1f6
    .catchall {:try_start_59 .. :try_end_5e} :catchall_218

    move-result-object v6

    :goto_5f
    :try_start_5f
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v24, "SharingAccessibilitySettings"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    if-nez v24, :cond_195

    const-string/jumbo v24, "KiesBackup"

    const-string/jumbo v25, "It is not valid sharing accessibility settings file"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    const/4 v10, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V
    :try_end_8e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5f .. :try_end_8e} :catch_144
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_8e} :catch_1f6
    .catchall {:try_start_5f .. :try_end_8e} :catchall_218

    :goto_8e
    :try_start_8e
    sget-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v25, "{}"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_227

    const/16 v21, 0x1

    const/16 v21, 0x3

    const-string/jumbo v24, "KiesBackup"

    const-string/jumbo v25, "RevSettingValues is null"

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_aa
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_b1} :catch_166
    .catchall {:try_start_8e .. :try_end_b1} :catchall_218

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    move-object v13, v14

    :goto_be
    new-instance v20, Landroid/content/Intent;

    const-string/jumbo v24, "com.samsung.android.intent.action.RESPONSE_RESTORE_ACC_SETTING"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v24, "RESULT"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v24, "ERR_CODE"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v24, "REQ_SIZE"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v24, "REBOOT"

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v24, "SOURCE"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :catch_117
    move-exception v9

    const/16 v21, 0x1

    const/4 v10, 0x1

    :try_start_11b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    const-string/jumbo v24, "KiesBackup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "not xml file. loadValue is : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_142
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11b .. :try_end_142} :catch_144
    .catch Ljava/lang/Exception; {:try_start_11b .. :try_end_142} :catch_1f6
    .catchall {:try_start_11b .. :try_end_142} :catchall_218

    goto/16 :goto_5f

    :catch_144
    move-exception v8

    const/16 v21, 0x1

    const/4 v10, 0x1

    :try_start_148
    const-string/jumbo v24, "KiesBackup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ParserConfigurationException = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_164} :catch_166
    .catchall {:try_start_148 .. :try_end_164} :catchall_218

    goto/16 :goto_8e

    :catch_166
    move-exception v7

    move-object v13, v14

    :goto_168
    const/16 v21, 0x1

    const/4 v10, 0x2

    :try_start_16b
    const-string/jumbo v24, "KiesBackup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "file exception = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_187
    .catchall {:try_start_16b .. :try_end_187} :catchall_232

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    goto/16 :goto_be

    :cond_195
    const/4 v15, 0x0

    :goto_196
    :try_start_196
    sget-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v15, v0, :cond_1d4

    sget-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v24, v24, v15

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    if-eqz v19, :cond_1ce

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_1d1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    :goto_1c3
    sget-object v24, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1ce
    add-int/lit8 v15, v15, 0x1

    goto :goto_196

    :cond_1d1
    const/16 v23, 0x0

    goto :goto_1c3

    :cond_1d4
    const-string/jumbo v24, "KiesBackup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "loadValue : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget-object v26, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    invoke-virtual/range {v26 .. v26}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f4
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_196 .. :try_end_1f4} :catch_144
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1f4} :catch_1f6
    .catchall {:try_start_196 .. :try_end_1f4} :catchall_218

    goto/16 :goto_8e

    :catch_1f6
    move-exception v7

    const/16 v21, 0x1

    const/4 v10, 0x1

    :try_start_1fa
    const-string/jumbo v24, "KiesBackup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "DB Input exception = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_216} :catch_166
    .catchall {:try_start_1fa .. :try_end_216} :catchall_218

    goto/16 :goto_8e

    :catchall_218
    move-exception v24

    move-object v13, v14

    :goto_21a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->close(Ljava/io/InputStream;)V

    throw v24

    :cond_227
    :try_start_227
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    sget-object v25, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->revSettingValues:Ljava/util/HashMap;

    invoke-static/range {v24 .. v25}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->applySettings(Landroid/content/Context;Ljava/util/HashMap;)V
    :try_end_230
    .catch Ljava/lang/Exception; {:try_start_227 .. :try_end_230} :catch_166
    .catchall {:try_start_227 .. :try_end_230} :catchall_218

    goto/16 :goto_aa

    :catchall_232
    move-exception v24

    goto :goto_21a

    :catch_234
    move-exception v7

    goto/16 :goto_168
.end method

.method private close(Ljava/io/InputStream;)V
    .registers 3

    if-eqz p1, :cond_6

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_7

    const/4 p1, 0x0

    :cond_6
    :goto_6
    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method private close(Ljava/io/OutputStream;)V
    .registers 3

    if-eqz p1, :cond_6

    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_7

    const/4 p1, 0x0

    :cond_6
    :goto_6
    return-void

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6
.end method

.method public static decryptStream(Ljava/io/InputStream;ILjava/lang/String;)Ljava/io/InputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v1, v3, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3d

    const/16 v3, 0x10

    :try_start_1e
    new-array v3, v3, [B

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->salt:[B

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->salt:[B

    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_44

    :goto_2d
    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v3, Ljavax/crypto/CipherInputStream;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v3, p0, v4}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    :cond_3d
    :try_start_3d
    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_43} :catch_44

    goto :goto_2d

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public static encryptStream(Ljava/io/OutputStream;ILjava/lang/String;)Ljava/io/OutputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    const-string/jumbo v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v1, v3, [B

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    if-ne p1, v5, :cond_44

    :try_start_24
    invoke-static {}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->generateEncryptSalt()[B

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->salt:[B

    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->salt:[B

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_35} :catch_4b

    :goto_35
    sget-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v3, v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v3, Ljavax/crypto/CipherOutputStream;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v3, p0, v4}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v3

    :cond_44
    :try_start_44
    invoke-static {p2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->secretKey:Ljavax/crypto/spec/SecretKeySpec;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_4b

    goto :goto_35

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public static generateEncryptSalt()[B
    .registers 3
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

.method public static generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
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

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    sget-object v6, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->salt:[B

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

.method public static generateSHA256SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
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

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b1

    const-string/jumbo v0, "SAVE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "SOURCE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "SESSION_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "SECURITY_LEVEL"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v0, "KiesBackup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.intent.action.REQUEST_BACKUP_ACC_SETTING"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    const-string/jumbo v0, "ACTION"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7b

    sget-object v9, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->sBackupThread:Ljava/lang/Thread;

    const-string/jumbo v0, "KiesBackup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive cancel request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_7a

    const-string/jumbo v0, "KiesBackup"

    const-string/jumbo v1, "try to interrupt"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/lang/Thread;->interrupt()V

    :cond_7a
    return-void

    :cond_7b
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$1;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v10, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->sBackupThread:Ljava/lang/Thread;

    sget-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;->sBackupThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_8f
    const-string/jumbo v0, "com.samsung.android.intent.action.REQUEST_RESTORE_ACC_SETTING"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup$2;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/kies/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    return-void

    :cond_a8
    const-string/jumbo v0, "KiesBackup"

    const-string/jumbo v1, "Action value is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    return-void
.end method
