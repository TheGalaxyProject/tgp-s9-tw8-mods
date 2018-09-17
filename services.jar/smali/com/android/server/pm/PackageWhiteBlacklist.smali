.class public Lcom/android/server/pm/PackageWhiteBlacklist;
.super Ljava/lang/Object;
.source "PackageWhiteBlacklist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageWhiteBlacklist$Activity;,
        Lcom/android/server/pm/PackageWhiteBlacklist$Package;
    }
.end annotation


# static fields
.field private static final ATTR_ANDROID_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_ANDROID_TYPE:Ljava/lang/String; = "type"

.field private static final ATTR_ANDROID_VALUE:Ljava/lang/String; = "value"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION_END:Ljava/lang/String; = "version-end"

.field private static final ATTR_VERSION_START:Ljava/lang/String; = "version-start"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "PackageWBlist"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_APP:Ljava/lang/String; = "application"

.field private static final TAG_METADATA:Ljava/lang/String; = "meta-data"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"


# instance fields
.field final mBlackPackages:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mBlackPackages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageWhiteBlacklist$Package;",
            ">;"
        }
    .end annotation
.end field

.field final mWhitePackages:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWhitePackages"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageWhiteBlacklist$Package;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mWhitePackages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mBlackPackages:Ljava/util/ArrayList;

    return-void
.end method

.method private parsePackageWhiteBlacklistDir(Ljava/lang/String;)Z
    .registers 18

    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_15

    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_17

    :cond_15
    const/4 v11, 0x0

    return v11

    :cond_17
    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v11

    if-nez v11, :cond_40

    const-string/jumbo v11, "PackageWBlist"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Directory "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " cannot be read"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    return v11

    :cond_40
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_48

    const/4 v11, 0x0

    return v11

    :cond_48
    const/4 v11, 0x0

    array-length v12, v4

    :goto_4a
    if-ge v11, v12, :cond_1bf

    aget-object v3, v4, v11

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, ".xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8a

    const-string/jumbo v13, "PackageWBlist"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Non-xml file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " directory, ignoring"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    :goto_87
    add-int/lit8 v11, v11, 0x1

    goto :goto_4a

    :cond_8a
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v13

    if-nez v13, :cond_b2

    const-string/jumbo v13, "PackageWBlist"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Preferred apps file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " cannot be read"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_87

    :cond_b2
    const-string/jumbo v13, "PackageWBlist"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "parsePackageWhiteBlacklist(): parse : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :try_start_cd
    new-instance v7, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_cd .. :try_end_d7} :catch_191
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d7} :catch_16c
    .catchall {:try_start_cd .. :try_end_d7} :catchall_1b6

    :try_start_d7
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v13}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v7, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_e4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v13, 0x2

    if-eq v9, v13, :cond_ee

    const/4 v13, 0x1

    if-ne v9, v13, :cond_e4

    :cond_ee
    const/4 v13, 0x2

    if-eq v9, v13, :cond_11b

    const-string/jumbo v13, "PackageWBlist"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "whitelist file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " does not have start tag"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_112
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d7 .. :try_end_112} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_112} :catch_1c7
    .catchall {:try_start_d7 .. :try_end_112} :catchall_1c1

    const/4 v11, 0x0

    if-eqz v7, :cond_118

    :try_start_115
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_118} :catch_119

    :cond_118
    :goto_118
    return v11

    :catch_119
    move-exception v1

    goto :goto_118

    :cond_11b
    :try_start_11b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v13, "packages-whitelist"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_15d

    const-string/jumbo v13, "packages-blacklist"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_15d

    const-string/jumbo v13, "PackageWBlist"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "wblist file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " does not start with \'packages-whitelist\' or \'packages-blacklist\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11b .. :try_end_154} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_154} :catch_1c7
    .catchall {:try_start_11b .. :try_end_154} :catchall_1c1

    const/4 v11, 0x0

    if-eqz v7, :cond_15a

    :try_start_157
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_15a} :catch_15b

    :cond_15a
    :goto_15a
    return v11

    :catch_15b
    move-exception v1

    goto :goto_15a

    :cond_15d
    :try_start_15d
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Lcom/android/server/pm/PackageWhiteBlacklist;->readWhiteBlacklist(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_162
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15d .. :try_end_162} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_162} :catch_1c7
    .catchall {:try_start_15d .. :try_end_162} :catchall_1c1

    if-eqz v7, :cond_87

    :try_start_164
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_164 .. :try_end_167} :catch_169

    goto/16 :goto_87

    :catch_169
    move-exception v1

    goto/16 :goto_87

    :catch_16c
    move-exception v1

    :goto_16d
    :try_start_16d
    const-string/jumbo v13, "PackageWBlist"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error reading apps file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_187
    .catchall {:try_start_16d .. :try_end_187} :catchall_1b6

    if-eqz v6, :cond_87

    :try_start_189
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_18c
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_18c} :catch_18e

    goto/16 :goto_87

    :catch_18e
    move-exception v1

    goto/16 :goto_87

    :catch_191
    move-exception v2

    :goto_192
    :try_start_192
    const-string/jumbo v13, "PackageWBlist"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error reading apps file "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ac
    .catchall {:try_start_192 .. :try_end_1ac} :catchall_1b6

    if-eqz v6, :cond_87

    :try_start_1ae
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_1b1} :catch_1b3

    goto/16 :goto_87

    :catch_1b3
    move-exception v1

    goto/16 :goto_87

    :catchall_1b6
    move-exception v11

    :goto_1b7
    if-eqz v6, :cond_1bc

    :try_start_1b9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1bc
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1bc} :catch_1bd

    :cond_1bc
    :goto_1bc
    throw v11

    :catch_1bd
    move-exception v1

    goto :goto_1bc

    :cond_1bf
    const/4 v11, 0x1

    return v11

    :catchall_1c1
    move-exception v11

    move-object v6, v7

    goto :goto_1b7

    :catch_1c4
    move-exception v2

    move-object v6, v7

    goto :goto_192

    :catch_1c7
    move-exception v1

    move-object v6, v7

    goto :goto_16d
.end method

.method private parseWhiteBlacklistActivity(Lcom/android/server/pm/PackageWhiteBlacklist$Package;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/PackageWhiteBlacklist$Activity;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x3

    const/4 v7, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "PackageWBlist"

    const-string/jumbo v6, "parseWhiteBlacklistActivity()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_15

    return-object v7

    :cond_15
    new-instance v1, Lcom/android/server/pm/PackageWhiteBlacklist$Activity;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageWhiteBlacklist$Activity;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_1e
    :goto_1e
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_79

    if-ne v4, v8, :cond_2d

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_79

    :cond_2d
    if-eq v4, v8, :cond_1e

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1e

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    iget-object v5, v1, Lcom/android/server/pm/PackageWhiteBlacklist$Activity;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, p2, v5}, Lcom/android/server/pm/PackageWhiteBlacklist;->parseWhiteBlacklistMetaData(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/PackageWhiteBlacklist$Activity;->metaData:Landroid/os/Bundle;

    goto :goto_1e

    :cond_48
    const-string/jumbo v5, "PackageWBlist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <packages-white/blacklist>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1e

    :cond_79
    iget-object v6, p1, Lcom/android/server/pm/PackageWhiteBlacklist$Package;->activities:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_7c
    iget-object v5, p1, Lcom/android/server/pm/PackageWhiteBlacklist$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_81
    .catchall {:try_start_7c .. :try_end_81} :catchall_83

    monitor-exit v6

    return-object v1

    :catchall_83
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private parseWhiteBlacklistMetaData(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const-string/jumbo v4, "PackageWBlist"

    const-string/jumbo v5, "parseWhiteBlacklistMetaData()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_11

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_11
    const-string/jumbo v4, "name"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    const-string/jumbo v4, "PackageWBlist"

    const-string/jumbo v5, "<meta-data> requres an name attribute"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_24
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "type"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    :cond_35
    const-string/jumbo v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PackageWBlist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Meta data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_ef

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_eb

    :try_start_74
    const-string/jumbo v4, "Boolean"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_84
    .catch Ljava/lang/NumberFormatException; {:try_start_74 .. :try_end_84} :catch_99

    :goto_84
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object p2

    :cond_88
    :try_start_88
    const-string/jumbo v4, "Integer"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_98
    .catch Ljava/lang/NumberFormatException; {:try_start_88 .. :try_end_98} :catch_99

    goto :goto_84

    :catch_99
    move-exception v1

    const-string/jumbo v4, "PackageWBlist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Metadata Type("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") nfe: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    :cond_d6
    :try_start_d6
    const-string/jumbo v4, "Float"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e7

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p2, v0, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_84

    :cond_e7
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ea
    .catch Ljava/lang/NumberFormatException; {:try_start_d6 .. :try_end_ea} :catch_99

    goto :goto_84

    :cond_eb
    invoke-virtual {p2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_84

    :cond_ef
    const-string/jumbo v4, "PackageWBlist"

    const-string/jumbo v5, "<meta-data> requires an value attribute"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    goto :goto_84
.end method

.method private parseWhiteBlacklistPackage(Lcom/android/server/pm/PackageWhiteBlacklist$Package;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/PackageWhiteBlacklist$Package;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x3

    const-string/jumbo v5, "PackageWBlist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseWhiteBlacklistPackage(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/pm/PackageWhiteBlacklist$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " d: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    const/4 v2, 0x0

    :cond_40
    :goto_40
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_105

    if-ne v4, v8, :cond_4f

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_105

    :cond_4f
    if-eq v4, v8, :cond_54

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8d

    :cond_54
    const-string/jumbo v5, "PackageWBlist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " d "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_40

    :cond_8d
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    iget-object v5, p1, Lcom/android/server/pm/PackageWhiteBlacklist$Package;->mAppMetaData:Landroid/os/Bundle;

    invoke-direct {p0, p2, v5}, Lcom/android/server/pm/PackageWhiteBlacklist;->parseWhiteBlacklistMetaData(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p1, Lcom/android/server/pm/PackageWhiteBlacklist$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v5, :cond_40

    :cond_a4
    move-object v2, p1

    goto :goto_40

    :cond_a6
    const-string/jumbo v5, "activity"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageWhiteBlacklist;->parseWhiteBlacklistActivity(Lcom/android/server/pm/PackageWhiteBlacklist$Package;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/PackageWhiteBlacklist$Activity;

    move-result-object v0

    if-nez v0, :cond_a4

    const-string/jumbo v5, "PackageWBlist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parseWhiteBlacklistActivity return null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/pm/PackageWhiteBlacklist$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_40

    :cond_d3
    const-string/jumbo v5, "PackageWBlist"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <packages-white/blacklist>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_40

    :cond_105
    return-object v2
.end method

.method private readWhiteBlacklist(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x3

    const/4 v11, 0x0

    const-string/jumbo v8, "PackageWBlist"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readWhiteBlacklist(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    :cond_20
    :goto_20
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_e5

    if-ne v5, v12, :cond_2f

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_e5

    :cond_2f
    if-eq v5, v12, :cond_20

    const/4 v8, 0x4

    if-eq v5, v8, :cond_20

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "package"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c2

    const-string/jumbo v8, "name"

    invoke-interface {p2, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "version-start"

    invoke-interface {p2, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "version-end"

    invoke-interface {p2, v11, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_20

    new-instance v3, Lcom/android/server/pm/PackageWhiteBlacklist$Package;

    invoke-direct {v3, v0}, Lcom/android/server/pm/PackageWhiteBlacklist$Package;-><init>(Ljava/lang/String;)V

    if-eqz v7, :cond_65

    :try_start_5f
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/server/pm/PackageWhiteBlacklist$Package;->minVersion:I

    :cond_65
    if-eqz v6, :cond_6d

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v3, Lcom/android/server/pm/PackageWhiteBlacklist$Package;->maxVersion:I
    :try_end_6d
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_6d} :catch_77

    :cond_6d
    invoke-direct {p0, v3, p2}, Lcom/android/server/pm/PackageWhiteBlacklist;->parseWhiteBlacklistPackage(Lcom/android/server/pm/PackageWhiteBlacklist$Package;Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/pm/PackageWhiteBlacklist$Package;

    move-result-object v3

    if-nez v3, :cond_96

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_20

    :catch_77
    move-exception v1

    const-string/jumbo v8, "PackageWBlist"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Version String nfe: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_20

    :cond_96
    const-string/jumbo v8, "packages-whitelist"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a8

    iget-object v9, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mWhitePackages:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_a2
    iget-object v8, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mWhitePackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a7
    .catchall {:try_start_a2 .. :try_end_a7} :catchall_bc

    monitor-exit v9

    :cond_a8
    const-string/jumbo v8, "packages-blacklist"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v9, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mBlackPackages:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_b4
    iget-object v8, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mBlackPackages:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b9
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_bf

    monitor-exit v9

    goto/16 :goto_20

    :catchall_bc
    move-exception v8

    monitor-exit v9

    throw v8

    :catchall_bf
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_c2
    const-string/jumbo v8, "PackageWBlist"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown element under <preferred-activities>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_20

    :cond_e5
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v3, "PackageWBlist"

    const-string/jumbo v4, "dump()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "  "

    const/16 v4, 0x78

    invoke-direct {v0, p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mWhitePackages:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_19
    iget-object v3, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mWhitePackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_49

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v3, "White Packages:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mWhitePackages:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageWhiteBlacklist$Package;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_43

    goto :goto_33

    :catchall_43
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_46
    :try_start_46
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_43

    :cond_49
    monitor-exit v4

    iget-object v4, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mBlackPackages:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_4d
    iget-object v3, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mBlackPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7d

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v3, "Black Packages:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v3, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mBlackPackages:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageWhiteBlacklist$Package;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V
    :try_end_76
    .catchall {:try_start_4d .. :try_end_76} :catchall_77

    goto :goto_67

    :catchall_77
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_7a
    :try_start_7a
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_77

    :cond_7d
    monitor-exit v4

    return-void
.end method

.method public getBlackPackages()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageWhiteBlacklist$Package;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "PackageWBlist"

    const-string/jumbo v1, "getBlackPackages()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mBlackPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWhitePackages()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageWhiteBlacklist$Package;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "PackageWBlist"

    const-string/jumbo v1, "getWhitePacakges()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/PackageWhiteBlacklist;->mWhitePackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public parsePackageWhiteBlacklistFile()Z
    .registers 8

    const/4 v2, 0x0

    const-string/jumbo v4, "PackageWBlist"

    const-string/jumbo v5, "parsePackageWhiteBlackListFile()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/etc/packages-wblist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageWhiteBlacklist;->parsePackageWhiteBlacklistDir(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5a

    const-string/jumbo v4, "PackageWBlist"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parse WhiteBlacklist fail dir : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    const/4 v2, 0x1

    goto :goto_2e

    :cond_5c
    return v2
.end method
