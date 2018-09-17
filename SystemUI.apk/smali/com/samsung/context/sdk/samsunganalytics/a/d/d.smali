.class public Lcom/samsung/context/sdk/samsunganalytics/a/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/d/c;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Lcom/samsung/context/sdk/samsunganalytics/a/d/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/d/d$1;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/d/d;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;
    .registers 1

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->b:Lcom/samsung/context/sdk/samsunganalytics/a/d/d;

    if-eqz v0, :cond_7

    :goto_4
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->b:Lcom/samsung/context/sdk/samsunganalytics/a/d/d;

    return-object v0

    :cond_7
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;-><init>()V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->b:Lcom/samsung/context/sdk/samsunganalytics/a/d/d;

    goto :goto_4
.end method


# virtual methods
.method public a(Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V
    .registers 4

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/d/d$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/d/d;Lcom/samsung/context/sdk/samsunganalytics/a/d/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
