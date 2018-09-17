.class final Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;
.super Landroid/os/Handler;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SluggishDetectorHandler"
.end annotation


# static fields
.field private static final ENABLE_DELAY_AFTER_BOOT:J = 0x1b7740L

.field private static ENABLE_HANDLER:Z = false

.field private static final MSG_ENABLE_HANDLER:I = 0x1

.field private static final MSG_REPORT_LAUNCH:I = 0xc

.field private static final MSG_SEND_TO_HQM:I = 0x2

.field private static final MSG_SET_COLLECT_FLAG_FOR_PERIODIC_MEMORY:I = 0x65

.field private static final MSG_SET_LAUNCH:I = 0xb

.field private static final MSG_SET_REPORT_FLAG_FOR_PERIODIC_LAUNCH:I = 0x3e9

.field private static final MSG_SET_REPORT_FLAG_FOR_PERIODIC_MEMORY:I = 0x3ea

.field private static final TAG:Ljava/lang/String;

.field private static sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

.field private static sHandlerThread:Lcom/android/server/ServiceThread;


# instance fields
.field private mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;


# direct methods
.method static synthetic -wrap0()V
    .registers 0

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    return-void
.end method

.method static synthetic -wrap1(ILjava/lang/Object;J)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendDataToHandlerWithDelay(ILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic -wrap2(ILjava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap3(IJ)V
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->TAG:Ljava/lang/String;

    sput-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    sput-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    return-void
.end method

.method private static check()Z
    .registers 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private static init()V
    .registers 4

    sget-boolean v0, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/android/server/ServiceThread;

    const-class v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    sget-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->-wrap4()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap5()V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setEnableWithDelay()V

    :cond_2f
    return-void
.end method

.method private reportLaunch(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {p1, v0}, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;->-wrap2(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method private static sendDataToHandler(ILjava/lang/Object;)V
    .registers 5

    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v2, :cond_21

    sget-boolean v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    if-nez v2, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_15
    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    :cond_21
    return-void
.end method

.method private static sendDataToHandlerWithDelay(ILjava/lang/Object;J)V
    .registers 8

    sget-boolean v2, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v2, :cond_1c

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_10
    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v2, v0, p2, p3}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v1

    :cond_1c
    return-void
.end method

.method private static sendMessageToHandlerDelayed(IJ)V
    .registers 6

    sget-boolean v1, Lcom/android/server/am/SluggishDetector;->ENABLE:Z

    if-eqz v1, :cond_13

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->check()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->init()V

    :cond_d
    sget-object v1, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sHandler:Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    :cond_13
    return-void
.end method

.method private sendToHqm(Lcom/android/server/am/SluggishDetector$DetectInfo;)V
    .registers 2

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$DetectInfo;->-wrap0(Lcom/android/server/am/SluggishDetector$DetectInfo;)V

    return-void
.end method

.method private setCollectFlagForPeriodicMemory()V
    .registers 2

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap4()V

    return-void
.end method

.method private static setEnable()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->ENABLE_HANDLER:Z

    return-void
.end method

.method private static setEnableWithDelay()V
    .registers 4

    const/4 v0, 0x1

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v2, v3}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V

    return-void
.end method

.method private setLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->mCurSetLaunchInfo:Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-static {p1}, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;->-wrap0(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method private setReportFlagForPeriodicLaunch()V
    .registers 2

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicLaunchReport;->-wrap5()V

    return-void
.end method

.method private setReportFlagForPeriodicMemory()V
    .registers 2

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/am/SluggishDetector$PeriodicMemoryReport;->-wrap6()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_52

    :cond_8
    :goto_8
    return-void

    :sswitch_9
    invoke-static {}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setEnable()V

    goto :goto_8

    :catch_d
    move-exception v0

    goto :goto_8

    :sswitch_f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    if-eqz v1, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/SluggishDetector$DetectInfo;

    invoke-direct {p0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->sendToHqm(Lcom/android/server/am/SluggishDetector$DetectInfo;)V

    goto :goto_8

    :sswitch_21
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    if-eqz v1, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/SluggishDetector$SetLaunchInfo;

    invoke-direct {p0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setLaunch(Lcom/android/server/am/SluggishDetector$SetLaunchInfo;)V

    goto :goto_8

    :sswitch_33
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    if-eqz v1, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;

    invoke-direct {p0, v1}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->reportLaunch(Lcom/android/server/am/SluggishDetector$ReportLaunchInfo;)V

    goto :goto_8

    :sswitch_45
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setCollectFlagForPeriodicMemory()V

    goto :goto_8

    :sswitch_49
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setReportFlagForPeriodicLaunch()V

    goto :goto_8

    :sswitch_4d
    invoke-direct {p0}, Lcom/android/server/am/SluggishDetector$SluggishDetectorHandler;->setReportFlagForPeriodicMemory()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_50} :catch_d

    goto :goto_8

    nop

    :sswitch_data_52
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_f
        0xb -> :sswitch_21
        0xc -> :sswitch_33
        0x65 -> :sswitch_45
        0x3e9 -> :sswitch_49
        0x3ea -> :sswitch_4d
    .end sparse-switch
.end method
