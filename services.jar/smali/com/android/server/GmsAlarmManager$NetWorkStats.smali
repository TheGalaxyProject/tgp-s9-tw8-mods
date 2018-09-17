.class Lcom/android/server/GmsAlarmManager$NetWorkStats;
.super Ljava/lang/Object;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetWorkStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;
    }
.end annotation


# instance fields
.field data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:J

.field final mLock:Ljava/lang/Object;

.field private mTime:J


# direct methods
.method static synthetic -get0(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/GmsAlarmManager$NetWorkStats;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    return-wide v0
.end method

.method private constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    iput-wide v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GmsAlarmManager$NetWorkStats;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/GmsAlarmManager$NetWorkStats;-><init>()V

    return-void
.end method


# virtual methods
.method public addStartTime(J)V
    .registers 12

    new-instance v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;-><init>(Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;)V

    iput-wide p1, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xa4cb800

    sub-long/2addr v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/GmsAlarmManager$NetWorkStats;->removeLastData(J)V

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_1d

    monitor-exit v2

    return-void

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dump(J)Ljava/lang/String;
    .registers 22

    const-wide/16 v10, 0x0

    const-wide/32 v12, 0x5265c00

    sub-long v6, p1, v12

    const/4 v5, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v13

    const-wide/16 v14, 0x0

    cmp-long v12, v6, v14

    if-gtz v12, :cond_e2

    :try_start_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    int-to-long v14, v12

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    const/4 v4, 0x0

    :goto_27
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_53

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_50

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    add-long/2addr v10, v14

    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_53
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_92

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-nez v12, :cond_92

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J
    :try_end_8f
    .catchall {:try_start_19 .. :try_end_8f} :catchall_1c2

    sub-long v14, p1, v14

    add-long/2addr v10, v14

    :cond_92
    :goto_92
    monitor-exit v13

    const-wide/32 v12, 0x36ee80

    div-long v2, v10, v12

    const-wide/32 v12, 0x36ee80

    mul-long/2addr v12, v2

    sub-long v12, v10, v12

    const-wide/32 v14, 0xea60

    div-long v8, v12, v14

    const-wide/32 v12, 0xea60

    div-long v12, v10, v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mTime:J

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "h "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "m"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "X)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_e2
    const/4 v4, 0x0

    :goto_e3
    :try_start_e3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v4, v12, :cond_171

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-eqz v12, :cond_142

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    sub-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-lez v12, :cond_142

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    if-nez v12, :cond_163

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    cmp-long v12, v14, v6

    if-gez v12, :cond_145

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    sub-long/2addr v14, v6

    add-long/2addr v10, v14

    :cond_142
    :goto_142
    add-int/lit8 v4, v4, 0x1

    goto :goto_e3

    :cond_145
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v0, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    add-long/2addr v10, v14

    goto :goto_142

    :cond_163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    add-long/2addr v10, v14

    goto :goto_142

    :cond_171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_92

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->totalTime:J

    const-wide/16 v16, 0x0

    cmp-long v12, v14, v16

    if-nez v12, :cond_92

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J

    cmp-long v12, v14, v6

    if-gez v12, :cond_1c5

    const-wide/32 v10, 0x5265c00

    :goto_1b4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mCount:J
    :try_end_1c0
    .catchall {:try_start_e3 .. :try_end_1c0} :catchall_1c2

    goto/16 :goto_92

    :catchall_1c2
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_1c5
    :try_start_1c5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v14, v12, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->startTime:J
    :try_end_1db
    .catchall {:try_start_1c5 .. :try_end_1db} :catchall_1c2

    sub-long v14, p1, v14

    add-long/2addr v10, v14

    goto :goto_1b4
.end method

.method public removeLastData(J)V
    .registers 12

    const-wide/16 v6, 0x0

    cmp-long v2, p1, v6

    if-gez v2, :cond_7

    return-void

    :cond_7
    iget-object v3, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_c
    :try_start_c
    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_31

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v4, v2, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    iget-wide v4, v2, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->endTime:J

    cmp-long v2, v4, p1

    if-lez v2, :cond_3d

    move v1, v0

    :cond_31
    const/4 v0, 0x0

    :goto_32
    if-ge v0, v1, :cond_40

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_c .. :try_end_3a} :catchall_42

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_40
    monitor-exit v3

    return-void

    :catchall_42
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setEndTime(J)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_22

    move-result v0

    if-nez v0, :cond_d

    monitor-exit v1

    return-void

    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/GmsAlarmManager$NetWorkStats;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/GmsAlarmManager$NetWorkStats$NetWorkData;->setEndTime(J)V
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_22

    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method
