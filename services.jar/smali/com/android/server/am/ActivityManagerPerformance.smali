.class public Lcom/android/server/am/ActivityManagerPerformance;
.super Ljava/lang/Object;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerPerformance$1;,
        Lcom/android/server/am/ActivityManagerPerformance$MainHandler;
    }
.end annotation


# static fields
.field static AMP_ENABLE:Z = false

.field static AMP_PERF_ENABLE:Z = false

.field static AMP_RELAUNCH_RESUME_ON:Z = false

.field static DEBUG:Z = false

.field static DEBUG_TRACE:Z = false

.field private static final MSG_CFMS_EXEC_ACTIVITY:I = 0x5

.field private static final MSG_CFMS_HINT_AMS_HOME:I = 0x7

.field private static final MSG_CFMS_HINT_AMS_SWITCH:I = 0x6

.field private static final MSG_DISABLE_ACT_RESUME:I = 0x3

.field private static final MSG_DISABLE_ACT_START:I = 0x2

.field private static final MSG_DISABLE_APP_SWITCH:I = 0x1

.field private static final MSG_ENABLE_ACT_RESUME_TAIL:I = 0x4

.field static NOT_USER_BINARY:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManagerPerformance"

.field private static TIMEOUT_ACT_RESUME:I = 0x0

.field private static TIMEOUT_ACT_START:I = 0x0

.field private static TIMEOUT_APP_SWITCH:I = 0x0

.field private static TIMEOUT_PREV_RESUME:I = 0x0

.field static final TOP_STATE_APP:I = 0x4

.field static final TOP_STATE_HOME:I = 0x2

.field static final TOP_STATE_INIT:I = 0x0

.field static final TOP_STATE_IS_CREATING:I = 0x1

.field static final TOP_STATE_RECENTS_APP:I = 0x3

.field private static booster:Lcom/android/server/am/ActivityManagerPerformance;

.field static curTopAct:Lcom/android/server/am/ActivityRecord;

.field static curTopState:I


# instance fields
.field private isMultiWindowResume:Z

.field private lastHomeBoostedTime:J

.field private lastHomePressedTime:J

.field private mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenOn:Z

.field private mLockActResume:Ljava/lang/Object;

.field private mLockActStart:Ljava/lang/Object;

.field private mLockAppSwitch:Ljava/lang/Object;

.field private mLockHome:Ljava/lang/Object;

.field private mLockRelaunchResume:Ljava/lang/Object;

.field private mLockTail:Ljava/lang/Object;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private needSkipResume:Z

.field private rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

.field private rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

.field private rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

.field private rLastActHome:Lcom/android/server/am/ActivityRecord;

.field private rLastActTail:Lcom/android/server/am/ActivityRecord;

.field private rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;


# direct methods
.method static synthetic -set0(Lcom/android/server/am/ActivityManagerPerformance;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/ActivityManagerPerformance;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/ActivityManagerPerformance;ZLcom/android/server/am/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_USER_BUILD:Z

    if-eqz v0, :cond_af

    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->SHIP_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    if-nez v0, :cond_20

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_debug"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_20
    sput-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_debug_trace"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_perf_enable"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "sys.config.amp_relaunch_resume"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    const-string/jumbo v0, "sys.config.amp_to_act_resume"

    const-string/jumbo v1, "1000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    const-string/jumbo v0, "sys.config.amp_to_act_start"

    const-string/jumbo v1, "2000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    const-string/jumbo v0, "sys.config.amp_to_app_switch"

    const-string/jumbo v1, "3000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    const-string/jumbo v0, "sys.config.amp_to_prev_resume"

    const-string/jumbo v1, "3000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    return-void

    :cond_af
    move v0, v1

    goto/16 :goto_9
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerPerformance$1;-><init>(Lcom/android/server/am/ActivityManagerPerformance;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "ActivityManagerPerformance"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;-><init>(Lcom/android/server/am/ActivityManagerPerformance;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerPerformance;->registerReceiver()V

    return-void
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    const/16 v7, 0x3d

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    return-void

    :cond_7
    const/4 v4, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_19

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_19
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    if-eqz v5, :cond_175

    const-string/jumbo v5, "_perf_enable="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_47

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP perf enable change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_47
    const-string/jumbo v5, "_enable="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_82

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP enable change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v5, :cond_7b

    if-eqz v2, :cond_7c

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v5}, Lcom/android/server/am/ActivityManagerPerformance;->registerReceiver()V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v5}, Lcom/android/server/am/ActivityManagerPerformance;->unregisterReceiver()V

    goto :goto_7b

    :cond_82
    const-string/jumbo v5, "_relaunch_resume="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_ac

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP relaunch_resume change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_ac
    const-string/jumbo v5, "_to_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_175

    const/4 v3, -0x1

    :try_start_b6
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_b6 .. :try_end_b9} :catch_c5

    move-result v3

    const/16 v5, 0x64

    if-ge v3, v5, :cond_e9

    const-string/jumbo v5, "-- AMP time cannot be under 100ms"

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_c5
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP cannot change time. value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_e9
    const-string/jumbo v5, "_app_switch="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10c

    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_APP_SWITCH change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_10c
    const-string/jumbo v5, "_act_start="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12f

    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_ACT_START change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_12f
    const-string/jumbo v5, "_act_resume="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_152

    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_ACT_RESUME change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_152
    const-string/jumbo v5, "_prev_resume="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_175

    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP TIMEOUT_PREV_RESUME change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_175
    const-string/jumbo v5, "_debug="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19f

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP debug change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    return-void

    :cond_19f
    const-string/jumbo v5, "_debug_trace="

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1c9

    const-string/jumbo v5, "true"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "-- AMP debug_trace change to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    return-void

    :cond_1c9
    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v5, :cond_1d2

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    invoke-virtual {v5, p0}, Lcom/android/server/am/ActivityManagerPerformance;->dump(Ljava/io/PrintWriter;)V

    :cond_1d2
    return-void
.end method

.method public static getBooster()Lcom/android/server/am/ActivityManagerPerformance;
    .registers 1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBooster(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)Lcom/android/server/am/ActivityManagerPerformance;
    .registers 3

    sget-boolean v0, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_13

    sget-object v0, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-nez v0, :cond_13

    if-eqz p0, :cond_13

    if-eqz p1, :cond_13

    new-instance v0, Lcom/android/server/am/ActivityManagerPerformance;

    invoke-direct {v0, p0, p1}, Lcom/android/server/am/ActivityManagerPerformance;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    :cond_13
    invoke-static {}, Lcom/android/server/am/ActivityManagerPerformance;->getBooster()Lcom/android/server/am/ActivityManagerPerformance;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized notifyCurTopAct(Lcom/android/server/am/ActivityRecord;)V
    .registers 12

    const/4 v10, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-class v8, Lcom/android/server/am/ActivityManagerPerformance;

    monitor-enter v8

    :try_start_7
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v7, :cond_f

    sget-object v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_195

    if-ne v7, p0, :cond_11

    :cond_f
    monitor-exit v8

    return-void

    :cond_11
    :try_start_11
    const-string/jumbo v2, "notifyCurTopAct()"

    if-nez p0, :cond_117

    const/4 v3, 0x1

    :goto_17
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_e4

    const-string/jumbo v1, "notifyCurTopAct() activity changed"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\n[Activity] prev: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", cur: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v7, :cond_d2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\n[Process] prev: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_12c

    sget-object v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_5f
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", cur: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz p0, :cond_12f

    iget-object v7, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_6e
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\n[Package] prev: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_132

    sget-object v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_8e
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", cur: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p0, :cond_9d

    iget-object v6, p0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_9d
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n[TOP_STATE] prev: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", cur: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_d2
    const-string/jumbo v6, "ActivityManagerPerformance"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v6, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v6, :cond_e4

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e4
    sput-object p0, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    sget v6, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-eq v6, v3, :cond_193

    sget v0, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    sput v3, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    sget-boolean v6, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v6, :cond_193

    sget-object v6, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    if-eqz v6, :cond_193

    sget-object v6, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-eqz v6, :cond_193

    sget v6, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_135

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_10e

    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "notifyCurTopAct() call setBoosterHome()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10e
    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V
    :try_end_115
    .catchall {:try_start_11 .. :try_end_115} :catchall_195

    monitor-exit v8

    return-void

    :cond_117
    :try_start_117
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v7

    if-eqz v7, :cond_120

    const/4 v3, 0x2

    goto/16 :goto_17

    :cond_120
    invoke-virtual {p0}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v7

    if-eqz v7, :cond_129

    const/4 v3, 0x3

    goto/16 :goto_17

    :cond_129
    const/4 v3, 0x4

    goto/16 :goto_17

    :cond_12c
    move-object v7, v6

    goto/16 :goto_5f

    :cond_12f
    move-object v7, v6

    goto/16 :goto_6e

    :cond_132
    move-object v7, v6

    goto/16 :goto_8e

    :cond_135
    const/4 v6, 0x3

    if-ne v0, v6, :cond_193

    sget v6, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-eq v6, v10, :cond_140

    sget v6, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-ne v6, v4, :cond_193

    :cond_140
    sget-object v6, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v6, :cond_15e

    sget-object v6, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v6, p0, :cond_15a

    if-eqz p0, :cond_17c

    iget-object v4, p0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    sget-object v5, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :cond_15a
    :goto_15a
    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_193

    :cond_15e
    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v4, :cond_17e

    sget v4, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-ne v4, v10, :cond_17e

    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_17a

    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "notifyCurTopAct() skipped. isMultiWindowResume: true"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17a
    .catchall {:try_start_117 .. :try_end_17a} :catchall_195

    :cond_17a
    monitor-exit v8

    return-void

    :cond_17c
    move v4, v5

    goto :goto_15a

    :cond_17e
    :try_start_17e
    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_18b

    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "notifyCurTopAct() call setBoosterAppSwitch()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18b
    sget-object v4, Lcom/android/server/am/ActivityManagerPerformance;->booster:Lcom/android/server/am/ActivityManagerPerformance;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p0}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V
    :try_end_191
    .catchall {:try_start_17e .. :try_end_191} :catchall_195

    monitor-exit v8

    return-void

    :cond_193
    monitor-exit v8

    return-void

    :catchall_195
    move-exception v4

    monitor-exit v8

    throw v4
.end method

.method private final registerReceiver()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V
    .registers 15

    const/4 v11, 0x3

    const-string/jumbo v4, "setBoosterActResume()"

    if-eqz p2, :cond_d0

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_8
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_91

    if-eqz p2, :cond_d3

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_10
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_d6

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_18
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterActResume() onoff: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", r: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), curBoost: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_91

    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterActResume() Trace\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_91
    if-eqz p1, :cond_b1

    const-string/jumbo v8, "com.sec.android.app.camera"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a5

    const-string/jumbo v8, "com.android.server.telecom"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    :cond_a5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v6}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_b1
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v8, :cond_c2

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "AMS_ACT_RESUME"

    const/16 v10, 0x15

    invoke-static {v8, v9, v10}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    :cond_c2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_d9

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "setBoosterActResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d0
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_d3
    const/4 v7, 0x0

    goto/16 :goto_10

    :cond_d6
    const/4 v1, 0x0

    goto/16 :goto_18

    :cond_d9
    if-eqz p1, :cond_180

    if-eqz p2, :cond_10a

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v8

    if-eqz v8, :cond_10a

    const/16 v0, 0x1f4

    :goto_e5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v8, v11}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    :try_start_ea
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v9
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_110

    :try_start_ed
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;
    :try_end_f2
    .catchall {:try_start_ed .. :try_end_f2} :catchall_10d

    :try_start_f2
    monitor-exit v9

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_acquire() ACT_RESUME"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9, p2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v10, v0

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_109} :catch_110

    :goto_109
    return-void

    :cond_10a
    sget v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    goto :goto_e5

    :catchall_10d
    move-exception v8

    :try_start_10e
    monitor-exit v9

    throw v8
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_110} :catch_110

    :catch_110
    move-exception v3

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_17e

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_119
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() ACT_RESUME failed. stop boosting of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_174

    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() ACT_RESUME failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_174
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    const/4 v9, 0x0

    invoke-direct {p0, v9, v8}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_109

    :cond_17e
    const/4 v1, 0x0

    goto :goto_119

    :cond_180
    :try_start_180
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v9
    :try_end_183
    .catch Ljava/lang/Exception; {:try_start_180 .. :try_end_183} :catch_1a1

    :try_start_183
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;
    :try_end_185
    .catchall {:try_start_183 .. :try_end_185} :catchall_1dd

    if-nez v8, :cond_189

    :try_start_187
    monitor-exit v9
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_187 .. :try_end_188} :catch_1a1

    return-void

    :cond_189
    :try_start_189
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;
    :try_end_18f
    .catchall {:try_start_189 .. :try_end_18f} :catchall_1dd

    :try_start_18f
    monitor-exit v9

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() ACT_RESUME"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_19f
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_19f} :catch_1a1

    goto/16 :goto_109

    :catch_1a1
    move-exception v3

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() ACT_RESUME failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_1d8

    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_release() ACT_RESUME failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d8
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_109

    :catchall_1dd
    move-exception v8

    :try_start_1de
    monitor-exit v9

    throw v8
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1de .. :try_end_1e0} :catch_1a1
.end method

.method private setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V
    .registers 15

    const-string/jumbo v4, "setBoosterActStart()"

    if-eqz p2, :cond_ea

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_7
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_90

    if-eqz p2, :cond_ed

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_f
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_f0

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_17
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterActStart() onoff: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", r: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), curBoost: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_90

    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterActStart() Trace\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_90
    if-eqz p1, :cond_b0

    const-string/jumbo v8, "com.sec.android.app.camera"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a4

    const-string/jumbo v8, "com.android.server.telecom"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b0

    :cond_a4
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v6}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_b0
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v8, :cond_f3

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v8, :cond_f3

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "AMS_ACT_START"

    const/16 v10, 0x15

    invoke-static {v8, v9, v10}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    :cond_c5
    :goto_c5
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v8, :cond_109

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    :goto_cb
    if-nez v2, :cond_10c

    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ea
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_ed
    const/4 v7, 0x0

    goto/16 :goto_f

    :cond_f0
    const/4 v1, 0x0

    goto/16 :goto_17

    :cond_f3
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v8, :cond_c5

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v8, :cond_c5

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "AMS_RESUME"

    const/16 v10, 0x15

    invoke-static {v8, v9, v10}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_c5

    :cond_109
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_cb

    :cond_10c
    if-eqz p1, :cond_1bb

    if-eqz p2, :cond_13e

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v8

    if-eqz v8, :cond_13e

    const/16 v0, 0x1f4

    :goto_118
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    :try_start_11e
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v9
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_11e .. :try_end_121} :catch_14b

    :try_start_121
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;
    :try_end_126
    .catchall {:try_start_121 .. :try_end_126} :catchall_148

    :try_start_126
    monitor-exit v9

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_acquire() ACT_START"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9, p2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v10, v0

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_13d} :catch_14b

    :goto_13d
    return-void

    :cond_13e
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v8, :cond_145

    sget v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    goto :goto_118

    :cond_145
    sget v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    goto :goto_118

    :catchall_148
    move-exception v8

    :try_start_149
    monitor-exit v9

    throw v8
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_14b} :catch_14b

    :catch_14b
    move-exception v3

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_1b9

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_154
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() ACT_START failed. stop boosting of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_1af

    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() ACT_START failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1af
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    const/4 v9, 0x0

    invoke-direct {p0, v9, v8}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13d

    :cond_1b9
    const/4 v1, 0x0

    goto :goto_154

    :cond_1bb
    const/4 v8, 0x0

    invoke-direct {p0, v8, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    :try_start_1bf
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v9
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1bf .. :try_end_1c2} :catch_1e0

    :try_start_1c2
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;
    :try_end_1c4
    .catchall {:try_start_1c2 .. :try_end_1c4} :catchall_21c

    if-nez v8, :cond_1c8

    :try_start_1c6
    monitor-exit v9
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1c7} :catch_1e0

    return-void

    :cond_1c8
    :try_start_1c8
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;
    :try_end_1ce
    .catchall {:try_start_1c8 .. :try_end_1ce} :catchall_21c

    :try_start_1ce
    monitor-exit v9

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() ACT_START"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1ce .. :try_end_1de} :catch_1e0

    goto/16 :goto_13d

    :catch_1e0
    move-exception v3

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() ACT_START failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_217

    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_release() ACT_START failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_217
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13d

    :catchall_21c
    move-exception v8

    :try_start_21d
    monitor-exit v9

    throw v8
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_21f} :catch_1e0
.end method

.method private setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V
    .registers 15

    const/4 v11, 0x1

    const-string/jumbo v4, "setBoosterAppSwitch()"

    if-eqz p2, :cond_d0

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_8
    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_91

    if-eqz p2, :cond_d3

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_10
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_d6

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_18
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterAppSwitch() onoff: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", r: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "), curBoost: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_91

    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterAppSwitch() Trace\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_91
    if-eqz p1, :cond_b1

    const-string/jumbo v8, "com.sec.android.app.camera"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a5

    const-string/jumbo v8, "com.android.server.telecom"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    :cond_a5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v6}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_b1
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v8, :cond_c2

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "AMS_APP_SWITCH"

    const/16 v10, 0x15

    invoke-static {v8, v9, v10}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    :cond_c2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v2, :cond_d9

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "setBoosterAppSwitch() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d0
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_d3
    const/4 v7, 0x0

    goto/16 :goto_10

    :cond_d6
    const/4 v1, 0x0

    goto/16 :goto_18

    :cond_d9
    if-eqz p1, :cond_18c

    if-eqz p2, :cond_116

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v8

    if-eqz v8, :cond_116

    const/16 v0, 0x1f4

    :goto_e5
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v8, v11}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    :try_start_ea
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v9
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_ed} :catch_11c

    :try_start_ed
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;
    :try_end_f2
    .catchall {:try_start_ed .. :try_end_f2} :catchall_119

    :try_start_f2
    monitor-exit v9

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_acquire() APP_SWITCH"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9, p2}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    int-to-long v10, v0

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v10, 0x6

    invoke-virtual {v9, v10, v6}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_115} :catch_11c

    :goto_115
    return-void

    :cond_116
    sget v0, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    goto :goto_e5

    :catchall_119
    move-exception v8

    :try_start_11a
    monitor-exit v9

    throw v8
    :try_end_11c
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_11c} :catch_11c

    :catch_11c
    move-exception v3

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v8, :cond_18a

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_125
    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() APP_SWITCH failed. stop boosting of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_180

    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AMP_acquire() APP_SWITCH failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_180
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    const/4 v9, 0x0

    invoke-direct {p0, v9, v8}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_115

    :cond_18a
    const/4 v1, 0x0

    goto :goto_125

    :cond_18c
    invoke-direct {p0, v11, p2}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V

    :try_start_18f
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v9
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_18f .. :try_end_192} :catch_1b0

    :try_start_192
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;
    :try_end_194
    .catchall {:try_start_192 .. :try_end_194} :catchall_1ec

    if-nez v8, :cond_198

    :try_start_196
    monitor-exit v9
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_197} :catch_1b0

    return-void

    :cond_198
    :try_start_198
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;
    :try_end_19e
    .catchall {:try_start_198 .. :try_end_19e} :catchall_1ec

    :try_start_19e
    monitor-exit v9

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() APP_SWITCH"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mHandler:Lcom/android/server/am/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1ae} :catch_1b0

    goto/16 :goto_115

    :catch_1b0
    move-exception v3

    const-string/jumbo v8, "ActivityManagerPerformance"

    const-string/jumbo v9, "AMP_release() APP_SWITCH failed"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v8, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_1e7

    const-string/jumbo v8, "ActivityManagerPerformance"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setBoosterAppSwitch() AMP_release failed. e: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_115

    :catchall_1ec
    move-exception v8

    :try_start_1ed
    monitor-exit v9

    throw v8
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_1ef} :catch_1b0
.end method

.method private setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V
    .registers 16

    const-string/jumbo v2, "setBoosterHome()"

    if-eqz p3, :cond_a5

    iget-object v3, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_7
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_97

    if-eqz p3, :cond_a8

    iget-object v6, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_f
    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterHome() fastBoost: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", startAct: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", curTopState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v9}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", r: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", pkgName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v7, :cond_97

    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterHome() Trace\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_97
    sget v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    if-nez v7, :cond_ab

    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() skipped. Method is called by non-system_server"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a5
    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_a8
    const/4 v6, 0x0

    goto/16 :goto_f

    :cond_ab
    iget-boolean v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v7, :cond_bd

    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_bc

    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() skipped. mIsScreenOn: false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    return-void

    :cond_bd
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    if-eqz p1, :cond_11d

    if-nez p3, :cond_f3

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    :cond_c7
    if-nez p3, :cond_1f4

    sget v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f4

    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_f2

    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterHome() skipped. Home key was pressed, but curTopState is already "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v9}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f2
    return-void

    :cond_f3
    iget-wide v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0xc8

    cmp-long v7, v8, v10

    if-ltz v7, :cond_107

    iget-wide v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0xc8

    cmp-long v7, v8, v10

    if-gez v7, :cond_c7

    :cond_107
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    if-eq v7, p3, :cond_10f

    if-eqz p3, :cond_10f

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    :cond_10f
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_11c

    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11c
    return-void

    :cond_11d
    iget-wide v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0xc8

    cmp-long v7, v8, v10

    if-ltz v7, :cond_131

    iget-wide v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v8, v4, v8

    const-wide/16 v10, 0xc8

    cmp-long v7, v8, v10

    if-gez v7, :cond_147

    :cond_131
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    if-eq v7, p3, :cond_139

    if-eqz p3, :cond_139

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    :cond_139
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_146

    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_146
    return-void

    :cond_147
    sget v7, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1f4

    if-eqz p3, :cond_197

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v7, p3, :cond_156

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-ne v7, p3, :cond_177

    :cond_156
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_176

    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterHome() skipped. already boosted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_176
    return-void

    :cond_177
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_187

    iget-object v7, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_156

    :cond_187
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_197

    iget-object v7, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_156

    :cond_197
    if-eqz p2, :cond_1ab

    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_1a6

    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() call setBoosterActStart()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a6
    const/4 v7, 0x1

    invoke-direct {p0, v7, p3}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    :goto_1aa
    return-void

    :cond_1ab
    if-eqz p3, :cond_1e2

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eq v7, p3, :cond_1c1

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_1e2

    iget-object v7, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e2

    :cond_1c1
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_1e1

    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterHome() skipped. already boosted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e1
    return-void

    :cond_1e2
    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_1ef

    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() call setBoosterActResume()"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ef
    const/4 v7, 0x1

    invoke-direct {p0, v7, p3}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_1aa

    :cond_1f4
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v7, :cond_205

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "AMS_APP_HOME"

    const/16 v9, 0x15

    invoke-static {v7, v8, v9}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    :cond_205
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_213

    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "setBoosterHome() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_213
    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->lastHomeBoostedTime:J

    :try_start_215
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    monitor-enter v8
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_218} :catch_22b

    :try_start_218
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;
    :try_end_21d
    .catchall {:try_start_218 .. :try_end_21d} :catchall_228

    :try_start_21d
    monitor-exit v8

    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "AMP_acquire() HOME"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_227
    return-void

    :catchall_228
    move-exception v7

    monitor-exit v8

    throw v7
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_21d .. :try_end_22b} :catch_22b

    :catch_22b
    move-exception v1

    const-string/jumbo v7, "ActivityManagerPerformance"

    const-string/jumbo v8, "AMP_acquire() HOME failed"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_262

    const-string/jumbo v7, "ActivityManagerPerformance"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AMP_acquire() HOME failed. e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_262
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_227
.end method

.method private setBoosterRelaunchResume(Lcom/android/server/am/ActivityRecord;)V
    .registers 9

    const-string/jumbo v2, "setBoosterRelaunchResume()"

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_61

    if-eqz p1, :cond_80

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_b
    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterRelaunchResume() r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v4, :cond_61

    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterRelaunchResume() Trace\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_61
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_72

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "AMS_RELAUNCH_RESUME"

    const/16 v6, 0x15

    invoke-static {v4, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    :cond_72
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_82

    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterRelaunchResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80
    const/4 v3, 0x0

    goto :goto_b

    :cond_82
    :try_start_82
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    monitor-enter v5
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_98

    :try_start_85
    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_95

    :try_start_8a
    monitor-exit v5

    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "AMP_acquire() RELAUNCH_RESUME"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_94
    return-void

    :catchall_95
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_98} :catch_98

    :catch_98
    move-exception v1

    const-string/jumbo v4, "ActivityManagerPerformance"

    const-string/jumbo v5, "AMP_acquire() RELAUNCH_RESUME failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_cf

    const-string/jumbo v4, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "AMP_acquire() RELAUNCH_RESUME failed. e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cf
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_94
.end method

.method private setBoosterTail(ZLcom/android/server/am/ActivityRecord;)V
    .registers 12

    const/16 v8, 0x15

    const-string/jumbo v3, "setBoosterTail()"

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_73

    if-eqz p2, :cond_85

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_d
    const-string/jumbo v6, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterTail() from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_87

    const-string/jumbo v5, "AppSwitch"

    :goto_21
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", r: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v5, :cond_73

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterTail() Trace\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_73
    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v5, :cond_8b

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_84

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterTail() skipped. mIsScreenOn: false"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    return-void

    :cond_85
    const/4 v4, 0x0

    goto :goto_d

    :cond_87
    const-string/jumbo v5, "ActStart"

    goto :goto_21

    :cond_8b
    if-eqz p1, :cond_bc

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_bc

    :cond_91
    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_bb

    const-string/jumbo v6, "ActivityManagerPerformance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterTail() skipped. "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez p1, :cond_ee

    const-string/jumbo v5, "AppSwitch"

    :goto_a9
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " is not finished"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    return-void

    :cond_bc
    if-nez p1, :cond_c2

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-nez v5, :cond_91

    :cond_c2
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v5, :cond_d1

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "AMS_RESUME_TAIL"

    invoke-static {v5, v6, v8}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    :cond_d1
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v5, :cond_e0

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "AMS_ACT_LAZY"

    invoke-static {v5, v6, v8}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    :cond_e0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_f2

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_ee
    const-string/jumbo v5, "ActStart"

    goto :goto_a9

    :cond_f2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_100

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_100
    :try_start_100
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v6
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_103} :catch_119

    :try_start_103
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;
    :try_end_10b
    .catchall {:try_start_103 .. :try_end_10b} :catchall_116

    :try_start_10b
    monitor-exit v6

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "AMP_acquire() TAIL"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_115
    return-void

    :catchall_116
    move-exception v5

    monitor-exit v6

    throw v5
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_119} :catch_119

    :catch_119
    move-exception v2

    const-string/jumbo v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "AMP_acquire() TAIL failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_150

    const-string/jumbo v5, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AMP_acquire() TAIL failed. e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_150
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_115
.end method

.method static topStateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NO_STATE_NUM_OF_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "TOP_STATE_INIT"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "TOP_STATE_IS_CREATING"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "TOP_STATE_HOME"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "TOP_STATE_RECENTS_APP"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "TOP_STATE_APP"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method private final unregisterReceiver()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "ACTIVITY MANAGER AMP (dumpsys activity amp)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method getCurBoostInfoStr()Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v0, "===== ActivityManagerPerformance, getCurBoostInfoStr info ====="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\nAMP_ENABLE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", AMP_PERF_ENABLE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", mIsScreenOn: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v1, :cond_1ef

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\nTIMEOUT_ACT_RESUME: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", TIMEOUT_ACT_START: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", TIMEOUT_APP_SWITCH: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[curTopState] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->curTopState:I

    invoke-static {v3}, Lcom/android/server/am/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rCurBoostAppSwitch] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_20b

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_ba
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rCurBoostActStart] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_20e

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_ee
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rCurBoostActResume] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_211

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_122
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rLastActTail] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_214

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_156
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rLastActHome] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_217

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_18a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\n[rLastRelaunchResume] procName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_1be

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :cond_1be
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n===== ActivityManagerPerformance, getCurBoostInfoStr end  ====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1ef
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "\nTIMEOUT_PREV_RESUME: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/am/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_70

    :cond_20b
    move-object v1, v2

    goto/16 :goto_ba

    :cond_20e
    move-object v1, v2

    goto/16 :goto_ee

    :cond_211
    move-object v1, v2

    goto/16 :goto_122

    :cond_214
    move-object v1, v2

    goto/16 :goto_156

    :cond_217
    move-object v1, v2

    goto/16 :goto_18a
.end method

.method public isHomeKeyPressed()V
    .registers 5

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_3a

    const-string/jumbo v0, "isHomeKeyPressed()"

    const-string/jumbo v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "isHomeKeyPressed() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHomeKeyPressed() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_44

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_45

    :cond_44
    return-void

    :cond_45
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method public onActivityRelaunchLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .registers 8

    const-string/jumbo v0, "onActivityRelaunchLocked()"

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_65

    if-eqz p1, :cond_6a

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    :goto_b
    const-string/jumbo v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityRelaunchLocked() r: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), andResume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_65

    const-string/jumbo v2, "ActivityManagerPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityRelaunchLocked() Trace\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_65
    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    if-nez v2, :cond_6c

    return-void

    :cond_6a
    const/4 v1, 0x0

    goto :goto_b

    :cond_6c
    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v2, :cond_7e

    sget-boolean v2, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_7d

    const-string/jumbo v2, "ActivityManagerPerformance"

    const-string/jumbo v3, "onActivityRelaunchLocked() skipped. mIsScreenOn: false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return-void

    :cond_7e
    if-eqz p2, :cond_83

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterRelaunchResume(Lcom/android/server/am/ActivityRecord;)V

    :cond_83
    return-void
.end method

.method onActivityResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "onActivityResumeLocked()"

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_61

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_61

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_61
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_66

    return-void

    :cond_66
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v1, :cond_6c

    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_6c
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_7e

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_7d

    const-string/jumbo v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "onActivityResumeLocked() skipped. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return-void

    :cond_7e
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v1, :cond_92

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_8f

    const-string/jumbo v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "onActivityResumeLocked() skipped. needSkipResume is true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    return-void

    :cond_92
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v1, :cond_cf

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_aa

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_cb

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb

    :cond_aa
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_ca

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    return-void

    :cond_cb
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    :goto_ce
    return-void

    :cond_cf
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_d9

    invoke-direct {p0, v5, v5, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_d9
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v1

    if-eqz v1, :cond_12c

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_e7

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_108

    :cond_e7
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_107

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_107
    return-void

    :cond_108
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_118

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    :cond_118
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_128

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    :cond_128
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_12c
    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_19e

    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19e

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_144

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_165

    :cond_144
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_164

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_164
    return-void

    :cond_165
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_144

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_179

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_144

    :cond_179
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_189

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_144

    :cond_189
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_199

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_144

    :cond_199
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_ce

    :cond_19e
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_1e2

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_1e2

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_1ba

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_1db

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1db

    :cond_1ba
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_1da

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1da
    return-void

    :cond_1db
    iput-boolean v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_ce

    :cond_1e2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_1f6

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_217

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_217

    :cond_1f6
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_216

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_216
    return-void

    :cond_217
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    goto/16 :goto_ce
.end method

.method onActivityStartLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v0, "onActivityStartLocked()"

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_61

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_61

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_61
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_66

    return-void

    :cond_66
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v1, :cond_6c

    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_6c
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_7e

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_7d

    const-string/jumbo v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "onActivityStartLocked() skipped. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return-void

    :cond_7e
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v1, :cond_84

    iput-boolean v5, p0, Lcom/android/server/am/ActivityManagerPerformance;->needSkipResume:Z

    :cond_84
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v1, :cond_8c

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_8c
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_96

    invoke-direct {p0, v5, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_96
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    return-void

    :cond_a0
    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_fd

    sget-object v1, Lcom/android/server/am/ActivityManagerPerformance;->curTopAct:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fd

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_b8

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_d9

    :cond_b8
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_d8

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d8
    return-void

    :cond_d9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_e9

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b8

    :cond_e9
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_f9

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b8

    :cond_f9
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    :goto_fc
    return-void

    :cond_fd
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eq v1, p1, :cond_111

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_132

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132

    :cond_111
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_131

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() skipped. already boosted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_131
    return-void

    :cond_132
    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    goto :goto_fc
.end method

.method onActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .registers 7

    const/4 v4, 0x0

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_60

    const-string/jumbo v0, "onActivityVisibleLocked()"

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityVisibleLocked() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_60

    const-string/jumbo v1, "ActivityManagerPerformance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityVisibleLocked() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_60
    sget-boolean v1, Lcom/android/server/am/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_65

    return-void

    :cond_65
    iget-boolean v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v1, :cond_6b

    iput-boolean v4, p0, Lcom/android/server/am/ActivityManagerPerformance;->isMultiWindowResume:Z

    :cond_6b
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_72

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/am/ActivityRecord;)V

    :cond_72
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_79

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/am/ActivityRecord;)V

    :cond_79
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_80

    invoke-direct {p0, v4, p1}, Lcom/android/server/am/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/am/ActivityRecord;)V

    :cond_80
    return-void
.end method
