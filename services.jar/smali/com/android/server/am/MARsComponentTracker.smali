.class public Lcom/android/server/am/MARsComponentTracker;
.super Ljava/lang/Object;
.source "MARsComponentTracker.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MARsComponentTracker"


# instance fields
.field mContext:Landroid/content/Context;

.field mDBManager:Lcom/android/server/am/MARsDBManager;

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsDBManager;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/MARsComponentTracker;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p3, p0, Lcom/android/server/am/MARsComponentTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/MARsComponentTracker;->mDBManager:Lcom/android/server/am/MARsDBManager;

    return-void
.end method

.method private loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const-string/jumbo v0, "favorite"

    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v3, :cond_17

    :cond_14
    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    :cond_17
    return-void

    :cond_18
    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "packageName"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7
.end method

.method private updateCSCPackagesList()V
    .registers 15

    const-string/jumbo v0, "/system/csc/default_application_order.xml"

    const/4 v1, 0x0

    const/4 v8, 0x0

    :try_start_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_34

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-lez v9, :cond_34

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_1f} :catch_62
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_4a
    .catchall {:try_start_5 .. :try_end_1f} :catchall_7a

    :try_start_1f
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    if-eqz v8, :cond_3a

    invoke-interface {v8, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-direct {p0, v8}, Lcom/android/server/am/MARsComponentTracker;->loadPkgnameForCSC(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_33} :catch_89
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_33} :catch_8c
    .catchall {:try_start_1f .. :try_end_33} :catchall_86

    move-object v1, v2

    :cond_34
    :goto_34
    if-eqz v1, :cond_39

    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_45

    :cond_39
    :goto_39
    return-void

    :cond_3a
    :try_start_3a
    const-string/jumbo v9, "MARsComponentTracker"

    const-string/jumbo v10, "updateCSCPackagesList() parser is null!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3a .. :try_end_43} :catch_89
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_43} :catch_8c
    .catchall {:try_start_3a .. :try_end_43} :catchall_86

    move-object v1, v2

    goto :goto_34

    :catch_45
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    :catch_4a
    move-exception v4

    :goto_4b
    :try_start_4b
    const-string/jumbo v9, "MARsComponentTracker"

    const-string/jumbo v10, "IOException in updateCSCPackagesList"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_7a

    if-eqz v1, :cond_39

    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_39

    :catch_5d
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    :catch_62
    move-exception v6

    :goto_63
    :try_start_63
    const-string/jumbo v9, "MARsComponentTracker"

    const-string/jumbo v10, "XmlPullParserException in updateCSCPackagesList"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_7a

    if-eqz v1, :cond_39

    :try_start_71
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_39

    :catch_75
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39

    :catchall_7a
    move-exception v9

    :goto_7b
    if-eqz v1, :cond_80

    :try_start_7d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    :cond_80
    :goto_80
    throw v9

    :catch_81
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_80

    :catchall_86
    move-exception v9

    move-object v1, v2

    goto :goto_7b

    :catch_89
    move-exception v6

    move-object v1, v2

    goto :goto_63

    :catch_8c
    move-exception v4

    move-object v1, v2

    goto :goto_4b
.end method


# virtual methods
.method trackComponent(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 13

    const-string/jumbo v0, "activity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/MARsComponentTracker;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, p4, p6}, Lcom/android/server/am/MARsPolicyManager;->isRunningPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    return-void

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz p1, :cond_2a

    if-nez p5, :cond_29

    iget-object v0, p0, Lcom/android/server/am/MARsComponentTracker;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object v1, p4

    move-object v2, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    :cond_29
    :goto_29
    return-void

    :cond_2a
    if-nez p5, :cond_5d

    const-string/jumbo v0, "MARsComponentTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markAppStartUpResult: auto run off case : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_5d
    iget-object v0, p0, Lcom/android/server/am/MARsComponentTracker;->mDBManager:Lcom/android/server/am/MARsDBManager;

    move-object v1, p4

    move-object v2, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V

    const-string/jumbo v0, "MARsComponentTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "markAppStartUpResult: auto run on case : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method
