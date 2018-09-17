.class public Lcom/samsung/android/friends/util/LogFrs;
.super Ljava/lang/Object;
.source "LogFrs.java"


# static fields
.field private static final DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field private static final DEBUG_LEVEL_LOW:Ljava/lang/String; = "0x4f4c"

.field private static final DEBUG_LEVEL_MID:Ljava/lang/String; = "0x494d"

.field private static final LEVEL_DEBUG:I = 0x4

.field private static final LEVEL_ERROR:I = 0x1

.field private static final LEVEL_INFO:I = 0x3

.field private static final LEVEL_NONE:I = 0x0

.field private static final LEVEL_VERBOSE:I = 0x5

.field private static final LEVEL_WARN:I = 0x2

.field private static final TIME_DIFF:J = 0x12a05f200L

.field private static sCurLogLevel:I

.field private static sLateUpdated:J

.field private static sSafeString:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->internalLogLevel()I

    move-result v0

    sput v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->internalUseSafeString()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/friends/util/LogFrs;->sSafeString:Z

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/friends/util/LogFrs;->sLateUpdated:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_b

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_c

    :cond_b
    return-object v2

    :cond_c
    array-length v0, p2

    if-lez v0, :cond_13

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    invoke-static {p0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_b

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_c

    :cond_b
    return-object v2

    :cond_c
    array-length v0, p2

    if-lez v0, :cond_13

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    invoke-static {p0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static getDateString(J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRoDebugLevel()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ro.debug_level"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSafe(I)I
    .registers 2

    sget-boolean v0, Lcom/samsung/android/friends/util/LogFrs;->sSafeString:Z

    if-eqz v0, :cond_7

    const p0, 0xffffff

    :cond_7
    return p0
.end method

.method public static getSafe(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/samsung/android/friends/util/LogFrs;->sSafeString:Z

    if-eqz v0, :cond_8

    const-string/jumbo p0, "..."

    :cond_7
    :goto_7
    return-object p0

    :cond_8
    if-nez p0, :cond_7

    const-string/jumbo p0, ""

    goto :goto_7
.end method

.method private static getTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v0, "FrsSvc"

    if-eqz p0, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1d
    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_b

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_c

    :cond_b
    return-object v2

    :cond_c
    array-length v0, p2

    if-lez v0, :cond_13

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    invoke-static {p0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method private static internalLogLevel()I
    .registers 7

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v5

    if-eqz v5, :cond_57

    :cond_6
    const/4 v3, 0x5

    :goto_7
    const-string/jumbo v5, "debug.mate.log.service"

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_56

    const/4 v5, 0x6

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v5, "none"

    const/4 v6, 0x0

    aput-object v5, v0, v6

    const-string/jumbo v5, "error"

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const-string/jumbo v5, "warning"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-string/jumbo v5, "info"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const-string/jumbo v5, "debug"

    const/4 v6, 0x4

    aput-object v5, v0, v6

    const-string/jumbo v5, "verbose"

    const/4 v6, 0x5

    aput-object v5, v0, v6

    const/4 v2, 0x0

    const/4 v1, -0x1

    :goto_43
    array-length v5, v0

    if-ge v2, v5, :cond_4f

    aget-object v5, v0, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    move v1, v2

    :cond_4f
    const/4 v5, -0x1

    if-le v1, v5, :cond_56

    array-length v5, v0

    if-ge v1, v5, :cond_56

    move v3, v1

    :cond_56
    return v3

    :cond_57
    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v3, 0x3

    goto :goto_7

    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_43
.end method

.method private static internalUseSafeString()Z
    .registers 4

    invoke-static {}, Lcom/samsung/android/friends/common/FwDependency;->isProductDev()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    const-string/jumbo v2, "debug.mate.log.safe_string"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public static isDebugLogLevel()Z
    .registers 2

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isRoDebugLevelMid()Z
    .registers 2

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->getRoDebugLevel()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0x494d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string/jumbo v1, "0x4948"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x1

    goto :goto_14
.end method

.method public static logLevel()I
    .registers 1

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    return v0
.end method

.method public static printThrowableStackTrace(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isDebugLogLevel()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_f
    return-void

    :cond_10
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_f
.end method

.method private static updateLogLevel()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/samsung/android/friends/util/LogFrs;->sLateUpdated:J

    sub-long v2, v0, v2

    const-wide v4, 0x12a05f200L

    cmp-long v2, v2, v4

    if-lez v2, :cond_1f

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->internalLogLevel()I

    move-result v2

    sput v2, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->internalUseSafeString()Z

    move-result v2

    sput-boolean v2, Lcom/samsung/android/friends/util/LogFrs;->sSafeString:Z

    sput-wide v0, Lcom/samsung/android/friends/util/LogFrs;->sLateUpdated:J

    :cond_1f
    return-void
.end method

.method public static useSafeString()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/friends/util/LogFrs;->sSafeString:Z

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_b

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_c

    :cond_b
    return-object v2

    :cond_c
    array-length v0, p2

    if-lez v0, :cond_13

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    invoke-static {p0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_b

    sget v0, Lcom/samsung/android/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_c

    :cond_b
    return-object v2

    :cond_c
    array-length v0, p2

    if-lez v0, :cond_13

    invoke-static {p1, p2}, Lcom/samsung/android/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_13
    invoke-static {p0}, Lcom/samsung/android/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method
