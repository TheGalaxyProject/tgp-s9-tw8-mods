.class public Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;


# instance fields
.field private a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

.field private b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_f

    :goto_5
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;-><init>()V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;

    iput-boolean p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->c:Z

    return-void

    :cond_f
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

    goto :goto_5
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;
    .registers 8

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    if-eqz v3, :cond_7

    :goto_4
    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    return-object v3

    :cond_7
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    const-class v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    monitor-enter v3

    :try_start_c
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v3

    if-nez v3, :cond_1f

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    :goto_1a
    monitor-exit v0

    goto :goto_4

    :catchall_1c
    move-exception v2

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw v2

    :cond_1f
    :try_start_1f
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "lgt"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "rel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string/jumbo v3, "rtb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    goto :goto_1a

    :cond_48
    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    goto :goto_1a

    :cond_51
    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v3, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;
    :try_end_59
    .catchall {:try_start_1f .. :try_end_59} :catchall_1c

    goto :goto_1a
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;
    .registers 6

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    if-eqz v2, :cond_7

    :goto_4
    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    return-object v2

    :cond_7
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    const-class v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    monitor-enter v2

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1f

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    :goto_1a
    monitor-exit v0

    goto :goto_4

    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw v1

    :cond_1f
    :try_start_1f
    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_1c

    goto :goto_1a
.end method

.method private f()V
    .registers 4

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;->a()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;->a()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;->a()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    goto :goto_c

    :cond_27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/f/d;)V

    goto :goto_17
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;

    invoke-direct {v0, p3, p1, p2, p4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/d;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/f/d;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->c:Z

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

    if-eqz v0, :cond_b

    :goto_7
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->f()V

    return-void

    :cond_b
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

    goto :goto_7
.end method

.method public a(Lcom/samsung/context/sdk/samsunganalytics/a/f/d;)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->c:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/f/d;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a(Lcom/samsung/context/sdk/samsunganalytics/a/f/d;)V

    goto :goto_9
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->c:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->c:Z

    return v0
.end method

.method public c()V
    .registers 5

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->c:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/d;->a(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a(J)V

    goto :goto_4
.end method

.method public d()Ljava/util/Queue;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/context/sdk/samsunganalytics/a/f/d;",
            ">;"
        }
    .end annotation

    iget-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->c:Z

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->b:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/b/a;->a()Ljava/util/Queue;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->c()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a/a;->a()Ljava/util/Queue;

    move-result-object v0

    goto :goto_a

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get log from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->c:Z

    if-nez v1, :cond_50

    const-string/jumbo v1, "Queue "

    :goto_2e
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;)V

    goto :goto_10

    :cond_50
    const-string/jumbo v1, "Database "

    goto :goto_2e
.end method
