.class public Lcom/samsung/android/settings/search/model/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# static fields
.field private static DEBUG:Z

.field private static mLogBuffer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/search/model/SearchUtils;->mLogBuffer:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/search/model/SearchUtils;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_c

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/search/model/SearchUtils;->isIndexableClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_28

    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    const-string/jumbo v3, "SecMenutree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_28
    move-object v0, v2

    goto :goto_b
.end method

.method public static getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_1
    const-string/jumbo v6, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/search/Indexable$SearchIndexProvider;
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_f} :catch_2d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_f} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_f} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_10

    return-object v6

    :catch_10
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_14
    return-object v7

    :catch_15
    move-exception v1

    const-string/jumbo v6, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_14

    :catch_1d
    move-exception v0

    const-string/jumbo v6, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_14

    :catch_25
    move-exception v5

    const-string/jumbo v6, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_14

    :catch_2d
    move-exception v2

    const-string/jumbo v6, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_14
.end method

.method public static initLogging()V
    .registers 2

    const-string/jumbo v0, "SecMenutree"

    const-string/jumbo v1, "initLogging()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/settings/search/model/SearchUtils;->mLogBuffer:Ljava/lang/String;

    return-void
.end method

.method public static insertLogBuffer(Ljava/lang/String;)V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/settings/search/model/SearchUtils;->DEBUG:Z

    if-eqz v4, :cond_1b

    const-string/jumbo v4, "SecMenutree"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/samsung/android/settings/search/model/SearchUtils;->mLogBuffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "SecMenutree"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/search/model/SearchUtils;->mLogBuffer:Ljava/lang/String;

    return-void
.end method

.method public static isIndexableClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_9

    const-class v0, Lcom/android/settings/search/Indexable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static writeLogFile()V
    .registers 13

    const-string/jumbo v10, "SecMenutree"

    const-string/jumbo v11, "writeLogFile()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "search_indexing.txt"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_53

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/data/log/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_26
    const/4 v3, 0x0

    const/4 v7, 0x0

    :try_start_28
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_35} :catch_a7
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_78
    .catchall {:try_start_28 .. :try_end_35} :catchall_e3

    :try_start_35
    new-instance v8, Ljava/io/OutputStreamWriter;

    invoke-direct {v8, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_3a} :catch_fb
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_102
    .catchall {:try_start_35 .. :try_end_3a} :catchall_f4

    if-eqz v8, :cond_41

    :try_start_3c
    sget-object v10, Lcom/samsung/android/settings/search/model/SearchUtils;->mLogBuffer:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    :cond_41
    if-eqz v4, :cond_46

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_3c .. :try_end_46} :catch_fe
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_46} :catch_106
    .catchall {:try_start_3c .. :try_end_46} :catchall_f7

    :cond_46
    if-eqz v8, :cond_4b

    :try_start_48
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V

    :cond_4b
    if-eqz v4, :cond_50

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_50} :catch_73

    :cond_50
    :goto_50
    move-object v7, v8

    move-object v3, v4

    :cond_52
    :goto_52
    return-void

    :cond_53
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/data/user/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "com.android.settings/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_26

    :catch_73
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_50

    :catch_78
    move-exception v1

    :goto_79
    :try_start_79
    const-string/jumbo v10, "SecMenutree"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to write log file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_79 .. :try_end_97} :catchall_e3

    if-eqz v7, :cond_9c

    :try_start_99
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    :cond_9c
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a1} :catch_a2

    goto :goto_52

    :catch_a2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    :catch_a7
    move-exception v0

    :goto_a8
    :try_start_a8
    const-string/jumbo v10, "SecMenutree"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to found file path : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_a8 .. :try_end_d1} :catchall_e3

    if-eqz v7, :cond_d6

    :try_start_d3
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    :cond_d6
    if-eqz v3, :cond_52

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_db
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_db} :catch_dd

    goto/16 :goto_52

    :catch_dd
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_52

    :catchall_e3
    move-exception v10

    :goto_e4
    if-eqz v7, :cond_e9

    :try_start_e6
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V

    :cond_e9
    if-eqz v3, :cond_ee

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_e6 .. :try_end_ee} :catch_ef

    :cond_ee
    :goto_ee
    throw v10

    :catch_ef
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ee

    :catchall_f4
    move-exception v10

    move-object v3, v4

    goto :goto_e4

    :catchall_f7
    move-exception v10

    move-object v7, v8

    move-object v3, v4

    goto :goto_e4

    :catch_fb
    move-exception v0

    move-object v3, v4

    goto :goto_a8

    :catch_fe
    move-exception v0

    move-object v7, v8

    move-object v3, v4

    goto :goto_a8

    :catch_102
    move-exception v1

    move-object v3, v4

    goto/16 :goto_79

    :catch_106
    move-exception v1

    move-object v7, v8

    move-object v3, v4

    goto/16 :goto_79
.end method
