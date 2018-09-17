.class public Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;
.super Ljava/lang/Object;
.source "BNRTask.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient;


# static fields
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
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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


# virtual methods
.method public backup(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .registers 13

    const/4 v8, 0x1

    const-string/jumbo v4, "Accessibility_BNRTask"

    const-string/jumbo v5, "backup "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/Settingsofaccessibility.sasf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_30

    :try_start_2d
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_6b

    :cond_30
    :goto_30
    sput v8, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->settingValue:Ljava/util/HashMap;

    if-eqz v4, :cond_3b

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->settingValue:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    :cond_3b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValue(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->settingValue:Ljava/util/HashMap;

    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->settingValue:Ljava/util/HashMap;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_4b
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_54} :catch_76
    .catchall {:try_start_4b .. :try_end_54} :catchall_88

    :try_start_54
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    new-instance v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask$1;

    invoke-direct {v5, p0, p3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask$1;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v4, v6, v7, v2, v5}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/lang/String;JLjava/io/FileOutputStream;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_64} :catch_90
    .catchall {:try_start_54 .. :try_end_64} :catchall_8d

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->close(Ljava/io/OutputStream;)V

    invoke-interface {p3, v8}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    return-void

    :catch_6b
    move-exception v0

    const-string/jumbo v4, "Accessibility_BNRTask"

    const-string/jumbo v5, "IOException: exception in createNewFile() method"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :catch_76
    move-exception v0

    :goto_77
    :try_start_77
    const-string/jumbo v4, "Accessibility_BNRTask"

    const-string/jumbo v5, "err"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    invoke-interface {p3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_88

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->close(Ljava/io/OutputStream;)V

    return-void

    :catchall_88
    move-exception v4

    :goto_89
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->close(Ljava/io/OutputStream;)V

    throw v4

    :catchall_8d
    move-exception v4

    move-object v1, v2

    goto :goto_89

    :catch_90
    move-exception v0

    move-object v1, v2

    goto :goto_77
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120262

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1211bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnableBackup(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public isSupportBackup(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public restore(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V
    .registers 12

    const-string/jumbo v4, "Accessibility_BNRTask"

    const-string/jumbo v5, "backup "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/restored.sasf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2f

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2f
    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_38
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask$2;

    invoke-direct {v7, p0, p3}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask$2;-><init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;)V

    invoke-static {v2, v4, v5, v6, v7}, Lcom/samsung/android/scloud/oem/lib/FileTool;->writeToFile(Ljava/io/InputStream;JLjava/lang/String;Lcom/samsung/android/scloud/oem/lib/FileTool$PDMProgressListener;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_48} :catch_73
    .catchall {:try_start_38 .. :try_end_48} :catchall_7c

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->close(Ljava/io/InputStream;)V

    const/4 v4, 0x1

    invoke-interface {p3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V

    :try_start_4f
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->LoadValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/HashMap;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->revSettingValues:Ljava/util/HashMap;
    :try_end_5a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4f .. :try_end_5a} :catch_81

    :goto_5a
    sget-object v4, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->revSettingValues:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "{}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    const-string/jumbo v4, "Accessibility_BNRTask"

    const-string/jumbo v5, "RevSettingValues is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_72
    return-void

    :catch_73
    move-exception v0

    const/4 v4, 0x0

    :try_start_75
    invoke-interface {p3, v4}, Lcom/samsung/android/scloud/oem/lib/qbnr/ISCloudQBNRClient$QuickBackupListener;->complete(Z)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7c

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->close(Ljava/io/InputStream;)V

    return-void

    :catchall_7c
    move-exception v4

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->close(Ljava/io/InputStream;)V

    throw v4

    :catch_81
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_5a

    :cond_86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/accessibility/sharedaccessibility/scloud/BNRTask;->revSettingValues:Ljava/util/HashMap;

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->applySettings(Landroid/content/Context;Ljava/util/HashMap;)V

    goto :goto_72
.end method
