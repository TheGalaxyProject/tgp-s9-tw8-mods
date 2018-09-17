.class public Lcom/samsung/android/sdk/handwriting/Recognizer;
.super Ljava/lang/Object;
.source "Recognizer.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mIsInitialized:Z

.field private static mIsSdkAvailable:Z

.field private static mIsSdlAvailable:Z

.field private static mLibraryAbi:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lcom/samsung/android/sdk/handwriting/Recognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    sput v1, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    sput-boolean v1, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsInitialized:Z

    sput-boolean v1, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    sput-boolean v1, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 14

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "java.library.path"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "/system/lib"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_56

    const/4 v8, 0x2

    sput v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    :goto_15
    const/4 v5, 0x0

    :try_start_16
    const-string/jumbo v8, "com.samsung.android.handwriting.SemRecognizer"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_1c} :catch_5b

    move-result-object v0

    if-nez v0, :cond_59

    :goto_1f
    if-nez v5, :cond_65

    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    :goto_23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    :try_start_27
    const-string/jumbo v8, "com.samsung.android.sdk.handwriting"

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    sget-object v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "APK Version = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    sput-boolean v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    sget v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    invoke-static {v8}, Lcom/samsung/android/sdk/handwriting/common/HwrConfig;->setLibraryAbi(I)V
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_53} :catch_8e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_53} :catch_9a

    :goto_53
    sput-boolean v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsInitialized:Z

    return-void

    :cond_56
    sput v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    goto :goto_15

    :cond_59
    const/4 v5, 0x1

    goto :goto_1f

    :catch_5b
    move-exception v2

    sget-object v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "No SDL apis"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_65
    sget v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->mLibraryAbi:I

    invoke-static {p0, v8}, Lcom/samsung/android/handwriting/SemRecognizer;->initialize(Landroid/content/Context;I)V

    invoke-static {}, Lcom/samsung/android/handwriting/SemRecognizer;->isHandwritingSupported()Z

    move-result v8

    sput-boolean v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    :try_start_70
    new-instance v4, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;

    const/4 v8, 0x1

    invoke-direct {v4, p0, v8}, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v4}, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;->dispose()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_79} :catch_7c

    :goto_79
    sput-boolean v12, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    goto :goto_23

    :catch_7c
    move-exception v3

    sget-object v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v10, "No framework authority"

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdlAvailable:Z

    goto :goto_79

    :catch_8e
    move-exception v1

    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    sget-object v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "No SDK apis"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    :catch_9a
    move-exception v3

    sget-object v8, Lcom/samsung/android/sdk/handwriting/Recognizer;->TAG:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v8

    sget-object v9, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v10, "No authority to handwriting provider"

    invoke-virtual {v8, v9, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    sput-boolean v11, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    goto :goto_53
.end method

.method public static isSDKAvailable()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/sdk/handwriting/Recognizer;->mIsSdkAvailable:Z

    return v0
.end method
