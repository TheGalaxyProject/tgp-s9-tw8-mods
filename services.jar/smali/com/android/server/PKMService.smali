.class public Lcom/android/server/PKMService;
.super Landroid/service/tima/IPKMService$Stub;
.source "PKMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PKMService$PKMServiceHandler;,
        Lcom/android/server/PKMService$PKMTimerTask;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field private static final PACKAGE_SECURITY_LOGUPLOAD_AGENT:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final PKM_OPCODE_MEASUREMENT:I = 0xc350

.field private static final PKM_START_ID:I = 0x1

.field private static final PKM_SUBCODE_PKM:I = 0x2710

.field private static final PKM_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final PKM_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "PKMService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field private static final TIMA_MAX_EVENTS:I = 0x64

.field private static final mEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mPKMServiceHandler:Lcom/android/server/PKMService$PKMServiceHandler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private pkmThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/service/tima/IPKMService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PKMService;->pkmThread:Landroid/os/HandlerThread;

    iput-object p1, p0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/PKMService;->makePKMHandler()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/server/PKMService;->startPKMTimer()V

    :cond_11
    return-void
.end method

.method private displayEvent(Ljava/lang/String;)V
    .registers 23

    sget-boolean v18, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v18, :cond_22

    const-string/jumbo v18, "PKMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "TIMA MEASUREMENT Result: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-nez p1, :cond_25

    return-void

    :cond_25
    sget-object v18, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->size()I

    move-result v18

    const/16 v19, 0x64

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_38

    sget-object v18, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_38
    const-string/jumbo v17, " "

    :try_start_3b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_46} :catch_ac

    move-result-object v17

    :cond_47
    :goto_47
    sget-object v18, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v18, "TIMA_STATUS="

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/16 v18, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v14, v0, :cond_8d

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_bb

    :cond_8d
    const-string/jumbo v18, "PKMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "TIMA MEASUREMENT invalid status: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_ac
    move-exception v8

    sget-boolean v18, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v18, :cond_47

    const-string/jumbo v18, "PKMService"

    const-string/jumbo v19, "toLocalString() exception"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    :cond_bb
    const-string/jumbo v18, "0"

    const-string/jumbo v19, "TIMA_STATUS="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f8

    sget-boolean v18, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v18, :cond_f7

    const-string/jumbo v18, "PKMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "TIMA MEASUREMENT success status: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    return-void

    :cond_f8
    const-string/jumbo v18, "1"

    const-string/jumbo v19, "TIMA_STATUS="

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v14

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_135

    sget-boolean v18, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v18, :cond_134

    const-string/jumbo v18, "PKMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "TIMA Internal Error: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_134
    return-void

    :cond_135
    const-string/jumbo v18, "MSG="

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/16 v18, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    const-string/jumbo v10, ""

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v11, v0, :cond_159

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v12, v0, :cond_17c

    :cond_159
    sget-boolean v18, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v18, :cond_17b

    const-string/jumbo v18, "PKMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "TIMA MEASUREMENT invalid result: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17b
    return-void

    :cond_17c
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v18, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v18, "MSG="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v18, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v18, "lkm_modified"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1fa

    const-string/jumbo v18, "TIMA_STATUS="

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1ae
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v18, "yyyyMMddHHmmss"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v18, Ljava/util/Date;

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :try_start_1c3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    const-string/jumbo v19, "mkdir -p /data/misc/tima"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1cd} :catch_251

    :goto_1cd
    :try_start_1cd
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    const-string/jumbo v19, "chmod 701 /data/misc/tima"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1d7
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d7} :catch_25d

    :goto_1d7
    :try_start_1d7
    new-instance v6, Ljava/io/File;

    const-string/jumbo v18, "/data/misc/tima"

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    if-eqz v9, :cond_26d

    const/16 v18, 0x0

    array-length v0, v9

    move/from16 v19, v0

    :goto_1ec
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_26d

    aget-object v16, v9, v18

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_1f7
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_1f7} :catch_269

    add-int/lit8 v18, v18, 0x1

    goto :goto_1ec

    :cond_1fa
    const-string/jumbo v18, "seandroid_off"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_212

    const-string/jumbo v18, "TIMA_STATUS="

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1ae

    :cond_212
    const-string/jumbo v18, "kern_modified"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_22a

    const-string/jumbo v18, "TIMA_STATUS="

    const/16 v19, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1ae

    :cond_22a
    const-string/jumbo v18, "kern_metadata_modified"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_243

    const-string/jumbo v18, "TIMA_STATUS="

    const/16 v19, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1ae

    :cond_243
    sget-boolean v18, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v18, :cond_250

    const-string/jumbo v18, "PKMService"

    const-string/jumbo v19, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_250
    return-void

    :catch_251
    move-exception v7

    const-string/jumbo v18, "PKMService"

    const-string/jumbo v19, "Failed to create /data/misc/tima"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1cd

    :catch_25d
    move-exception v7

    const-string/jumbo v18, "PKMService"

    const-string/jumbo v19, "Failed to change permissions of /data/misc/tima"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d7

    :catch_269
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26d
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "/data/misc/tima/tima.log."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :try_start_283
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "chmod 640 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2a0
    .catch Ljava/io/IOException; {:try_start_283 .. :try_end_2a0} :catch_2ae

    :goto_2a0
    sget-boolean v18, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v18, :cond_2cc

    const-string/jumbo v18, "PKMService"

    const-string/jumbo v19, "displayEvent(): iBootCompleted==false"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_2ae
    move-exception v7

    const-string/jumbo v18, "PKMService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Failed to change permissions of "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a0

    :cond_2cc
    const-string/jumbo v18, "com.samsung.android.securitylogagent"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v18, "TIMA_LOG_FILE"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v18

    const-string/jumbo v19, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v20, "com.samsung.android.sm"

    invoke-virtual/range {v18 .. v20}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lcom/android/server/PKMService;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_327

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v18, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_327
    return-void
.end method

.method private isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    :try_start_8
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_b} :catch_11

    move-result-object v1

    if-eqz v1, :cond_10

    const/4 v3, 0x1

    return v3

    :cond_10
    return v4

    :catch_11
    move-exception v0

    return v4
.end method

.method private makePKMHandler()Z
    .registers 5

    sget-boolean v2, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "PKMService"

    const-string/jumbo v3, "makePKMHandler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v1, 0x0

    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "PKMService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/PKMService;->pkmThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/PKMService;->pkmThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    iget-object v2, p0, Lcom/android/server/PKMService;->pkmThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_37

    new-instance v2, Lcom/android/server/PKMService$PKMServiceHandler;

    invoke-direct {v2, v0}, Lcom/android/server/PKMService$PKMServiceHandler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/PKMService;->mPKMServiceHandler:Lcom/android/server/PKMService$PKMServiceHandler;

    const/4 v1, 0x1

    const-string/jumbo v2, "PKMService"

    const-string/jumbo v3, "Success to get looper for PKMServiceHandler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return v1

    :cond_37
    const-string/jumbo v2, "PKMService"

    const-string/jumbo v3, "Failed to get looper for PKMServiceHandler"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method private startPKMTimer()V
    .registers 7

    const-wide/32 v2, 0x493e0

    sget-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "PKMService"

    const-string/jumbo v1, "startPKMTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/PKMService;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/android/server/PKMService$PKMTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PKMService$PKMTimerTask;-><init>(Lcom/android/server/PKMService;Lcom/android/server/PKMService$PKMTimerTask;)V

    iput-object v0, p0, Lcom/android/server/PKMService;->mTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/android/server/PKMService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/PKMService;->mTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method


# virtual methods
.method public declared-synchronized checkEvent()Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v3, "PKMService"

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const v3, 0xc350

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Lcom/android/server/PKMService;->timaCheckEvent(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-direct {p0, v2}, Lcom/android/server/PKMService;->displayEvent(Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object v2

    :catchall_28
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getEventList(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method
