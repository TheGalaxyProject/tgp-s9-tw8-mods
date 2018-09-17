.class public Lcom/samsung/android/settings/display/SecDisplayUtils;
.super Ljava/lang/Object;
.source "SecDisplayUtils.java"


# static fields
.field public static final CRUISER_PROJECT:Z

.field public static final DREAM2_PROJECT:Z

.field public static mListPocImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mProductName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.product.device"

    const-string/jumbo v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "dream2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "SC-03J"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_40

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "SCV35"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_2f
    sput-boolean v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->DREAM2_PROJECT:Z

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "cruiser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    return-void

    :cond_40
    const/4 v0, 0x1

    goto :goto_2f
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backupDefaultScreenBrightnessMode(Landroid/content/Context;)V
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] backupDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "display_pref"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "isBackupBrightnessMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_58

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "SCREEN_BRIGHTNESS_MODE"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "isBackupBrightnessMode"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    const/16 v4, 0x80

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] backupDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    return-void
.end method

.method public static getCurrentSeekbarIndex(Landroid/content/Context;)I
    .registers 14

    const-string/jumbo v5, "/efs/FactoryApp/poc_user"

    const/4 v8, 0x3

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_81

    move-result v10

    if-eqz v10, :cond_51

    const/4 v3, 0x0

    :try_start_10
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_6e
    .catchall {:try_start_10 .. :try_end_1a} :catchall_7a

    :try_start_1a
    const-string/jumbo v9, "3"

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_4c

    const-string/jumbo v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_4c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_4c

    const/4 v10, 0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_4b} :catch_8b
    .catchall {:try_start_1a .. :try_end_4b} :catchall_88

    move-result v8

    :cond_4c
    if-eqz v4, :cond_51

    :try_start_4e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_81

    :cond_51
    :goto_51
    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getCurrentSeekbarIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :catch_6c
    move-exception v0

    goto :goto_51

    :catch_6e
    move-exception v1

    :goto_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7a

    if-eqz v3, :cond_51

    :try_start_74
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_77} :catch_81

    goto :goto_51

    :catch_78
    move-exception v0

    goto :goto_51

    :catchall_7a
    move-exception v10

    :goto_7b
    if-eqz v3, :cond_80

    :try_start_7d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_86
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_80} :catch_81

    :cond_80
    :goto_80
    :try_start_80
    throw v10
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_81} :catch_81

    :catch_81
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_51

    :catch_86
    move-exception v0

    goto :goto_80

    :catchall_88
    move-exception v10

    move-object v3, v4

    goto :goto_7b

    :catch_8b
    move-exception v1

    move-object v3, v4

    goto :goto_6f
.end method

.method public static getPocCurrentUser(Landroid/content/Context;)I
    .registers 14

    const-string/jumbo v5, "/efs/FactoryApp/poc_user"

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocFactoryDefaultIndex(Landroid/content/Context;)I

    move-result v8

    :try_start_7
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_9e

    move-result v10

    if-eqz v10, :cond_65

    const/4 v3, 0x0

    :try_start_13
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1d} :catch_82
    .catchall {:try_start_13 .. :try_end_1d} :catchall_97

    :try_start_1d
    const-string/jumbo v9, "0"

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] get_poc_user : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_58

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_58

    const-string/jumbo v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v10, 0x0

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :cond_58
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5f} :catch_a8
    .catchall {:try_start_1d .. :try_end_5f} :catchall_a5

    move-result v8

    if-eqz v4, :cond_65

    :try_start_62
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_80
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_9e

    :cond_65
    :goto_65
    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getPocCurrentUser : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :catch_80
    move-exception v0

    goto :goto_65

    :catch_82
    move-exception v1

    :goto_83
    :try_start_83
    const-string/jumbo v10, "SecDisplayUtils"

    const-string/jumbo v11, "[stpoc] Exception in getPocCurrentUser"

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_83 .. :try_end_8f} :catchall_97

    if-eqz v3, :cond_65

    :try_start_91
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_95
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_94} :catch_9e

    goto :goto_65

    :catch_95
    move-exception v0

    goto :goto_65

    :catchall_97
    move-exception v10

    :goto_98
    if-eqz v3, :cond_9d

    :try_start_9a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    :cond_9d
    :goto_9d
    :try_start_9d
    throw v10
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9e} :catch_9e

    :catch_9e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_65

    :catch_a3
    move-exception v0

    goto :goto_9d

    :catchall_a5
    move-exception v10

    move-object v3, v4

    goto :goto_98

    :catch_a8
    move-exception v1

    move-object v3, v4

    goto :goto_83
.end method

.method public static getPocEstimatedTime(Lcom/samsung/android/hardware/display/SemMdnieManager;)J
    .registers 11

    const-wide/32 v8, 0x668a0

    const-wide/16 v6, 0x2710

    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] check poc state"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->isMdniePocFused()Z

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->isMdnieFisrtUsed()Z

    move-result v0

    const-string/jumbo v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[stpoc] check poc state : 1.Fused-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", 2.Supported-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", 3.FirstUsed-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : isPocDream1NA"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v6

    :cond_5a
    if-nez v2, :cond_72

    if-nez v0, :cond_68

    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 3 - isMdnieFisrtUsed() false"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v8

    :cond_68
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 3 - isMdnieFisrtUsed() true"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v6

    :cond_72
    if-eqz v1, :cond_82

    if-eqz v2, :cond_82

    if-nez v0, :cond_82

    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 2 - isMdnieFisrtUsed() false"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v8

    :cond_82
    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "[stpoc] Estimated Time : case 1 or case 2 - isMdnieFisrtUsed() true"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v6
.end method

.method public static getPocFactoryDefaultIndex(Landroid/content/Context;)I
    .registers 14

    const-string/jumbo v5, "/efs/FactoryApp/poc_info"

    const/4 v7, 0x0

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_c5

    move-result v10

    if-eqz v10, :cond_6b

    const/4 v3, 0x0

    :try_start_10
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1a} :catch_a9
    .catchall {:try_start_10 .. :try_end_1a} :catchall_be

    :try_start_1a
    const-string/jumbo v9, "0"

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] get_poc_info : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v8, :cond_66

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_66

    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_66

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_66

    const/4 v10, 0x1

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_65} :catch_cf
    .catchall {:try_start_1a .. :try_end_65} :catchall_cc

    move-result v7

    :cond_66
    if-eqz v4, :cond_6b

    :try_start_68
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_a7
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_c5

    :cond_6b
    :goto_6b
    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getPocFactoryDefaultIndex : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x4

    if-gt v7, v10, :cond_8b

    const/4 v10, -0x1

    if-ge v7, v10, :cond_a6

    :cond_8b
    const/4 v7, 0x0

    const-string/jumbo v10, "SecDisplayUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[stpoc] getPocFactoryDefaultIndex value correction : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    return v7

    :catch_a7
    move-exception v0

    goto :goto_6b

    :catch_a9
    move-exception v1

    :goto_aa
    :try_start_aa
    const-string/jumbo v10, "SecDisplayUtils"

    const-string/jumbo v11, "[stpoc] Exception in getPocFactoryDefaultIndex"

    invoke-static {v10, v11}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_aa .. :try_end_b6} :catchall_be

    if-eqz v3, :cond_6b

    :try_start_b8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_c5

    goto :goto_6b

    :catch_bc
    move-exception v0

    goto :goto_6b

    :catchall_be
    move-exception v10

    :goto_bf
    if-eqz v3, :cond_c4

    :try_start_c1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_ca
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_c5

    :cond_c4
    :goto_c4
    :try_start_c4
    throw v10
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c5} :catch_c5

    :catch_c5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b

    :catch_ca
    move-exception v0

    goto :goto_c4

    :catchall_cc
    move-exception v10

    move-object v3, v4

    goto :goto_bf

    :catch_cf
    move-exception v1

    move-object v3, v4

    goto :goto_aa
.end method

.method public static getPocImageFromArray(I)I
    .registers 2

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p0, :cond_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    sget-object v0, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getPocUserIndexTemp(Landroid/content/Context;)I
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_poc_index"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const-string/jumbo v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[stpoc] getPocUserIndexTemp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getStringFromFile(Ljava/lang/String;)I
    .registers 16

    const/16 v13, 0x80

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/16 v0, 0x80

    new-array v1, v13, [B

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v13, :cond_12

    aput-byte v12, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_12
    if-eqz p0, :cond_1f

    :try_start_14
    new-instance v9, Ljava/io/FileInputStream;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v9

    :cond_1f
    if-eqz v8, :cond_40

    invoke-virtual {v8, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_3d

    new-instance v6, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v13, 0x0

    invoke-direct {v6, v1, v13, v10, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    if-eqz v6, :cond_3d

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3d

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    :cond_3d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_40} :catch_f3
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_40} :catch_a1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_40} :catch_51
    .catchall {:try_start_14 .. :try_end_40} :catchall_145

    :cond_40
    if-eqz v8, :cond_45

    :try_start_42
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    :cond_45
    :goto_45
    return v11

    :catch_46
    move-exception v5

    const-string/jumbo v12, "SecDisplayUtils"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :catch_51
    move-exception v3

    :try_start_52
    const-string/jumbo v12, "SecDisplayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , in : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , length : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_90
    .catchall {:try_start_52 .. :try_end_90} :catchall_145

    if-eqz v8, :cond_45

    :try_start_92
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_45

    :catch_96
    move-exception v5

    const-string/jumbo v12, "SecDisplayUtils"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :catch_a1
    move-exception v2

    :try_start_a2
    const-string/jumbo v12, "SecDisplayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "FileNotFoundException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , in : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , length : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e0
    .catchall {:try_start_a2 .. :try_end_e0} :catchall_145

    if-eqz v8, :cond_45

    :try_start_e2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_e7

    goto/16 :goto_45

    :catch_e7
    move-exception v5

    const-string/jumbo v12, "SecDisplayUtils"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_45

    :catch_f3
    move-exception v4

    :try_start_f4
    const-string/jumbo v12, "SecDisplayUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NumberFormatException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , in : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " , length : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_132
    .catchall {:try_start_f4 .. :try_end_132} :catchall_145

    if-eqz v8, :cond_45

    :try_start_134
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_134 .. :try_end_137} :catch_139

    goto/16 :goto_45

    :catch_139
    move-exception v5

    const-string/jumbo v12, "SecDisplayUtils"

    const-string/jumbo v13, "File Close error"

    invoke-static {v12, v13}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_45

    :catchall_145
    move-exception v12

    if-eqz v8, :cond_14b

    :try_start_148
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_14b} :catch_14c

    :cond_14b
    :goto_14b
    throw v12

    :catch_14c
    move-exception v5

    const-string/jumbo v13, "SecDisplayUtils"

    const-string/jumbo v14, "File Close error"

    invoke-static {v13, v14}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14b
.end method

.method public static getUserPocValue(Landroid/content/Context;)I
    .registers 6

    const/4 v4, 0x3

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocFactoryDefaultIndex(Landroid/content/Context;)I

    move-result v3

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocUserIndexTemp(Landroid/content/Context;)I

    move-result v2

    rsub-int/lit8 v1, v3, 0x5

    const/4 v0, 0x0

    if-ge v2, v4, :cond_1d

    rsub-int/lit8 v4, v2, 0x3

    sub-int v0, v1, v4

    :goto_12
    const/4 v4, 0x1

    if-ge v0, v4, :cond_16

    const/4 v0, 0x1

    :cond_16
    const/4 v4, 0x6

    if-le v0, v4, :cond_1a

    const/4 v0, 0x6

    :cond_1a
    rsub-int/lit8 v4, v0, 0x5

    return v4

    :cond_1d
    if-le v2, v4, :cond_24

    add-int/lit8 v4, v2, -0x3

    add-int v0, v1, v4

    goto :goto_12

    :cond_24
    move v0, v1

    goto :goto_12
.end method

.method public static initPocImageArray(Landroid/content/Context;Lcom/samsung/android/hardware/display/SemMdnieManager;)V
    .registers 14

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x6

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    if-nez v4, :cond_da

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    :goto_10
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocFactoryDefaultIndex(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocCurrentUser(Landroid/content/Context;)I

    move-result v4

    rsub-int/lit8 v3, v4, 0x5

    const-string/jumbo v4, "SecDisplayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[stpoc] pocFactoryIndex : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SecDisplayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[stpoc] pocUserIndexConvert : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    if-nez v4, :cond_58

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v4

    if-nez v4, :cond_2bc

    :cond_58
    const-string/jumbo v4, "SecDisplayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[stpoc] initPocImageArray for Cruiser : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/samsung/android/settings/display/SecDisplayUtils;->CRUISER_PROJECT:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "SecDisplayUtils"

    const-string/jumbo v5, "[stpoc] initPocImageArray for Case 3"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    new-array v1, v4, [[I

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_1768

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_177a

    aput-object v4, v1, v8

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_178c

    const/4 v5, 0x2

    aput-object v4, v1, v5

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_179e

    aput-object v4, v1, v9

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_17b0

    aput-object v4, v1, v10

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_17c2

    aput-object v4, v1, v11

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_17d4

    aput-object v4, v1, v7

    move-object v0, v1

    if-lt v3, v8, :cond_bf

    if-le v3, v7, :cond_e1

    :cond_bf
    const-string/jumbo v4, "SecDisplayUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[stpoc] error initPocImageArray for Case 3 : pocUserIndex is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d9
    :goto_d9
    return-void

    :cond_da
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_10

    :cond_e1
    packed-switch v2, :pswitch_data_17e6

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d9

    :pswitch_126
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_16a
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1ae
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1f2
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    const/4 v6, 0x2

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_236
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_279
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    aget-object v5, v1, v3

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_2bc
    sget-boolean v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->DREAM2_PROJECT:Z

    if-eqz v4, :cond_d14

    const-string/jumbo v4, "SecDisplayUtils"

    const-string/jumbo v5, "[stpoc] initPocImageArray for D2 case"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v8, :cond_480

    packed-switch v2, :pswitch_data_17f6

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080543

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080544

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080545

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080546

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080546

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_30c
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080541

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080541

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080541

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080542

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080543

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_34a
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080541

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080541

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080542

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080543

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080544

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_388
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080541

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080542

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080543

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080544

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080545

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_3c6
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080542

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080543

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080544

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080545

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080546

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_404
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080543

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080544

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080545

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080546

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080546

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_442
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080544

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080545

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080546

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080546

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080546

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_480
    const/4 v4, 0x2

    if-ne v3, v4, :cond_638

    packed-switch v2, :pswitch_data_1806

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080549

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_4c4
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080547

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080547

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080547

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080548

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080549

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_502
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080547

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080547

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080548

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080549

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_540
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080547

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080548

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080549

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_57e
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080548

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080549

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_5bc
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080549

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_5fa
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_638
    if-ne v3, v9, :cond_7ef

    packed-switch v2, :pswitch_data_1816

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080550

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080551

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080552

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080552

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_67b
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_6b9
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080550

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_6f7
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080550

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080551

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_735
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080550

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080551

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080552

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_773
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08054f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080550

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080551

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080552

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080552

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_7b1
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080550

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080551

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080552

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080552

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080552

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_7ef
    if-ne v3, v10, :cond_9a6

    packed-switch v2, :pswitch_data_1826

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080555

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080556

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080557

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080558

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080558

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_832
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080553

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080553

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080553

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080554

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080555

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_870
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080553

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080553

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080554

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080555

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080556

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_8ae
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080553

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080554

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080555

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080556

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080557

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_8ec
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080554

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080555

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080556

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080557

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080558

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_92a
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080555

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080556

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080557

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080558

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080558

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_968
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080556

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080557

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080558

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080558

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080558

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_9a6
    if-ne v3, v11, :cond_b5d

    packed-switch v2, :pswitch_data_1836

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_9e9
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080559

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080559

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080559

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_a27
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080559

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080559

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_a65
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080559

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_aa3
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_ae1
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_b1f
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_b5d
    if-ne v3, v7, :cond_d9

    packed-switch v2, :pswitch_data_1846

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080561

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080562

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080563

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080564

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080564

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_ba0
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080560

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080561

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_bde
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080560

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080561

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080562

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_c1c
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08055f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080560

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080561

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080562

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080563

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_c5a
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080560

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080561

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080562

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080563

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080564

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_c98
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080561

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080562

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080563

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080564

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080564

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_cd6
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080562

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080563

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080564

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080564

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080564

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_d14
    const-string/jumbo v4, "SecDisplayUtils"

    const-string/jumbo v5, "[stpoc] initPocImageArray for D1 case"

    invoke-static {v4, v5}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v8, :cond_ed4

    packed-switch v2, :pswitch_data_1856

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080520

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080521

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080522

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080522

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_d60
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_d9e
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080520

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_ddc
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080520

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080521

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_e1a
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080520

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080521

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080522

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_e58
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08051f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080520

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080521

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080522

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080522

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_e96
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080520

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080521

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080522

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080522

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080522

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_ed4
    const/4 v4, 0x2

    if-ne v3, v4, :cond_108c

    packed-switch v2, :pswitch_data_1866

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080525

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080526

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080527

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080528

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080528

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_f18
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080523

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080523

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080523

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080524

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080525

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_f56
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080523

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080523

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080524

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080525

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080526

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_f94
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080523

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080524

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080525

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080526

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080527

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_fd2
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080524

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080525

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080526

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080527

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080528

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1010
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080525

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080526

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080527

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080528

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080528

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_104e
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080526

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080527

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080528

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080528

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080528

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_108c
    if-ne v3, v9, :cond_1243

    packed-switch v2, :pswitch_data_1876

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_10cf
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080529

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080529

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080529

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_110d
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080529

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080529

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_114b
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080529

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1189
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_11c7
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1205
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_1243
    if-ne v3, v10, :cond_13fa

    packed-switch v2, :pswitch_data_1886

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080531

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080532

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080533

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080534

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080534

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1286
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080530

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080531

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_12c4
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080530

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080531

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080532

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1302
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08052f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080530

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080531

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080532

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080533

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1340
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080530

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080531

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080532

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080533

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080534

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_137e
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080531

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080532

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080533

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080534

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080534

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_13bc
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080532

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080533

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080534

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080534

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080534

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_13fa
    if-ne v3, v11, :cond_15b1

    packed-switch v2, :pswitch_data_1896

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080537

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080538

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080539

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_143d
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080535

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080535

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080535

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080536

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080537

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_147b
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080535

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080535

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080536

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080537

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080538

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_14b9
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080535

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080536

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080537

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080538

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080539

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_14f7
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080536

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080537

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080538

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080539

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1535
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080537

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080538

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080539

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1573
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080538

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080539

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :cond_15b1
    if-ne v3, v7, :cond_d9

    packed-switch v2, :pswitch_data_18a6

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080540

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080540

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_15f4
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1632
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_1670
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_16ae
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080540

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_16ec
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080540

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080540

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :pswitch_172a
    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f08053f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080540

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080540

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Lcom/samsung/android/settings/display/SecDisplayUtils;->mListPocImages:Ljava/util/ArrayList;

    const v5, 0x7f080540

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d9

    :array_1768
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_177a
    .array-data 4
        0x0
        0x7f080581
        0x7f080580
        0x7f08057f
        0x7f08057e
        0x7f08057d
        0x7f080582
    .end array-data

    :array_178c
    .array-data 4
        0x0
        0x7f08057b
        0x7f08057a
        0x7f080579
        0x7f080578
        0x7f080577
        0x7f08057c
    .end array-data

    :array_179e
    .array-data 4
        0x0
        0x7f080575
        0x7f080574
        0x7f080573
        0x7f080572
        0x7f080571
        0x7f080576
    .end array-data

    :array_17b0
    .array-data 4
        0x0
        0x7f08056f
        0x7f08056e
        0x7f08056d
        0x7f08056c
        0x7f08056b
        0x7f080570
    .end array-data

    :array_17c2
    .array-data 4
        0x0
        0x7f080569
        0x7f080568
        0x7f080567
        0x7f080566
        0x7f080565
        0x7f08056a
    .end array-data

    :array_17d4
    .array-data 4
        0x0
        0x7f080587
        0x7f080586
        0x7f080585
        0x7f080584
        0x7f080583
        0x7f080588
    .end array-data

    :pswitch_data_17e6
    .packed-switch -0x1
        :pswitch_279
        :pswitch_236
        :pswitch_1f2
        :pswitch_1ae
        :pswitch_16a
        :pswitch_126
    .end packed-switch

    :pswitch_data_17f6
    .packed-switch -0x1
        :pswitch_442
        :pswitch_404
        :pswitch_3c6
        :pswitch_388
        :pswitch_34a
        :pswitch_30c
    .end packed-switch

    :pswitch_data_1806
    .packed-switch -0x1
        :pswitch_5fa
        :pswitch_5bc
        :pswitch_57e
        :pswitch_540
        :pswitch_502
        :pswitch_4c4
    .end packed-switch

    :pswitch_data_1816
    .packed-switch -0x1
        :pswitch_7b1
        :pswitch_773
        :pswitch_735
        :pswitch_6f7
        :pswitch_6b9
        :pswitch_67b
    .end packed-switch

    :pswitch_data_1826
    .packed-switch -0x1
        :pswitch_968
        :pswitch_92a
        :pswitch_8ec
        :pswitch_8ae
        :pswitch_870
        :pswitch_832
    .end packed-switch

    :pswitch_data_1836
    .packed-switch -0x1
        :pswitch_b1f
        :pswitch_ae1
        :pswitch_aa3
        :pswitch_a65
        :pswitch_a27
        :pswitch_9e9
    .end packed-switch

    :pswitch_data_1846
    .packed-switch -0x1
        :pswitch_cd6
        :pswitch_c98
        :pswitch_c5a
        :pswitch_c1c
        :pswitch_bde
        :pswitch_ba0
    .end packed-switch

    :pswitch_data_1856
    .packed-switch -0x1
        :pswitch_e96
        :pswitch_e58
        :pswitch_e1a
        :pswitch_ddc
        :pswitch_d9e
        :pswitch_d60
    .end packed-switch

    :pswitch_data_1866
    .packed-switch -0x1
        :pswitch_104e
        :pswitch_1010
        :pswitch_fd2
        :pswitch_f94
        :pswitch_f56
        :pswitch_f18
    .end packed-switch

    :pswitch_data_1876
    .packed-switch -0x1
        :pswitch_1205
        :pswitch_11c7
        :pswitch_1189
        :pswitch_114b
        :pswitch_110d
        :pswitch_10cf
    .end packed-switch

    :pswitch_data_1886
    .packed-switch -0x1
        :pswitch_13bc
        :pswitch_137e
        :pswitch_1340
        :pswitch_1302
        :pswitch_12c4
        :pswitch_1286
    .end packed-switch

    :pswitch_data_1896
    .packed-switch -0x1
        :pswitch_1573
        :pswitch_1535
        :pswitch_14f7
        :pswitch_14b9
        :pswitch_147b
        :pswitch_143d
    .end packed-switch

    :pswitch_data_18a6
    .packed-switch -0x1
        :pswitch_172a
        :pswitch_16ec
        :pswitch_16ae
        :pswitch_1670
        :pswitch_1632
        :pswitch_15f4
    .end packed-switch
.end method

.method public static isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->isMdniePocSupported()Z

    move-result v0

    const-string/jumbo v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[stpoc] isMdniePocSupported : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .registers 3

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isPocDream1NA()Z

    move-result v0

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isPocDream2NA(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v1

    if-nez v0, :cond_b

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x1

    goto :goto_a
.end method

.method public static isPocDream1NA()Z
    .registers 4

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_POC_GRAY"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPocDream1NA : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v1, v0, 0x1

    return v1
.end method

.method public static isPocDream2NA(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z
    .registers 7

    const/4 v3, 0x0

    if-nez p0, :cond_d

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v4, "isPocDream2NA() : mdnie is null"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_d
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_DISABLE_POC_GRAY64"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isMdniePocSupported(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    const-string/jumbo v2, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPocDream2NA() - GRAY64 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " / bIsMdniePocSupported : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SecDisplayUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPocDream2NA() : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_64

    xor-int/lit8 v2, v0, 0x1

    :goto_54
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_63

    xor-int/lit8 v3, v0, 0x1

    :cond_63
    return v3

    :cond_64
    move v2, v3

    goto :goto_54
.end method

.method public static isSupportPocSettings(Landroid/content/Context;)Z
    .registers 7

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string/jumbo v4, "SEC_FLOATING_FEATURE_LCD_SUPPORT_POC_COMPENSATION"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "SecDisplayUtils"

    const-string/jumbo v4, "isSupportPocSettings false by feature"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_18
    const-string/jumbo v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/policy/SCPMHelper;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/policy/SCPMHelper;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "edge_color_balance"

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/policy/SCPMHelper;->isSupportedMenu(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v3, "SecDisplayUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportPocSettings SCPMHelper : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V
    .registers 7

    const/4 v5, 0x0

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] restoreDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "display_pref"

    invoke-virtual {p0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "isBackupBrightnessMode"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    const-string/jumbo v4, "SCREEN_BRIGHTNESS_MODE"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "isBackupBrightnessMode"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string/jumbo v2, "SecDisplayUtils"

    const-string/jumbo v3, "[stpoc] restoreDefaultScreenBrightnessMode"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    return-void
.end method

.method public static setPocUserIndexTemp(Landroid/content/Context;I)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_poc_index"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] setPocUserIndexTemp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static startReadPoc(Lcom/samsung/android/hardware/display/SemMdnieManager;I)V
    .registers 5

    const-string/jumbo v0, "SecDisplayUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] start read poc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setPocSetting(I)Z

    return-void
.end method

.method public static stopReadPoc(Lcom/samsung/android/hardware/display/SemMdnieManager;)V
    .registers 3

    const-string/jumbo v0, "SecDisplayUtils"

    const-string/jumbo v1, "[stpoc] stop read poc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setPocCancel()Z

    return-void
.end method
