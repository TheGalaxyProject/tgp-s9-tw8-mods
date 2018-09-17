.class public Lcom/android/settings/KnoxActiveProtectionStatus;
.super Ljava/lang/Object;
.source "KnoxActiveProtectionStatus.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceTampered()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v6, "/dev/knox_kap"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_5f
    .catchall {:try_start_2 .. :try_end_a} :catchall_89

    if-eqz v4, :cond_52

    :try_start_c
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_9c
    .catchall {:try_start_c .. :try_end_11} :catchall_95

    if-eqz v1, :cond_51

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDeviceTampered: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_51

    const-string/jumbo v6, "02"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_45

    const-string/jumbo v6, "03"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_42} :catch_9f
    .catchall {:try_start_13 .. :try_end_42} :catchall_98

    move-result v6

    if-eqz v6, :cond_51

    :cond_45
    const/4 v6, 0x1

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_4b
    if-eqz v4, :cond_50

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_50
    return v6

    :cond_51
    move-object v0, v1

    :cond_52
    if-eqz v0, :cond_57

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_57
    if-eqz v4, :cond_5c

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_5c
    move-object v3, v4

    :cond_5d
    :goto_5d
    const/4 v6, 0x0

    return v6

    :catch_5f
    move-exception v2

    :goto_60
    :try_start_60
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDeviceTampered failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_60 .. :try_end_7e} :catchall_89

    if-eqz v0, :cond_83

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_83
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_5d

    :catchall_89
    move-exception v6

    :goto_8a
    if-eqz v0, :cond_8f

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_8f
    if-eqz v3, :cond_94

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    :cond_94
    throw v6

    :catchall_95
    move-exception v6

    move-object v3, v4

    goto :goto_8a

    :catchall_98
    move-exception v6

    move-object v0, v1

    move-object v3, v4

    goto :goto_8a

    :catch_9c
    move-exception v2

    move-object v3, v4

    goto :goto_60

    :catch_9f
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    goto :goto_60
.end method

.method public isKapDisablePending()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v6, "/dev/knox_kap"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_56
    .catchall {:try_start_2 .. :try_end_a} :catchall_80

    if-eqz v4, :cond_49

    :try_start_c
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_93
    .catchall {:try_start_c .. :try_end_11} :catchall_8c

    if-eqz v1, :cond_48

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapDisablePending: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_48

    const-string/jumbo v6, "10"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_39} :catch_96
    .catchall {:try_start_13 .. :try_end_39} :catchall_8f

    move-result v6

    if-eqz v6, :cond_48

    const/4 v6, 0x1

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_42
    if-eqz v4, :cond_47

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_47
    return v6

    :cond_48
    move-object v0, v1

    :cond_49
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4e
    if-eqz v4, :cond_53

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_53
    move-object v3, v4

    :cond_54
    :goto_54
    const/4 v6, 0x0

    return v6

    :catch_56
    move-exception v2

    :goto_57
    :try_start_57
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapDisablePending failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_57 .. :try_end_75} :catchall_80

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_7a
    if-eqz v3, :cond_54

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_54

    :catchall_80
    move-exception v6

    :goto_81
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_86
    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    :cond_8b
    throw v6

    :catchall_8c
    move-exception v6

    move-object v3, v4

    goto :goto_81

    :catchall_8f
    move-exception v6

    move-object v0, v1

    move-object v3, v4

    goto :goto_81

    :catch_93
    move-exception v2

    move-object v3, v4

    goto :goto_57

    :catch_96
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    goto :goto_57
.end method

.method public isKapEnablePending()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v6, "/dev/knox_kap"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_56
    .catchall {:try_start_2 .. :try_end_a} :catchall_80

    if-eqz v4, :cond_49

    :try_start_c
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_93
    .catchall {:try_start_c .. :try_end_11} :catchall_8c

    if-eqz v1, :cond_48

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapEnablePending: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_48

    const-string/jumbo v6, "01"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_39} :catch_96
    .catchall {:try_start_13 .. :try_end_39} :catchall_8f

    move-result v6

    if-eqz v6, :cond_48

    const/4 v6, 0x1

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_42
    if-eqz v4, :cond_47

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_47
    return v6

    :cond_48
    move-object v0, v1

    :cond_49
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4e
    if-eqz v4, :cond_53

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_53
    move-object v3, v4

    :cond_54
    :goto_54
    const/4 v6, 0x0

    return v6

    :catch_56
    move-exception v2

    :goto_57
    :try_start_57
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapEnablePending failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_57 .. :try_end_75} :catchall_80

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_7a
    if-eqz v3, :cond_54

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_54

    :catchall_80
    move-exception v6

    :goto_81
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_86
    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    :cond_8b
    throw v6

    :catchall_8c
    move-exception v6

    move-object v3, v4

    goto :goto_81

    :catchall_8f
    move-exception v6

    move-object v0, v1

    move-object v3, v4

    goto :goto_81

    :catch_93
    move-exception v2

    move-object v3, v4

    goto :goto_57

    :catch_96
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    goto :goto_57
.end method

.method public isKapEnabled()Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v4, Ljava/io/FileReader;

    const-string/jumbo v6, "/dev/knox_kap"

    invoke-direct {v4, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_56
    .catchall {:try_start_2 .. :try_end_a} :catchall_80

    if-eqz v4, :cond_49

    :try_start_c
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_93
    .catchall {:try_start_c .. :try_end_11} :catchall_8c

    if-eqz v1, :cond_48

    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_48

    const-string/jumbo v6, "11"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_39} :catch_96
    .catchall {:try_start_13 .. :try_end_39} :catchall_8f

    move-result v6

    if-eqz v6, :cond_48

    const/4 v6, 0x1

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_42
    if-eqz v4, :cond_47

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_47
    return v6

    :cond_48
    move-object v0, v1

    :cond_49
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4e
    if-eqz v4, :cond_53

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_53
    move-object v3, v4

    :cond_54
    :goto_54
    const/4 v6, 0x0

    return v6

    :catch_56
    move-exception v2

    :goto_57
    :try_start_57
    const-string/jumbo v6, "KnoxActiveProtectionStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isKapEnabled failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_57 .. :try_end_75} :catchall_80

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_7a
    if-eqz v3, :cond_54

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_54

    :catchall_80
    move-exception v6

    :goto_81
    if-eqz v0, :cond_86

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_86
    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    :cond_8b
    throw v6

    :catchall_8c
    move-exception v6

    move-object v3, v4

    goto :goto_81

    :catchall_8f
    move-exception v6

    move-object v0, v1

    move-object v3, v4

    goto :goto_81

    :catch_93
    move-exception v2

    move-object v3, v4

    goto :goto_57

    :catch_96
    move-exception v2

    move-object v0, v1

    move-object v3, v4

    goto :goto_57
.end method

.method public isKapEnforced()Z
    .registers 7

    const/4 v2, 0x0

    const-string/jumbo v3, "tima"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_12

    :try_start_e
    invoke-interface {v1}, Landroid/service/tima/ITimaService;->isKapEnforced()Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_13

    move-result v2

    :cond_12
    :goto_12
    return v2

    :catch_13
    move-exception v0

    const-string/jumbo v3, "KnoxActiveProtectionStatus"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKapEnforced : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public setKapEnabled(ZZ)V
    .registers 8

    const-string/jumbo v2, "tima"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v2, 0x1

    :try_start_e
    invoke-interface {v1, p1, v2}, Landroid/service/tima/ITimaService;->setKapMode(ZZ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string/jumbo v2, "KnoxActiveProtectionStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setKapEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
