.class public Lcom/android/server/am/SluggishInfo;
.super Ljava/lang/Object;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;,
        Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;
    }
.end annotation


# static fields
.field private static ALWAYS:Z = false

.field private static CurrentLocale:Ljava/util/Locale; = null

.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static DEBUG:Z = false

.field private static final DEFAULT_COMPONENT_NAME:Ljava/lang/String;

.field private static final DEFAULT_MAXIMUM_LOG_COUNT:I = 0x3e8

.field private static DateFormat:Ljava/text/SimpleDateFormat; = null

.field public static ENABLE:Z = false

.field private static FLAG_DHA:Z = false

.field private static FLAG_MEMINFO:Z = false

.field private static FLAG_VMSTAT:Z = false

.field private static LaunchingComponentName:Ljava/lang/String; = null

.field private static volatile LogList:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MAXIMUM_LOG_COUNT:I = 0x0

.field private static final MSG_ADD_CHANGE_ACTIVITY_LOG:I = 0x3

.field private static final MSG_ADD_END_LAUNCHING_LOG:I = 0x2

.field private static final MSG_ADD_START_LAUNCHING_LOG:I = 0x1

.field private static final SecProductFeature:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TINYM_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.tinym"

.field private static final TypeDHA:[Ljava/lang/String;

.field private static final TypeMeminfo:[Ljava/lang/String;

.field private static final TypeSimpleDHA:[Ljava/lang/String;

.field private static final TypeVmstat:[Ljava/lang/String;

.field private static final UNKNOWN:I = -0x1

.field private static volatile instance:Lcom/android/server/am/SluggishInfo;

.field private static numCached:I

.field private static numCachedHiddenProcs:I

.field private static numEmpty:I

.field private static numNonCachedProcs:I


# instance fields
.field private mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

.field private mHandlerThread:Lcom/android/server/ServiceThread;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/server/am/SluggishInfo;
    .registers 1

    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    return-object v0
.end method

.method static synthetic -wrap0()[I
    .registers 1

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentSimpleDHAStat()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()[J
    .registers 1

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentMeminfo()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->addInnerChangeActivityLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->addInnerEndLaunchingLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->addInnerStartLaunchingLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/android/server/am/SluggishInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_AAAA"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    sput-boolean v3, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    sput-boolean v3, Lcom/android/server/am/SluggishInfo;->ALWAYS:Z

    sput-object v6, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    sput-object v6, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    sput-object v6, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    sput-boolean v4, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    sput-boolean v4, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    sput-boolean v4, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    sget-object v0, Lcom/android/server/am/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    sput-object v6, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "MemFree"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Cached"

    aput-object v1, v0, v4

    const-string/jumbo v1, "SwapFree"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    sput v2, Lcom/android/server/am/SluggishInfo;->numCached:I

    sput v2, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    sput v2, Lcom/android/server/am/SluggishInfo;->numCachedHiddenProcs:I

    sput v2, Lcom/android/server/am/SluggishInfo;->numNonCachedProcs:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "numCached"

    aput-object v1, v0, v3

    const-string/jumbo v1, "numEmpty"

    aput-object v1, v0, v4

    const-string/jumbo v1, "numCachedHiddenProcs"

    aput-object v1, v0, v5

    const-string/jumbo v1, "numNonCachedProcs"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeDHA:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "numCached"

    aput-object v1, v0, v3

    const-string/jumbo v1, "numEmpty"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeSimpleDHA:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pgpgin"

    aput-object v1, v0, v3

    const-string/jumbo v1, "pgmajfault"

    aput-object v1, v0, v4

    const-string/jumbo v1, "pgsteal_kswapd_dma"

    aput-object v1, v0, v5

    const-string/jumbo v1, "pgsteal_kswapd_normal"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "pgsteal_kswapd_movable"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "pgsteal_direct_dma"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "pgsteal_direct_normal"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "pgsteal_direct_movable"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "allocstall"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "compact_stall"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

    return-void
.end method

.method private static Clear()V
    .registers 2

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Clear()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->initLogList()V

    :cond_13
    sget-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method private static Clear(Ljava/io/PrintWriter;)V
    .registers 2

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->Clear()V

    const-string/jumbo v0, "CLEAR SLUGGISH INFO LOG"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static addChangeActivityLog(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method static addEndLaunchLog(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private static declared-synchronized addInnerChangeActivityLog(Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/android/server/am/SluggishInfo;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->ENABLE:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7e

    if-eqz v0, :cond_9

    if-nez p0, :cond_b

    :cond_9
    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->ALWAYS:Z

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/server/am/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addInnerChangeActivityLog() - LaunchingComponentName == componentName ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "), return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_7e

    :cond_3b
    monitor-exit v1

    return-void

    :cond_3d
    :try_start_3d
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_addInnerChangeActivityLog()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[C] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->addLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_7c

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7c
    .catchall {:try_start_3d .. :try_end_7c} :catchall_7e

    :cond_7c
    monitor-exit v1

    return-void

    :catchall_7e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized addInnerEndLaunchingLog(Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/android/server/am/SluggishInfo;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->ENABLE:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_50

    if-eqz v0, :cond_9

    if-nez p0, :cond_b

    :cond_9
    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    sget-object v0, Lcom/android/server/am/SluggishInfo;->DEFAULT_COMPONENT_NAME:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_addInnerEndLaunchingLog()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[E] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->addLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_4e

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4e
    .catchall {:try_start_b .. :try_end_4e} :catchall_50

    :cond_4e
    monitor-exit v1

    return-void

    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized addInnerStartLaunchingLog(Ljava/lang/String;)V
    .registers 5

    const-class v1, Lcom/android/server/am/SluggishInfo;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->ENABLE:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4e

    if-eqz v0, :cond_9

    if-nez p0, :cond_b

    :cond_9
    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    sput-object p0, Lcom/android/server/am/SluggishInfo;->LaunchingComponentName:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_addInnerStartLaunchingLog()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[S] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->addLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_4c

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4c
    .catchall {:try_start_b .. :try_end_4c} :catchall_4e

    :cond_4c
    monitor-exit v1

    return-void

    :catchall_4e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized addLog(Ljava/lang/String;)V
    .registers 11

    const-class v5, Lcom/android/server/am/SluggishInfo;

    monitor-enter v5

    :try_start_3
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->ENABLE:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_105

    if-eqz v4, :cond_9

    if-nez p0, :cond_b

    :cond_9
    monitor-exit v5

    return-void

    :cond_b
    const/4 v4, 0x4

    :try_start_c
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "com.sec.android.app.tinym"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_25

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "addLog() - current log is tinym, return"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_25} :catch_27
    .catchall {:try_start_c .. :try_end_25} :catchall_105

    :cond_25
    monitor-exit v5

    return-void

    :catch_27
    move-exception v2

    :cond_28
    :try_start_28
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_60

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "addLog() - log : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "_addLog()"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_60
    .catchall {:try_start_28 .. :try_end_60} :catchall_105

    :cond_60
    :try_start_60
    sget-object v4, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v4, :cond_67

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->initLogList()V

    :cond_67
    sget-object v4, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    sget v6, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    if-ne v4, v6, :cond_76

    sget-object v4, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_76
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v4, :cond_8a

    if-eqz v3, :cond_8d

    sget-object v4, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_8d

    :cond_8a
    invoke-static {v3}, Lcom/android/server/am/SluggishInfo;->initDateFormat(Ljava/util/Locale;)V

    :cond_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentStat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v4, :cond_e3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d3
    sget-object v4, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_d8} :catch_f8
    .catchall {:try_start_60 .. :try_end_d8} :catchall_105

    :goto_d8
    :try_start_d8
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_e1

    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_e1
    .catchall {:try_start_d8 .. :try_end_e1} :catchall_105

    :cond_e1
    monitor-exit v5

    return-void

    :cond_e3
    :try_start_e3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "00-00 00:00:00.000 "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_f6} :catch_f8
    .catchall {:try_start_e3 .. :try_end_f6} :catchall_105

    move-result-object v0

    goto :goto_d3

    :catch_f8
    move-exception v1

    :try_start_f9
    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "addLog() - ERROR"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_104
    .catchall {:try_start_f9 .. :try_end_104} :catchall_105

    goto :goto_d8

    :catchall_105
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method static addStartLaunchLog(Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method private static convertIntArrToString([I)Ljava/lang/String;
    .registers 9

    const-wide/16 v6, 0x40

    if-nez p0, :cond_8

    const-string/jumbo v2, ""

    return-object v2

    :cond_8
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_convertIntArrToString()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    array-length v3, p0

    :goto_2c
    if-ge v2, v3, :cond_3c

    aget v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_3c
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_43

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static convertLongArrToString([J)Ljava/lang/String;
    .registers 9

    const-wide/16 v6, 0x40

    if-nez p0, :cond_8

    const-string/jumbo v1, ""

    return-object v1

    :cond_8
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_25

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_convertIntArrToString()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v7, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    array-length v4, p0

    :goto_2c
    if-ge v1, v4, :cond_3c

    aget-wide v2, p0, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_3c
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_43

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static dump(Ljava/io/PrintWriter;)V
    .registers 1

    return-void
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private static getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const-wide/16 v6, 0x40

    const/4 v4, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return-object v4

    :cond_8
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_25

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_getCommonLines()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_25
    array-length v0, p0

    array-length v4, p0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_2a
    array-length v4, p1

    if-ge v2, v4, :cond_50

    if-lez v0, :cond_50

    const/4 v3, 0x0

    :goto_30
    array-length v4, p0

    if-ge v3, v4, :cond_4d

    if-lez v0, :cond_4d

    aget-object v4, v1, v3

    if-eqz v4, :cond_3c

    :cond_39
    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :cond_3c
    aget-object v4, p1, v2

    aget-object v5, p0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    aget-object v4, p1, v2

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_39

    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_50
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_57

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_57
    return-object v1
.end method

.method private static getCurrentDHAStat()[I
    .registers 6

    const-wide/16 v4, 0x40

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_getCurrentDHAStat()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1f
    const/4 v1, 0x4

    new-array v0, v1, [I

    sget v1, Lcom/android/server/am/SluggishInfo;->numCached:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/server/am/SluggishInfo;->numCachedHiddenProcs:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/server/am/SluggishInfo;->numNonCachedProcs:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_3d

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3d
    return-object v0
.end method

.method private static getCurrentMeminfo()[J
    .registers 12

    const-wide/16 v10, 0x40

    const-wide/16 v8, -0x1

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_getCurrentMeminfo()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_21
    sget-object v5, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/am/SluggishInfo;->getUnknownValueArray([Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_95

    const-string/jumbo v5, "/proc/meminfo"

    invoke-static {v5}, Lcom/android/server/am/SluggishInfo;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_95

    sget-object v5, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/server/am/SluggishInfo;->getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_95

    const/4 v4, 0x0

    :goto_3b
    array-length v5, v0

    if-ge v4, v5, :cond_95

    :try_start_3e
    aget-object v5, v0, v4

    if-eqz v5, :cond_7f

    aget-object v5, v0, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    aget-object v5, v0, v4

    const-string/jumbo v6, "kB"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v1, v4
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_7f} :catch_91
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_7f} :catch_82

    :cond_7f
    :goto_7f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :catch_82
    move-exception v2

    sget-object v5, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getCurrentMeminfo() - ERROR"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    aput-wide v8, v1, v4

    goto :goto_7f

    :catch_91
    move-exception v3

    aput-wide v8, v1, v4

    goto :goto_7f

    :cond_95
    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_9c

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_9c
    return-object v1
.end method

.method private static getCurrentSimpleDHAStat()[I
    .registers 6

    const-wide/16 v4, 0x40

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_getCurrentSimpleDHAStat()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1f
    const/4 v1, 0x2

    new-array v0, v1, [I

    sget v1, Lcom/android/server/am/SluggishInfo;->numCached:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_33

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_33
    return-object v0
.end method

.method static getCurrentSimpleSluggishInfo()Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;
    .registers 6

    const-wide/16 v4, 0x40

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_e

    sget-object v1, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getCurrentSimpleSluggishInfo()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_getCurrentSimpleSluggishInfo()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2b
    new-instance v0, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;

    invoke-direct {v0}, Lcom/android/server/am/SluggishInfo$SimpleSluggishInfo;-><init>()V

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_37

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_37
    return-object v0
.end method

.method private static getCurrentStat()Ljava/lang/String;
    .registers 18

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_17

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :cond_17
    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    if-eqz v14, :cond_51

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_23

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    :cond_23
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentMeminfo()[J

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/SluggishInfo;->convertLongArrToString([J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_51

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v14, v6, v12

    long-to-double v14, v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v8, v14, v16

    const-string/jumbo v14, "(meminfo_Took: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ms) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    if-eqz v14, :cond_8b

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_5d

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    :cond_5d
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentDHAStat()[I

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SluggishInfo;->convertIntArrToString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_8b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v14, v6, v12

    long-to-double v14, v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v8, v14, v16

    const-string/jumbo v14, "(dha_Took: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ms) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8b
    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    if-eqz v14, :cond_c5

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_97

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    :cond_97
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentVmstat()[J

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/SluggishInfo;->convertLongArrToString([J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_c5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v14, v6, v12

    long-to-double v14, v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v8, v14, v16

    const-string/jumbo v14, "(vmstat_Took: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ms) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c5
    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_fb

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v14, v0, v2

    long-to-double v14, v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v8, v14, v16

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "(total_Took: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ms)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_fb
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

.method private static getCurrentVmstat()[J
    .registers 12

    const-wide/16 v10, 0x40

    const-wide/16 v8, -0x1

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_21

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_getCurrentVmstat()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_21
    sget-object v5, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v5}, Lcom/android/server/am/SluggishInfo;->getUnknownValueArray([Ljava/lang/String;)[J

    move-result-object v1

    if-eqz v1, :cond_73

    const-string/jumbo v5, "/proc/vmstat"

    invoke-static {v5}, Lcom/android/server/am/SluggishInfo;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    sget-object v5, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/server/am/SluggishInfo;->getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    const/4 v4, 0x0

    :goto_3b
    array-length v5, v0

    if-ge v4, v5, :cond_73

    :try_start_3e
    aget-object v5, v0, v4

    if-eqz v5, :cond_5d

    aget-object v5, v0, v4

    sget-object v6, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    aget-object v6, v6, v4

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v1, v4
    :try_end_5d
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_5d} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5d} :catch_60

    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3b

    :catch_60
    move-exception v2

    sget-object v5, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getCurrentVmstat() - ERROR"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    aput-wide v8, v1, v4

    goto :goto_5d

    :catch_6f
    move-exception v3

    aput-wide v8, v1, v4

    goto :goto_5d

    :cond_73
    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_7a

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_7a
    return-object v1
.end method

.method private static getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;
    .registers 13

    const-wide/16 v10, 0x40

    const/4 v8, 0x0

    if-nez p0, :cond_6

    return-object v8

    :cond_6
    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_getLinesFromFile()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_23
    :try_start_23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_28
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_31} :catch_32
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_5c

    goto :goto_28

    :catch_32
    move-exception v1

    sget-object v5, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getLinesFromBufferedReader() - ERROR readLine "

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_3e
    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_45

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_45
    return-object v8

    :cond_46
    :try_start_46
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_5b

    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_5b} :catch_32
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5b} :catch_5c

    :cond_5b
    return-object v4

    :catch_5c
    move-exception v2

    sget-object v5, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "getLinesFromBufferedReader() - ERROR"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method

.method private static getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .registers 13

    const-wide/16 v10, 0x40

    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v6, :cond_1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_getLinesFromFile()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1f
    :try_start_1f
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/android/server/am/SluggishInfo;->getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v6, :cond_3c

    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_3c} :catch_70
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_3c} :catch_52
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3c} :catch_3d

    :cond_3c
    return-object v0

    :catch_3d
    move-exception v4

    sget-object v6, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "getLinesFromFile() - ERROR"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_49
    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v6, :cond_50

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_50
    const/4 v6, 0x0

    return-object v6

    :catch_52
    move-exception v3

    sget-object v6, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLinesFromFile() - ERROR IOException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    :catch_70
    move-exception v2

    sget-object v6, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getLinesFromFile() - ERROR FileNotFoundException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_49
.end method

.method private static getTypeString([Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_6

    const-string/jumbo v2, "null"

    return-object v2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    array-length v3, p0

    :goto_d
    if-ge v2, v3, :cond_1d

    aget-object v1, p0, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getUnknownValueArray([Ljava/lang/String;)[J
    .registers 7

    const-wide/16 v4, 0x40

    const/4 v2, 0x0

    if-nez p0, :cond_6

    return-object v2

    :cond_6
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_getUnknownValueArray()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_23
    array-length v2, p0

    new-array v0, v2, [J

    const/4 v1, 0x0

    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_31

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_31
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_38

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_38
    return-object v0
.end method

.method private static initDateFormat()V
    .registers 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->initDateFormat(Ljava/util/Locale;)V

    return-void
.end method

.method private static initDateFormat(Ljava/util/Locale;)V
    .registers 6

    const/4 v4, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_10

    sget-object v1, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initDateFormat()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    sput-object p0, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    :try_start_12
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "MM-dd HH:mm:ss.SSS"

    sget-object v3, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v1, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1e} :catch_1f

    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    sget-object v1, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "initDateFormat() - ERROR"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sput-object v4, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_1e
.end method

.method private static initLogList()V
    .registers 2

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initLogList()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v0, :cond_1f

    const-class v1, Lcom/android/server/am/SluggishInfo;

    monitor-enter v1

    :try_start_13
    sget-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_20

    :cond_1e
    monitor-exit v1

    :cond_1f
    return-void

    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initSluggishInfo()V
    .registers 2

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_2c

    :cond_16
    :goto_16
    const-class v1, Lcom/android/server/am/SluggishInfo;

    monitor-enter v1

    :try_start_19
    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_33

    :cond_23
    :goto_23
    new-instance v0, Lcom/android/server/am/SluggishInfo;

    invoke-direct {v0}, Lcom/android/server/am/SluggishInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_3a

    :cond_2a
    monitor-exit v1

    :cond_2b
    return-void

    :cond_2c
    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

    if-nez v0, :cond_2b

    goto :goto_16

    :cond_33
    :try_start_33
    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3a

    if-nez v0, :cond_2a

    goto :goto_23

    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static refreshDHAStatForSluggishInfo(IIII)V
    .registers 8

    const-wide/16 v2, 0x40

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_refreshDHAStatForSluggishInfo()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_24
    sput p0, Lcom/android/server/am/SluggishInfo;->numCached:I

    sput p1, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    sput p2, Lcom/android/server/am/SluggishInfo;->numCachedHiddenProcs:I

    sput p3, Lcom/android/server/am/SluggishInfo;->numNonCachedProcs:I

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_33

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_33
    return-void
.end method

.method private static sendLogToHandler(ILjava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/server/am/SluggishInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendLogToHandler() - SEC_PRODUCT_FEATURE_COMMON_CONFIG_SLUGGISH_INFO=false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method
