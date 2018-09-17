.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;
    }
.end annotation


# static fields
.field private static a:Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;

.field private static b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/b;
    .registers 8

    const/4 v4, 0x0

    if-eqz p1, :cond_c

    :goto_3
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    if-eq p1, v3, :cond_18

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    if-eq p1, v3, :cond_30

    return-object v4

    :cond_c
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v3

    if-nez v3, :cond_15

    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    goto :goto_3

    :cond_15
    sget-object p1, Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c$a;

    goto :goto_3

    :cond_18
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;

    if-eqz v3, :cond_1f

    :goto_1c
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;

    return-object v3

    :cond_1f
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;

    const-class v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;

    monitor-enter v3

    :try_start_24
    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;

    invoke-direct {v3, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/b/b;

    monitor-exit v0

    goto :goto_1c

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw v1

    :cond_30
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;

    if-eqz v3, :cond_37

    :goto_34
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;

    return-object v3

    :cond_37
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;

    const-class v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;

    monitor-enter v3

    :try_start_3c
    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;

    invoke-direct {v3, p0, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/a/b;

    monitor-exit v0

    goto :goto_34

    :catchall_45
    move-exception v2

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_45

    throw v2
.end method
