.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;
.super Landroid/app/Activity;
.source "ShareAccessibilityShareVia.java"


# static fields
.field private static final PACKAGE_QCONNECT:Ljava/lang/String;

.field private static final QCONNECT_SUPPORT_D2D:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_QUICKCONNECT_CONFIG_PACKAGE_NAME"

    const-string/jumbo v2, "com.samsung.android.oneconnect"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->PACKAGE_QCONNECT:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_QUICKCONNECT_SUPPORT_D2D"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->QCONNECT_SUPPORT_D2D:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ShareAccessibilityShareVia_Init()V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b006f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->cleanUpCacheFiles()V

    return-void
.end method

.method private cleanUpCacheFiles()V
    .registers 9

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getCacheDir()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getCacheDir()Ljava/io/File;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia$1;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    array-length v4, v2

    :goto_16
    if-ge v3, v4, :cond_4a

    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    const-string/jumbo v5, "ShareAccessibilityShareVia"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cleanUp "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_4a
    return-void
.end method

.method private getCopiedFileUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 16

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v4

    if-nez v4, :cond_27

    const-string/jumbo v4, "ShareAccessibilityShareVia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "src "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_27
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_34
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_58

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_58

    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4c} :catch_4c

    :catch_4c
    move-exception v7

    const-string/jumbo v4, "ShareAccessibilityShareVia"

    const-string/jumbo v5, "copy"

    invoke-static {v4, v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    return-object v4

    :cond_58
    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_5b
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    :cond_73
    sub-long v4, v8, v2

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_78} :catch_c5
    .catchall {:try_start_5b .. :try_end_78} :catchall_ef

    move-result-wide v4

    add-long/2addr v2, v4

    cmp-long v4, v2, v8

    if-ltz v4, :cond_73

    if-eqz v0, :cond_83

    :try_start_80
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_b9
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_8d

    :cond_83
    move-object v5, v12

    :goto_84
    if-eqz v1, :cond_89

    :try_start_86
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_bb
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8d

    :cond_89
    move-object v4, v5

    :cond_8a
    :goto_8a
    if-eqz v4, :cond_97

    :try_start_8c
    throw v4
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8d} :catch_8d

    :catch_8d
    move-exception v7

    const-string/jumbo v4, "ShareAccessibilityShareVia"

    const-string/jumbo v5, "copy"

    invoke-static {v4, v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_97
    const-string/jumbo v4, "com.android.settings.files"

    invoke-static {p0, v4, v6}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    const-string/jumbo v4, "ShareAccessibilityShareVia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "uri "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :catch_b9
    move-exception v5

    goto :goto_84

    :catch_bb
    move-exception v4

    if-eqz v5, :cond_8a

    if-eq v5, v4, :cond_89

    :try_start_c0
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_8d

    move-object v4, v5

    goto :goto_8a

    :catch_c5
    move-exception v4

    :try_start_c6
    throw v4
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c7

    :catchall_c7
    move-exception v5

    move-object v13, v5

    move-object v5, v4

    move-object v4, v13

    :goto_cb
    if-eqz v0, :cond_d0

    :try_start_cd
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d0
    .catch Ljava/lang/Throwable; {:try_start_cd .. :try_end_d0} :catch_da
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_8d

    :cond_d0
    move-object v12, v5

    :cond_d1
    :goto_d1
    if-eqz v1, :cond_d6

    :try_start_d3
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_d6} :catch_e4
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_8d

    :cond_d6
    move-object v5, v12

    :cond_d7
    :goto_d7
    if-eqz v5, :cond_ee

    :try_start_d9
    throw v5

    :catch_da
    move-exception v12

    if-eqz v5, :cond_d1

    if-eq v5, v12, :cond_d0

    invoke-virtual {v5, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v12, v5

    goto :goto_d1

    :catch_e4
    move-exception v5

    if-eqz v12, :cond_d7

    if-eq v12, v5, :cond_d6

    invoke-virtual {v12, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v5, v12

    goto :goto_d7

    :cond_ee
    throw v4
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_ef} :catch_8d

    :catchall_ef
    move-exception v4

    move-object v5, v12

    goto :goto_cb
.end method

.method private isSystemPreloadedQuickConnect()Z
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->PACKAGE_QCONNECT:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_47

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_1c

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-lez v3, :cond_47

    :cond_1c
    :goto_1c
    const-string/jumbo v3, "ShareAccessibilityShareVia"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSystemPreloadedQuickConnect(): flag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", feature = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->QCONNECT_SUPPORT_D2D:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_46
    :goto_46
    return v2

    :cond_47
    sget-boolean v3, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->QCONNECT_SUPPORT_D2D:Z
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_49} :catch_4c

    if-eqz v3, :cond_46

    goto :goto_1c

    :catch_4c
    move-exception v1

    goto :goto_46
.end method

.method private showContent(I)V
    .registers 8

    const/4 v5, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string/jumbo v3, "ShareAccessibilityShareVia"

    const-string/jumbo v4, "showContent : pin lock enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1c
    packed-switch p1, :pswitch_data_76

    :goto_1f
    return-void

    :pswitch_20
    const-string/jumbo v3, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "FOLDERPATH"

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->ACC_SETTING_FILE_MOST_INTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "CONTENT_TYPE"

    const-string/jumbo v4, "application/x-sasf"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "JUST_SELECT_MODE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x2

    :try_start_3e
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_1f

    :catch_42
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1f

    :pswitch_47
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "/Accessibility"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.app.myfiles.PICK_DATA_MULTIPLE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "FOLDERPATH"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "CONTENT_TYPE"

    const-string/jumbo v4, "application/x-sasf"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "JUST_SELECT_MODE"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x2

    :try_start_6c
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_6f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6c .. :try_end_6f} :catch_70

    goto :goto_1f

    :catch_70
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1f

    nop

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_20
        :pswitch_47
    .end packed-switch
.end method

.method private show_share_via_multi_files([Ljava/lang/String;)V
    .registers 12

    const/4 v9, 0x1

    const-string/jumbo v6, "ShareAccessibilityShareVia"

    const-string/jumbo v7, "show_share_via_multi_files is entered"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_10
    array-length v6, p1

    if-ge v2, v6, :cond_51

    aget-object v6, p1, v2

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getCopiedFileUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_26

    new-instance v6, Ljava/io/File;

    aget-object v7, p1, v2

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    :cond_26
    const-string/jumbo v6, "ShareAccessibilityShareVia"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Uri "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_51
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.extra.STREAM"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->isSystemPreloadedQuickConnect()Z

    move-result v6

    if-eqz v6, :cond_6e

    const-string/jumbo v6, "more_actions_quick_connect"

    invoke-virtual {v4, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_6e
    const-string/jumbo v6, "application/x-sasf"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v6, 0x7f1218fd

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    :try_start_82
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivity(Landroid/content/Intent;)V
    :try_end_85
    .catch Landroid/content/ActivityNotFoundException; {:try_start_82 .. :try_end_85} :catch_86

    :goto_85
    return-void

    :catch_86
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_85
.end method

.method private show_share_via_single_file(Ljava/lang/String;)V
    .registers 10

    const/4 v7, 0x1

    const-string/jumbo v4, "ShareAccessibilityShareVia"

    const-string/jumbo v5, "show_share_via_single_file is entered"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getCopiedFileUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1a

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    :cond_1a
    const-string/jumbo v4, "ShareAccessibilityShareVia"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->isSystemPreloadedQuickConnect()Z

    move-result v4

    if-eqz v4, :cond_51

    const-string/jumbo v4, "more_actions_quick_connect"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_51
    const-string/jumbo v4, "application/x-sasf"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v4, 0x7f1218fd

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    :try_start_65
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->startActivity(Landroid/content/Intent;)V
    :try_end_68
    .catch Landroid/content/ActivityNotFoundException; {:try_start_65 .. :try_end_68} :catch_69

    :goto_68
    return-void

    :catch_69
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_68
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resultCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_a4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_a4

    const/4 v0, 0x0

    const-string/jumbo v2, "FILE"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    array-length v2, v0

    if-le v2, v6, :cond_75

    const/4 v1, 0x0

    :goto_4c
    array-length v2, v0

    if-ge v1, v2, :cond_6e

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult length is 1 more, PICK_MULTI_FILE path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_6e
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->show_share_via_multi_files([Ljava/lang/String;)V

    :cond_71
    :goto_71
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    return-void

    :cond_75
    array-length v2, v0

    if-ne v2, v6, :cond_9a

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityResult length is 1, PICK_MULTI_FILE path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v2, v0, v5

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->show_share_via_single_file(Ljava/lang/String;)V

    goto :goto_71

    :cond_9a
    const-string/jumbo v2, "ShareAccessibilityShareVia"

    const-string/jumbo v3, "PICK_MULTI_FILE : not selected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    :cond_a4
    const-string/jumbo v2, "ShareAccessibilityShareVia"

    const-string/jumbo v3, "data is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->ShareAccessibilityShareVia_Init()V

    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1d

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    const-string/jumbo v3, "It is not possible to get Action"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "Item"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->showContent(I)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3c} :catch_3d

    goto :goto_1c

    :catch_3d
    move-exception v0

    const-string/jumbo v2, "ShareAccessibilityShareVia"

    const-string/jumbo v3, "It is not possible to get selected item from Intent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    goto :goto_1c
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    :goto_7
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilityShareVia;->finish()V

    goto :goto_7

    :pswitch_data_10
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
