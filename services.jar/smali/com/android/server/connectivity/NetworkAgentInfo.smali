.class public Lcom/android/server/connectivity/NetworkAgentInfo;
.super Ljava/lang/Object;
.source "NetworkAgentInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/connectivity/NetworkAgentInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -android-net-NetworkRequest$TypeSwitchesValues:[I = null

.field private static final ADD:Z = true

.field public static final EVENT_NETWORK_LINGER_COMPLETE:I = 0x3e9

.field private static final MAXIMUM_NETWORK_SCORE:I = 0x64

.field private static final REMOVE:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final UNVALIDATED_SCORE_PENALTY:I = 0x28

.field private static final VDBG:Z


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public avoidUnvalidated:Z

.field public clatd:Lcom/android/server/connectivity/Nat464Xlat;

.field public created:Z

.field private currentScore:I

.field public defaultNetwork:Z

.field public everCaptivePortalDetected:Z

.field public everConnected:Z

.field public everValidated:Z

.field public knoxProfile:Z

.field public lastCaptivePortalDetected:Z

.field public lastValidated:Z

.field public linkProperties:Landroid/net/LinkProperties;

.field private final mConnService:Lcom/android/server/ConnectivityService;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLingerExpiryMs:J

.field private mLingerMessage:Lcom/android/internal/util/WakeupMessage;

.field private final mLingerTimerForRequest:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLingerTimers:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;",
            ">;"
        }
    .end annotation
.end field

.field private mLingering:Z

.field private final mNetworkRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mNumBackgroundNetworkRequests:I

.field private mNumRequestNetworkRequests:I

.field public final messenger:Landroid/os/Messenger;

.field public final network:Landroid/net/Network;

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public networkInfo:Landroid/net/NetworkInfo;

.field public final networkMisc:Landroid/net/NetworkMisc;

.field public final networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private static synthetic -getandroid-net-NetworkRequest$TypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->-android-net-NetworkRequest$TypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->-android-net-NetworkRequest$TypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/net/NetworkRequest$Type;->values()[Landroid/net/NetworkRequest$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/net/NetworkRequest$Type;->BACKGROUND_REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Landroid/net/NetworkRequest$Type;->LISTEN:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Landroid/net/NetworkRequest$Type;->REQUEST:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Landroid/net/NetworkRequest$Type;->TRACK_DEFAULT:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->-android-net-NetworkRequest$TypeSwitchesValues:[I

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catch_40
    move-exception v1

    goto :goto_32

    :catch_42
    move-exception v1

    goto :goto_29

    :catch_44
    move-exception v1

    goto :goto_20

    :catch_46
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;Landroid/net/Network;Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ILandroid/content/Context;Landroid/os/Handler;Landroid/net/NetworkMisc;Landroid/net/NetworkRequest;Lcom/android/server/ConnectivityService;)V
    .registers 15

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->messenger:Landroid/os/Messenger;

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    iput-object p6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iput p7, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    iput-object p12, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    iput-object p8, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    iput-object p9, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0, p8, p9, p0, p11}, Lcom/android/server/ConnectivityService;->createNetworkMonitor(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)Lcom/android/server/connectivity/NetworkMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor:Lcom/android/server/connectivity/NetworkMonitor;

    iput-object p10, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->knoxProfile:Z

    :goto_43
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->knoxProfile:Z

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->defaultNetwork:Z

    return-void

    :cond_48
    move v0, v1

    goto :goto_43
.end method

.method private getCurrentScore(Z)I
    .registers 4

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->defaultNetwork:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    if-nez v1, :cond_12

    if-eqz p1, :cond_15

    :cond_12
    const/16 v1, 0x64

    return v1

    :cond_15
    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez v1, :cond_29

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_29

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->ignoreWifiUnvalidationPenalty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_29

    add-int/lit8 v0, v0, -0x28

    :cond_29
    if-gez v0, :cond_2c

    const/4 v0, 0x0

    :cond_2c
    return v0
.end method

.method private ignoreWifiUnvalidationPenalty()Z
    .registers 5

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    :goto_11
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    invoke-virtual {v2}, Lcom/android/server/ConnectivityService;->avoidBadWifi()Z

    move-result v2

    if-nez v2, :cond_26

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->avoidUnvalidated:Z

    :goto_1b
    if-eqz v1, :cond_28

    xor-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    :goto_23
    return v2

    :cond_24
    const/4 v1, 0x0

    goto :goto_11

    :cond_26
    const/4 v0, 0x1

    goto :goto_1b

    :cond_28
    const/4 v2, 0x0

    goto :goto_23
.end method

.method private updateRequestCounts(ZLandroid/net/NetworkRequest;)V
    .registers 7

    if-eqz p1, :cond_2e

    const/4 v0, 0x1

    :goto_3
    invoke-static {}, Lcom/android/server/connectivity/NetworkAgentInfo;->-getandroid-net-NetworkRequest$TypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p2, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_42

    :pswitch_12
    sget-object v1, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/net/NetworkRequest;->type:Landroid/net/NetworkRequest$Type;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2d
    :pswitch_2d
    return-void

    :cond_2e
    const/4 v0, -0x1

    goto :goto_3

    :pswitch_30
    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    goto :goto_2d

    :pswitch_36
    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    goto :goto_2d

    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_36
        :pswitch_2d
        :pswitch_12
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method


# virtual methods
.method public addRequest(Landroid/net/NetworkRequest;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    if-ne v0, p1, :cond_f

    return v6

    :cond_f
    if-eqz v0, :cond_2e

    sget-object v1, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Duplicate requestId for %s and %s on %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    :cond_2e
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v7, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    return v7
.end method

.method public clearLingerState()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    :cond_c
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateLingerTimer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    return-void
.end method

.method public compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 4

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->compareTo(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v0

    return v0
.end method

.method public dumpLingerTimers(Ljava/io/PrintWriter;)V
    .registers 5

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public getCurrentScore()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public getCurrentScoreAsValidated()I
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore(Z)I

    move-result v0

    return v0
.end method

.method public getLingerExpiry()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    return-wide v0
.end method

.method public getNetworkState()Landroid/net/NetworkState;
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-object v5, v0, Landroid/net/NetworkMisc;->subscriberId:Ljava/lang/String;

    :goto_9
    new-instance v0, Landroid/net/NetworkState;

    new-instance v1, Landroid/net/NetworkInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v1, v2}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    new-instance v3, Landroid/net/NetworkCapabilities;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v3, v4}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2a

    monitor-exit p0

    return-object v0

    :cond_28
    const/4 v5, 0x0

    goto :goto_9

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isBackgroundNetwork()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isVPN()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->numForegroundNetworkRequests()I

    move-result v1

    if-nez v1, :cond_12

    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    if-lez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public isLingering()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    return v0
.end method

.method public isSatisfyingRequest(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isVPN()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method public linger()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    return-void
.end method

.method public lingerRequest(Landroid/net/NetworkRequest;JJ)V
    .registers 12

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_34

    sget-object v3, Lcom/android/server/connectivity/NetworkAgentInfo;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already lingered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    add-long v0, p2, p4

    new-instance v2, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;-><init>(Landroid/net/NetworkRequest;J)V

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v3, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v4, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public name()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkAgentInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    if-nez v0, :cond_45

    const-string/jumbo v0, "null"

    :goto_35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_45
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_35
.end method

.method public numBackgroundNetworkRequests()I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    return v0
.end method

.method public numForegroundNetworkRequests()I
    .registers 3

    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    iget v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumBackgroundNetworkRequests:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public numNetworkRequests()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public numRequestNetworkRequests()I
    .registers 2

    iget v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNumRequestNetworkRequests:I

    return v0
.end method

.method public removeRequest(I)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->updateRequestCounts(ZLandroid/net/NetworkRequest;)V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->isRequest()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->unlingerRequest(Landroid/net/NetworkRequest;)Z

    :cond_1d
    return-void
.end method

.method public requestAt(I)Landroid/net/NetworkRequest;
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mNetworkRequests:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkRequest;

    return-object v0
.end method

.method public satisfies(Landroid/net/NetworkRequest;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public satisfiesImmutableCapabilitiesOf(Landroid/net/NetworkRequest;)Z
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v0, :cond_d

    iget-object v0, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public setCurrentScore(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->currentScore:I

    return-void
.end method

.method public setToDefaultNetwork(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->defaultNetwork:Z

    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->defaultNetwork:Z

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NetworkAgentInfo{ ni{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "network{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  nethandle{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {v1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lp{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "nc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  Score{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "everValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  lastValidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "created{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} lingering{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkAgentInfo;->isLingering()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "explicitlySelected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "acceptUnvalidated{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "everCaptivePortalDetected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lastCaptivePortalDetected{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlinger()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingering:Z

    return-void
.end method

.method public unlingerRequest(Landroid/net/NetworkRequest;)Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v1, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimerForRequest:Landroid/util/SparseArray;

    iget v2, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x1

    return v1

    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public updateLingerTimer()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const-wide/16 v6, 0x0

    :goto_b
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    cmp-long v0, v6, v0

    if-nez v0, :cond_1d

    return-void

    :cond_12
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerTimers:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;

    iget-wide v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo$LingerTimer;->expiryMs:J

    goto :goto_b

    :cond_1d
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    iput-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    :cond_28
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-lez v0, :cond_5a

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mConnService:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mHandler:Landroid/os/Handler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NETWORK_LINGER_COMPLETE."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v4, v4, Landroid/net/Network;->netId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e9

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/ConnectivityService;->makeWakeupMessage(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/Object;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerMessage:Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    :cond_5a
    iput-wide v6, p0, Lcom/android/server/connectivity/NetworkAgentInfo;->mLingerExpiryMs:J

    return-void
.end method
