.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
.super Ljava/lang/Object;
.source "NetworkAnalyticsDriver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static REATTEMPT_COMMAND_ACTIVATE:I = 0x0

.field private static REATTEMPT_COMMAND_DEACTIVATE:I = 0x0

.field private static REATTEMPT_COMMAND_FREQUENCY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:NetworkAnalyticsDriver"

.field private static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# instance fields
.field atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

.field private dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

.field private mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

.field private stateOfFileDescriptor:Z

.field private stateOfThread:Z

.field private syncObject:Ljava/lang/Object;

.field private test:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    return v0
.end method

.method static synthetic -get1()I
    .registers 1

    sget v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_DEACTIVATE:I

    return v0
.end method

.method static synthetic -get2()I
    .registers 1

    sget v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_FREQUENCY:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_ACTIVATE:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_DEACTIVATE:I

    const/4 v0, 0x5

    sput v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->REATTEMPT_COMMAND_FREQUENCY:I

    return-void
.end method

.method private constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->syncObject:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfThread:Z

    iput-boolean v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    const-string/jumbo v0, "{ \"src\":\"10.10.12.12\", \"dst\":\"66.7.251.20\", \"sport\":\"5000\", \"dport\":\"443\", \"uid\":\"10197\", \"pid\":\"666\", \"bsent\":\"1400\", \"brecv\":\"4500\", \"hostname\":\"www.space.com\", \"protocol\":\"tcp\", \"hash\":\"a0627953\" }"

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->test:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static getInstance(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
    .registers 3

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    :cond_b
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    return-object v0
.end method

.method private setStateOfCharDevice(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    return-void
.end method

.method private setStateOfThread(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private startReattemptThread(I)V
    .registers 3

    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$1;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public native activate()I
.end method

.method public beginDataRecording()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    if-eqz v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->activate()I

    move-result v0

    if-gez v0, :cond_16

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v2, "beginDataRecording: Activation ioctl failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    new-instance v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V

    iput-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    return-void
.end method

.method public checkDataCollectionState()V
    .registers 1

    return-void
.end method

.method public native closeDevice()I
.end method

.method public native deactivate()I
.end method

.method public endDataRecording()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->mConnectionManager:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getActiveProfilesNumber()I

    move-result v1

    if-lez v1, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->cancel(Z)Z

    iput-object v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataFetchThread:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->deactivate()I

    move-result v0

    if-gez v0, :cond_2b

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v2, "endDataRecording: Deactivation ioctl failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->closeDevice()I

    move-result v0

    if-gez v0, :cond_3b

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v2, "endDataRecording: closing of character device failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfCharDevice(Z)V

    return-void
.end method

.method public jniSendingData(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->accumulateData(Ljava/lang/String;)I

    return-void
.end method

.method public declared-synchronized openCharDevice()I
    .registers 4

    const/4 v2, 0x0

    monitor-enter p0

    const/4 v0, -0x1

    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->stateOfFileDescriptor:Z

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->openDevice()I

    move-result v0

    if-gez v0, :cond_1c

    const-string/jumbo v1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v2, "beginDataRecording: Opening of character device failed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_23

    const/16 v0, -0x13

    const/16 v1, -0x13

    monitor-exit p0

    return v1

    :cond_1c
    const/4 v1, 0x1

    :try_start_1d
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfCharDevice(Z)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_23

    :cond_20
    const/4 v0, 0x0

    monitor-exit p0

    return v2

    :catchall_23
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public native openDevice()I
.end method

.method public native readDevice()Ljava/lang/String;
.end method
