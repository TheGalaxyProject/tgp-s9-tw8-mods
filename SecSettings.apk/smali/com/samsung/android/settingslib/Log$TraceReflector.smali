.class public Lcom/samsung/android/settingslib/Log$TraceReflector;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TraceReflector"
.end annotation


# static fields
.field private static sInstance:Lcom/samsung/android/settingslib/Log$TraceReflector;

.field private static sMethodTraceBegin:Ljava/lang/reflect/Method;

.field private static sMethodTraceEnd:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settingslib/Log$TraceReflector;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settingslib/Log$TraceReflector;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settingslib/Log$TraceReflector;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settingslib/Log$TraceReflector;->endSection()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "android.os.Trace"

    const-string/jumbo v1, "traceBegin"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settingslib/MethodReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/Log$TraceReflector;->sMethodTraceBegin:Ljava/lang/reflect/Method;

    const-string/jumbo v0, "android.os.Trace"

    const-string/jumbo v1, "traceEnd"

    new-array v2, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settingslib/MethodReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settingslib/Log$TraceReflector;->sMethodTraceEnd:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private beginSection(Ljava/lang/String;)V
    .registers 8

    sget-object v2, Lcom/samsung/android/settingslib/Log$TraceReflector;->sMethodTraceBegin:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    return-void

    :cond_5
    :try_start_5
    sget-object v2, Lcom/samsung/android/settingslib/Log$TraceReflector;->sMethodTraceBegin:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_1a} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1a

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1a
.end method

.method private endSection()V
    .registers 7

    sget-object v2, Lcom/samsung/android/settingslib/Log$TraceReflector;->sMethodTraceEnd:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    return-void

    :cond_5
    :try_start_5
    sget-object v2, Lcom/samsung/android/settingslib/Log$TraceReflector;->sMethodTraceEnd:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_17} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_17

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_17
.end method

.method public static getInstance()Lcom/samsung/android/settingslib/Log$TraceReflector;
    .registers 1

    sget-object v0, Lcom/samsung/android/settingslib/Log$TraceReflector;->sInstance:Lcom/samsung/android/settingslib/Log$TraceReflector;

    if-nez v0, :cond_b

    new-instance v0, Lcom/samsung/android/settingslib/Log$TraceReflector;

    invoke-direct {v0}, Lcom/samsung/android/settingslib/Log$TraceReflector;-><init>()V

    sput-object v0, Lcom/samsung/android/settingslib/Log$TraceReflector;->sInstance:Lcom/samsung/android/settingslib/Log$TraceReflector;

    :cond_b
    sget-object v0, Lcom/samsung/android/settingslib/Log$TraceReflector;->sInstance:Lcom/samsung/android/settingslib/Log$TraceReflector;

    return-object v0
.end method
