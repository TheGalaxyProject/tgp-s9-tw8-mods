.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
.super Ljava/lang/Object;
.source "HWRLanguagePack.java"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

.field private mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

.field private mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

.field private mIsPreload:Z

.field private mLanguage:Ljava/lang/String;

.field private mPrevState:I

.field private mProgress:I

.field private mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p2, :cond_12

    iget-object v0, p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    iget-object v0, p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    iget-object v0, p2, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    return-void

    :cond_12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mIsPreload:Z

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mIsPreload:Z

    return-void
.end method

.method private download()V
    .registers 3

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPrevState(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mRmLauncher:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->launchUpdateByIntent(Ljava/lang/String;)V

    goto :goto_c
.end method


# virtual methods
.method public download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V
    .registers 5

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "download: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", prevstate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->download()V

    return-void
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getPrevState()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    return v0
.end method

.method public isDownloadInProgress()Z
    .registers 3

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public isDownloaded()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public isInstallable()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method public isUpdateAvailable()Z
    .registers 3

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_6
.end method

.method public notifyDeleteResult(Z)V
    .registers 6

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyDeleteResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_27

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getPrevState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    :goto_22
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    if-nez v0, :cond_2b

    :goto_26
    return-void

    :cond_27
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    goto :goto_22

    :cond_2b
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mLanguage:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;->onComplete(ZLjava/lang/String;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDeleteListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRDeleteListener;

    goto :goto_26
.end method

.method public notifyUpdateResult(I)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyUpdateResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->getPrevState()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    :goto_23
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-nez v0, :cond_2f

    :goto_27
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-nez v0, :cond_37

    :goto_2b
    return-void

    :cond_2c
    iput v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    goto :goto_23

    :cond_2f
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onComplete(I)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    goto :goto_27

    :cond_37
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onComplete(I)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    goto :goto_2b
.end method

.method public setPreloaded(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mIsPreload:Z

    return-void
.end method

.method public setPrevState(I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mPrevState:I

    return-void
.end method

.method public setProgress(I)V
    .registers 4

    const/16 v1, 0x64

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mProgress:I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-nez v0, :cond_d

    :goto_8
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    if-nez v0, :cond_13

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onProgress(II)V

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;->onProgress(II)V

    goto :goto_c
.end method

.method public setState(I)V
    .registers 3

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->mProgress:I

    return-void
.end method
