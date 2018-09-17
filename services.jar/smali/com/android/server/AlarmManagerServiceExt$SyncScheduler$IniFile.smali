.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IniFile"
.end annotation


# instance fields
.field private _keyValue:Ljava/util/regex/Pattern;

.field private _section:Ljava/util/regex/Pattern;

.field private sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "\\s*\\[([^]]*)\\]\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->_section:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "\\s*([^=]*)=(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->_keyValue:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->sections:Ljava/util/Map;

    invoke-virtual {p0, p2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->load(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    iget-object v2, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->sections:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move v0, p3

    if-nez v1, :cond_c

    return p3

    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_24
    return v0
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 8

    iget-object v3, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->sections:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move v2, p3

    if-nez v1, :cond_c

    return p3

    :cond_c
    :try_start_c
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_1f} :catch_23

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    :cond_22
    :goto_22
    return v2

    :catch_23
    move-exception v0

    goto :goto_22
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;J)J
    .registers 12

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->sections:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    move-wide v2, p3

    if-nez v1, :cond_c

    return-wide p3

    :cond_c
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2e

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_2e

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v4}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_2d} :catch_2f

    move-result-wide v2

    :cond_2e
    :goto_2e
    return-wide v2

    :catch_2f
    move-exception v0

    goto :goto_2e
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->sections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_b

    return-object p3

    :cond_b
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public load(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v8, 0x0

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_c} :catch_95
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_7e
    .catchall {:try_start_2 .. :try_end_c} :catchall_89

    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_75

    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->_section:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_28

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto :goto_c

    :cond_28
    if-eqz v8, :cond_c

    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->_keyValue:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string/jumbo v10, "APPSYNC_INIT"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x2

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->sections:Ljava/util/Map;

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_65

    iget-object v10, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$IniFile;->sections:Ljava/util/Map;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v10, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_6c} :catch_6d
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_6c} :catch_97
    .catchall {:try_start_c .. :try_end_6c} :catchall_92

    goto :goto_c

    :catch_6d
    move-exception v2

    move-object v0, v1

    :goto_6f
    if-eqz v0, :cond_74

    :try_start_71
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_87

    :cond_74
    :goto_74
    return-void

    :cond_75
    if-eqz v1, :cond_7a

    :try_start_77
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7c

    :cond_7a
    :goto_7a
    move-object v0, v1

    goto :goto_74

    :catch_7c
    move-exception v3

    goto :goto_7a

    :catch_7e
    move-exception v3

    :goto_7f
    if-eqz v0, :cond_74

    :try_start_81
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_74

    :catch_85
    move-exception v3

    goto :goto_74

    :catch_87
    move-exception v3

    goto :goto_74

    :catchall_89
    move-exception v10

    :goto_8a
    if-eqz v0, :cond_8f

    :try_start_8c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    :cond_8f
    :goto_8f
    throw v10

    :catch_90
    move-exception v3

    goto :goto_8f

    :catchall_92
    move-exception v10

    move-object v0, v1

    goto :goto_8a

    :catch_95
    move-exception v2

    goto :goto_6f

    :catch_97
    move-exception v3

    move-object v0, v1

    goto :goto_7f
.end method
