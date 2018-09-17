.class public Lcom/att/iqi/lib/IQIManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;,
        Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;,
        Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;
    }
.end annotation


# static fields
.field private static a:Lcom/att/iqi/lib/IQIManager;

.field private static final f:Ljava/lang/Object;


# instance fields
.field private b:Lcom/att/iqi/IIQIService;

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/att/iqi/IMetricQueryCallback;

.field private final h:Lcom/att/iqi/IMetricSourcingCallback;

.field private final i:Lcom/att/iqi/IProfileChangedCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/IQIManager;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$1;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->g:Lcom/att/iqi/IMetricQueryCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$2;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$2;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->h:Lcom/att/iqi/IMetricSourcingCallback;

    new-instance v0, Lcom/att/iqi/lib/IQIManager$3;

    invoke-direct {v0, p0}, Lcom/att/iqi/lib/IQIManager$3;-><init>(Lcom/att/iqi/lib/IQIManager;)V

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IProfileChangedCallback;

    invoke-direct {p0}, Lcom/att/iqi/lib/IQIManager;->a()Lcom/att/iqi/IIQIService;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    return-void
.end method

.method static synthetic a(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    return-object v0
.end method

.method private a()Lcom/att/iqi/IIQIService;
    .registers 9

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    if-nez v4, :cond_30

    const-string/jumbo v0, "android.os.ServiceManager"

    :try_start_8
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_b} :catch_33

    move-result-object v1

    const/4 v4, 0x1

    :try_start_d
    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string/jumbo v5, "getService"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_1a} :catch_35

    move-result-object v2

    const/4 v4, 0x1

    :try_start_1c
    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "iqi"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    check-cast v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_2d} :catch_42
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_2d} :catch_44

    if-nez v3, :cond_37

    return-object v7

    :cond_30
    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    return-object v4

    :catch_33
    move-exception v2

    return-object v7

    :catch_35
    move-exception v3

    return-object v7

    :cond_37
    :try_start_37
    invoke-static {v3}, Lcom/att/iqi/IIQIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object v4

    iput-object v4, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_41} :catch_42
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_41} :catch_44

    return-object v4

    :catch_42
    move-exception v3

    return-object v7

    :catch_44
    move-exception v3

    return-object v7
.end method

.method static synthetic b(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic c(Lcom/att/iqi/lib/IQIManager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/att/iqi/lib/IQIManager;
    .registers 3

    sget-object v0, Lcom/att/iqi/lib/IQIManager;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v2, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/lib/IQIManager;

    if-eqz v2, :cond_b

    :goto_7
    sget-object v2, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/lib/IQIManager;

    monitor-exit v0

    return-object v2

    :cond_b
    new-instance v2, Lcom/att/iqi/lib/IQIManager;

    invoke-direct {v2}, Lcom/att/iqi/lib/IQIManager;-><init>()V

    sput-object v2, Lcom/att/iqi/lib/IQIManager;->a:Lcom/att/iqi/lib/IQIManager;

    goto :goto_7

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public registerMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .registers 9

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_8
    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->h:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {v3, p1, v4}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_18} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_3c
    .catchall {:try_start_8 .. :try_end_18} :catchall_39

    :goto_18
    :try_start_18
    monitor-exit v0

    return-void

    :catch_1a
    move-exception v1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Callback already registered for metric ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_39
    move-exception v2

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_39

    throw v2

    :catch_3c
    move-exception v3

    goto :goto_18
.end method

.method public registerProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .registers 6

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_5
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    :goto_d
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_1d
    .catchall {:try_start_5 .. :try_end_12} :catchall_1f

    :goto_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_1f

    return-void

    :cond_14
    return-void

    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {v2, v3}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1f

    goto :goto_d

    :catch_1d
    move-exception v2

    goto :goto_12

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public registerQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .registers 9

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_8
    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v4, p0, Lcom/att/iqi/lib/IQIManager;->g:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {v3, p1, v4}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_18} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_3c
    .catchall {:try_start_8 .. :try_end_18} :catchall_39

    :goto_18
    :try_start_18
    monitor-exit v0

    return-void

    :catch_1a
    move-exception v1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Callback already registered for metric ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_39
    move-exception v2

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_18 .. :try_end_3b} :catchall_39

    throw v2

    :catch_3c
    move-exception v3

    goto :goto_18
.end method

.method public shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    :try_start_3
    iget-object v1, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    invoke-interface {v1, p1}, Lcom/att/iqi/IIQIService;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b

    move-result v1

    return v1

    :cond_a
    return v2

    :catch_b
    move-exception v0

    return v2
.end method

.method public submitMetric(Lcom/att/iqi/lib/Metric;)V
    .registers 3

    if-eqz p1, :cond_8

    :try_start_2
    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    invoke-interface {v0, p1}, Lcom/att/iqi/IIQIService;->submitMetric(Lcom/att/iqi/lib/Metric;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_9

    :goto_7
    return-void

    :cond_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_7
.end method

.method public unregisterMetricSourcingListener(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricSourcingListener;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->h:Lcom/att/iqi/IMetricSourcingCallback;

    invoke-interface {v2, p1, v3}, Lcom/att/iqi/IIQIService;->unregisterMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_1d
    .catchall {:try_start_8 .. :try_end_18} :catchall_1a

    :goto_18
    :try_start_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v1

    :catch_1d
    move-exception v2

    goto :goto_18
.end method

.method public unregisterProfileChangeListener(Lcom/att/iqi/lib/IQIManager$ProfileChangeListener;)V
    .registers 6

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    monitor-enter v0

    :try_start_5
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1f

    :try_start_a
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_1d
    .catchall {:try_start_a .. :try_end_f} :catchall_1f

    move-result v2

    if-nez v2, :cond_15

    :goto_12
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_1f

    return-void

    :cond_14
    return-void

    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->i:Lcom/att/iqi/IProfileChangedCallback;

    invoke-interface {v2, v3}, Lcom/att/iqi/IIQIService;->unregisterProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_1d
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1f

    goto :goto_12

    :catch_1d
    move-exception v2

    goto :goto_12

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public unregisterQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;)V
    .registers 7

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_8
    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->b:Lcom/att/iqi/IIQIService;

    iget-object v3, p0, Lcom/att/iqi/lib/IQIManager;->g:Lcom/att/iqi/IMetricQueryCallback;

    invoke-interface {v2, p1, v3}, Lcom/att/iqi/IIQIService;->unregisterMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_1d
    .catchall {:try_start_8 .. :try_end_18} :catchall_1a

    :goto_18
    :try_start_18
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1a

    throw v1

    :catch_1d
    move-exception v2

    goto :goto_18
.end method
