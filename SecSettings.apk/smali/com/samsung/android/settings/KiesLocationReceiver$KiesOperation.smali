.class Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;
.super Landroid/os/AsyncTask;
.source "KiesLocationReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/KiesLocationReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KiesOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mAction:I

.field private mContext:Landroid/content/Context;

.field private mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

.field private mErrorCode:I

.field private mOperation:I

.field private mPath:Ljava/lang/String;

.field private mResult:I

.field private mSaveKey:Ljava/lang/String;

.field private mSecurityLevel:I

.field private mSessionTime:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/KiesLocationReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/KiesLocationReceiver;Landroid/content/Context;ILandroid/content/Intent;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->this$0:Lcom/samsung/android/settings/KiesLocationReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    iput v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    iput v1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    iput v1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    iput v1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    iput-object p2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    const-string/jumbo v0, "SESSION_KEY"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSaveKey:Ljava/lang/String;

    const-string/jumbo v0, "EXPORT_SESSION_TIME"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSessionTime:Ljava/lang/String;

    const-string/jumbo v0, "SECURITY_LEVEL"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    const-string/jumbo v0, "SAVE_PATH"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    const-string/jumbo v0, "SOURCE"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSource:Ljava/lang/String;

    const-string/jumbo v0, "ACTION"

    invoke-virtual {p4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    new-instance v0, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;-><init>(Lcom/samsung/android/settings/KiesLocationReceiver;Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;)V

    iput-object v0, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    return-void
.end method

.method private generateXml(Ljava/io/File;)I
    .registers 15

    const/4 v12, 0x0

    const/4 v4, 0x0

    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_dc
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_b} :catch_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_b} :catch_b8
    .catchall {:try_start_2 .. :try_end_b} :catchall_ee

    :try_start_b
    iget-object v9, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v9, "vzw_lbs"

    invoke-static {v6, v9}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v8

    const-string/jumbo v9, "KiesLocationReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "vzwEnabled == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "location_mode"

    const/4 v10, 0x0

    invoke-static {v6, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v9, "KiesLocationReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "currentLocationMode == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "UTF-8"

    invoke-interface {v7, v5, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string/jumbo v9, "UTF-8"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v9, "VZWLocationSvc"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "vzw_location_service"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz v8, :cond_af

    const-string/jumbo v9, "on"

    :goto_78
    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "vzw_location_service"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "location_mode"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "location_mode"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "VZWLocationSvc"

    const/4 v10, 0x0

    invoke-interface {v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_a7} :catch_fd
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_a7} :catch_100
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_a7} :catch_103
    .catchall {:try_start_b .. :try_end_a7} :catchall_fa

    move-result-wide v10

    long-to-int v9, v10

    if-eqz v5, :cond_ae

    :try_start_ab
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_b3

    :cond_ae
    :goto_ae
    return v9

    :cond_af
    :try_start_af
    const-string/jumbo v9, "off"
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_fd
    .catch Ljava/lang/IllegalStateException; {:try_start_af .. :try_end_b2} :catch_100
    .catch Ljava/lang/IllegalArgumentException; {:try_start_af .. :try_end_b2} :catch_103
    .catchall {:try_start_af .. :try_end_b2} :catchall_fa

    goto :goto_78

    :catch_b3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ae

    :catch_b8
    move-exception v2

    :goto_b9
    :try_start_b9
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_bf
    .catchall {:try_start_b9 .. :try_end_bf} :catchall_ee

    if-eqz v4, :cond_c4

    :try_start_c1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    :cond_c4
    :goto_c4
    return v12

    :catch_c5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c4

    :catch_ca
    move-exception v3

    :goto_cb
    :try_start_cb
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/4 v9, 0x1

    iput v9, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_d1
    .catchall {:try_start_cb .. :try_end_d1} :catchall_ee

    if-eqz v4, :cond_c4

    :try_start_d3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_c4

    :catch_d7
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c4

    :catch_dc
    move-exception v1

    :goto_dd
    :try_start_dd
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v9, 0x2

    iput v9, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_e3
    .catchall {:try_start_dd .. :try_end_e3} :catchall_ee

    if-eqz v4, :cond_c4

    :try_start_e5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_e8} :catch_e9

    goto :goto_c4

    :catch_e9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c4

    :catchall_ee
    move-exception v9

    :goto_ef
    if-eqz v4, :cond_f4

    :try_start_f1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f4} :catch_f5

    :cond_f4
    :goto_f4
    throw v9

    :catch_f5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f4

    :catchall_fa
    move-exception v9

    move-object v4, v5

    goto :goto_ef

    :catch_fd
    move-exception v1

    move-object v4, v5

    goto :goto_dd

    :catch_100
    move-exception v3

    move-object v4, v5

    goto :goto_cb

    :catch_103
    move-exception v2

    move-object v4, v5

    goto :goto_b9
.end method

.method private readXml(Ljava/io/File;)I
    .registers 21

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    :try_start_d
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_20c
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_14} :catch_20f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_14} :catch_212
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_14} :catch_215
    .catchall {:try_start_d .. :try_end_14} :catchall_1fd

    :try_start_14
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    const-string/jumbo v16, "UTF-8"

    move-object/from16 v0, v16

    invoke-interface {v11, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    :goto_28
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v6, v0, :cond_1c3

    packed-switch v6, :pswitch_data_218

    :cond_31
    :goto_31
    :pswitch_31
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_28

    :pswitch_36
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "tag == "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_56} :catch_57
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_56} :catch_113
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_56} :catch_15e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_56} :catch_1a9
    .catchall {:try_start_14 .. :try_end_56} :catchall_209

    goto :goto_31

    :catch_57
    move-exception v2

    move-object v8, v9

    :goto_59
    :try_start_59
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_1fd

    if-eqz v8, :cond_69

    :try_start_66
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_1f7

    :cond_69
    :goto_69
    const/16 v16, 0x0

    return v16

    :pswitch_6c
    const/4 v10, 0x0

    goto :goto_31

    :pswitch_6e
    if-eqz v10, :cond_31

    :try_start_70
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "tag value == "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const-string/jumbo v16, "on"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_d0

    const/4 v13, 0x1

    :cond_9d
    :goto_9d
    const-string/jumbo v16, "vzw_location_service"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_dd

    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Setting vzw: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v16, "vzw_lbs"

    move-object/from16 v0, v16

    invoke-static {v12, v0, v13}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    :cond_cc
    :goto_cc
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_31

    :cond_d0
    const-string/jumbo v16, "off"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9d

    const/4 v13, 0x0

    goto :goto_9d

    :cond_dd
    const-string/jumbo v16, "location_mode"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_12d

    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Setting location mode: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v16, "location_mode"

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_112} :catch_57
    .catch Ljava/lang/IllegalStateException; {:try_start_70 .. :try_end_112} :catch_113
    .catch Ljava/lang/IllegalArgumentException; {:try_start_70 .. :try_end_112} :catch_15e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_70 .. :try_end_112} :catch_1a9
    .catchall {:try_start_70 .. :try_end_112} :catchall_209

    goto :goto_cc

    :catch_113
    move-exception v4

    move-object v8, v9

    :goto_115
    :try_start_115
    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_120
    .catchall {:try_start_115 .. :try_end_120} :catchall_1fd

    if-eqz v8, :cond_69

    :try_start_122
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_127

    goto/16 :goto_69

    :catch_127
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_69

    :cond_12d
    :try_start_12d
    const-string/jumbo v16, "standalone_gps_service"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_178

    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Setting gps: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v16, "gps"

    move-object/from16 v0, v16

    invoke-static {v12, v0, v13}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_15c
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_15c} :catch_57
    .catch Ljava/lang/IllegalStateException; {:try_start_12d .. :try_end_15c} :catch_113
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12d .. :try_end_15c} :catch_15e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12d .. :try_end_15c} :catch_1a9
    .catchall {:try_start_12d .. :try_end_15c} :catchall_209

    goto/16 :goto_cc

    :catch_15e
    move-exception v3

    move-object v8, v9

    :goto_160
    :try_start_160
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_16b
    .catchall {:try_start_160 .. :try_end_16b} :catchall_1fd

    if-eqz v8, :cond_69

    :try_start_16d
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_170
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_170} :catch_172

    goto/16 :goto_69

    :catch_172
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_69

    :cond_178
    :try_start_178
    const-string/jumbo v16, "google_location_service"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_cc

    const-string/jumbo v16, "KiesLocationReceiver"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Setting google: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v16, "network"

    move-object/from16 v0, v16

    invoke-static {v12, v0, v13}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_178 .. :try_end_1a7} :catch_57
    .catch Ljava/lang/IllegalStateException; {:try_start_178 .. :try_end_1a7} :catch_113
    .catch Ljava/lang/IllegalArgumentException; {:try_start_178 .. :try_end_1a7} :catch_15e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_178 .. :try_end_1a7} :catch_1a9
    .catchall {:try_start_178 .. :try_end_1a7} :catchall_209

    goto/16 :goto_cc

    :catch_1a9
    move-exception v5

    move-object v8, v9

    :goto_1ab
    :try_start_1ab
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_1b6
    .catchall {:try_start_1ab .. :try_end_1b6} :catchall_1fd

    if-eqz v8, :cond_69

    :try_start_1b8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1bb} :catch_1bd

    goto/16 :goto_69

    :catch_1bd
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_69

    :cond_1c3
    if-nez v14, :cond_1e3

    :try_start_1c5
    const-string/jumbo v16, "KiesLocationReceiver"

    const-string/jumbo v17, "failed to restore - no items"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x3

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I
    :try_end_1d6
    .catch Ljava/io/IOException; {:try_start_1c5 .. :try_end_1d6} :catch_57
    .catch Ljava/lang/IllegalStateException; {:try_start_1c5 .. :try_end_1d6} :catch_113
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c5 .. :try_end_1d6} :catch_15e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c5 .. :try_end_1d6} :catch_1a9
    .catchall {:try_start_1c5 .. :try_end_1d6} :catchall_209

    const/16 v16, 0x0

    if-eqz v9, :cond_1dd

    :try_start_1da
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1da .. :try_end_1dd} :catch_1de

    :cond_1dd
    :goto_1dd
    return v16

    :catch_1de
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1dd

    :cond_1e3
    :try_start_1e3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1e3 .. :try_end_1e6} :catch_57
    .catch Ljava/lang/IllegalStateException; {:try_start_1e3 .. :try_end_1e6} :catch_113
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e3 .. :try_end_1e6} :catch_15e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e3 .. :try_end_1e6} :catch_1a9
    .catchall {:try_start_1e3 .. :try_end_1e6} :catchall_209

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    if-eqz v9, :cond_1f1

    :try_start_1ee
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_1ee .. :try_end_1f1} :catch_1f2

    :cond_1f1
    :goto_1f1
    return v16

    :catch_1f2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f1

    :catch_1f7
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_69

    :catchall_1fd
    move-exception v16

    :goto_1fe
    if-eqz v8, :cond_203

    :try_start_200
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_203
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_203} :catch_204

    :cond_203
    :goto_203
    throw v16

    :catch_204
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_203

    :catchall_209
    move-exception v16

    move-object v8, v9

    goto :goto_1fe

    :catch_20c
    move-exception v2

    goto/16 :goto_59

    :catch_20f
    move-exception v4

    goto/16 :goto_115

    :catch_212
    move-exception v3

    goto/16 :goto_160

    :catch_215
    move-exception v5

    goto :goto_1ab

    nop

    :pswitch_data_218
    .packed-switch 0x0
        :pswitch_31
        :pswitch_31
        :pswitch_36
        :pswitch_6c
        :pswitch_6e
    .end packed-switch
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 13

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    if-nez v6, :cond_3c

    :cond_b
    const-string/jumbo v6, "KiesLocationReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mOperation=="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :cond_3c
    iget v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    if-ne v6, v7, :cond_100

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "temp.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    if-nez v6, :cond_c7

    :try_start_66
    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSaveKey:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->-wrap2(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->generateXml(Ljava/io/File;)I

    move-result v4

    if-lez v4, :cond_aa

    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "location_service.xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    invoke-static {v6, v5, v7, v8}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->-wrap1(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_a5} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_a5} :catch_b2
    .catchall {:try_start_66 .. :try_end_a5} :catchall_c2

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    return-object v6

    :cond_aa
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_ad
    :goto_ad
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :catch_b2
    move-exception v1

    :try_start_b3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_b3 .. :try_end_b6} :catchall_c2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_ad

    :catch_ba
    move-exception v0

    :try_start_bb
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_c2

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_ad

    :catchall_c2
    move-exception v6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw v6

    :cond_c7
    iget v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mAction:I

    if-ne v6, v8, :cond_ad

    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "location_service.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_ad

    const-string/jumbo v6, "KiesLocationReceiver"

    const-string/jumbo v7, "operation cancelled, delete the encrypted file"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_ad

    :cond_100
    iget v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    if-ne v6, v8, :cond_1b0

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "temp.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_126
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "location_service.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_152

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_16a

    :cond_152
    const-string/jumbo v6, "KiesLocationReceiver"

    const-string/jumbo v7, "Encrypted file does not exist"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_165} :catch_1a3
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_165} :catch_197
    .catchall {:try_start_126 .. :try_end_165} :catchall_1ab

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    return-object v6

    :cond_16a
    :try_start_16a
    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    iget-object v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSaveKey:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->-wrap2(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mEncryption:Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;

    iget v7, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSecurityLevel:I

    invoke-static {v6, v2, v5, v7}, Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;->-wrap0(Lcom/samsung/android/settings/KiesLocationReceiver$Encryption;Ljava/io/File;Ljava/io/File;I)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_185

    const-string/jumbo v6, "KiesLocationReceiver"

    const-string/jumbo v7, "decrypt failed"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v2

    :cond_185
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->readXml(Ljava/io/File;)I

    move-result v4

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_192} :catch_1a3
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_192} :catch_197
    .catchall {:try_start_16a .. :try_end_192} :catchall_1ab

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    return-object v6

    :catch_197
    move-exception v1

    :try_start_198
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_19b
    .catchall {:try_start_198 .. :try_end_19b} :catchall_1ab

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :goto_19e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6

    :catch_1a3
    move-exception v0

    :try_start_1a4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a7
    .catchall {:try_start_1a4 .. :try_end_1a7} :catchall_1ab

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_19e

    :catchall_1ab
    move-exception v6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    throw v6

    :cond_1b0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    return-object v6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 5

    iget v1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mOperation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_LOCATIONSERVICEVZW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_15
    const-string/jumbo v1, "RESULT"

    iget v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mResult:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ERR_CODE"

    iget v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mErrorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "REQ_SIZE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string/jumbo v1, "SOURCE"

    iget-object v2, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "REBOOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_43
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_LOCATIONSERVICEVZW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_15
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/KiesLocationReceiver$KiesOperation;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
