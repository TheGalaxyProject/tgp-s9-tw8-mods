.class public Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;
.super Ljava/lang/Object;
.source "HwrLanguagePack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;,
        Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$OnDownloadListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final HANDLE_DOWNLOAD_CANCEL:I

.field private mCurrentDownloadProgress:I

.field private mDeleteProgress:I

.field private mDownloadInProgress:Z

.field private mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

.field private mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

.field private mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

.field private mDownloadProgress:I

.field private mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

.field private mLanguagePacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHandler:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;

.field private mServiceId:I

.field private mTriggerLocation:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .registers 4

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;-><init>(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V

    if-nez p1, :cond_6

    :goto_5
    return-void

    :cond_6
    iget v0, p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    iget-object v0, p1, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    goto :goto_5
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    iput v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDeleteProgress:I

    iput v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    iput v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mTriggerLocation:I

    iput-boolean v3, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->HANDLE_DOWNLOAD_CANCEL:I

    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;-><init>(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$1;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mListenerHandler:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$ListenerHandler;

    iput-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadLanguageListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    return p1
.end method

.method static synthetic access$208(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I
    .registers 3

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mCurrentDownloadProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mServiceId:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZZII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotification(IZZII)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;IZI)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->createNotificationForNegative(IZI)V

    return-void
.end method

.method private createNotification(IZZII)V
    .registers 12

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->createNotification(IZZII)V
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->access$1600(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZZII)V

    return-void

    :cond_f
    return-void
.end method

.method private createNotificationForNegative(IZI)V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadNotification:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;

    # invokes: Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->createNotificationForNegative(IZI)V
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;->access$1700(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$DownloadNotification;IZI)V

    return-void

    :cond_a
    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public download()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z

    iput v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    iget v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadProgress:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadListener:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack$LanguagePackDownloadListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->download(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface$OnDownloadListener;)V

    return-void
.end method

.method public isDownloadInProgress()Z
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mDownloadInProgress:Z

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_14

    return v3

    :cond_13
    return v4

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;

    invoke-interface {v1}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguagePackInterface;->isDownloadInProgress()Z

    move-result v2

    if-eqz v2, :cond_c

    return v4
.end method

.method public setSpenLanguagePackManager(Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePack;->mLanguagePackManager:Lcom/samsung/android/sdk/handwriting/resources/HwrLanguagePackManager;

    return-void
.end method
