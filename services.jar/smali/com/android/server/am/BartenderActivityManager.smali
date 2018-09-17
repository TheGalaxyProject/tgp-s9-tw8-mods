.class public Lcom/android/server/am/BartenderActivityManager;
.super Ljava/lang/Object;
.source "BartenderActivityManager.java"


# static fields
.field static DEBUG_CPUSET:Z = false

.field static final TAG:Ljava/lang/String; = "BartenderActivityManager"

.field private static manager:Lcom/android/server/am/BartenderActivityManager;


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mContext:Landroid/content/Context;

.field private final mSystemPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mSystemPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/am/BartenderActivityManager;->init()V

    return-void
.end method

.method static getManager()Lcom/android/server/am/BartenderActivityManager;
    .registers 1

    sget-object v0, Lcom/android/server/am/BartenderActivityManager;->manager:Lcom/android/server/am/BartenderActivityManager;

    return-object v0
.end method

.method static getManager(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/BartenderActivityManager;
    .registers 2

    invoke-static {p0}, Lcom/android/server/am/BartenderActivityManager;->prepareManager(Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/am/BartenderActivityManager;->getManager()Lcom/android/server/am/BartenderActivityManager;

    move-result-object v0

    return-object v0
.end method

.method private hasOngoingNotifcation(Ljava/lang/String;)Z
    .registers 11

    const/4 v6, 0x0

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    if-nez v2, :cond_8

    return v6

    :cond_8
    :try_start_8
    iget-object v5, p0, Lcom/android/server/am/BartenderActivityManager;->mSystemPackage:Ljava/lang/String;

    invoke-interface {v2, v5}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_11

    return v6

    :cond_11
    array-length v7, v0

    move v5, v6

    :goto_13
    if-ge v5, v7, :cond_38

    aget-object v4, v0, v5

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_28

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_28
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->flags:I
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_34

    and-int/lit8 v8, v8, 0x22

    if-eqz v8, :cond_25

    const/4 v5, 0x1

    return v5

    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    return v6
.end method

.method private init()V
    .registers 3

    sget-boolean v0, Lcom/android/server/am/BartenderActivityManager;->DEBUG_CPUSET:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "BartenderActivityManager"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return-void
.end method

.method private isAllowBarTenderKill(Lcom/android/server/am/ProcessRecord;ZZ)Z
    .registers 7

    const/4 v2, 0x0

    if-eqz p2, :cond_a

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    return v2

    :cond_a
    if-eqz p3, :cond_13

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    return v2

    :cond_13
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_1d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_44

    if-ne p1, v0, :cond_2b

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :cond_2b
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_4a

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/BartenderActivityManager;->hasOngoingNotifcation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    return v2

    :catchall_44
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_4a
    const/4 v0, 0x1

    return v0
.end method

.method static declared-synchronized prepareManager(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    const-class v1, Lcom/android/server/am/BartenderActivityManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/am/BartenderActivityManager;->manager:Lcom/android/server/am/BartenderActivityManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-nez v0, :cond_9

    if-nez p0, :cond_b

    :cond_9
    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/server/am/BartenderActivityManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/BartenderActivityManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/BartenderActivityManager;->manager:Lcom/android/server/am/BartenderActivityManager;
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_14

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public sendControlInfo(ILjava/lang/String;)Z
    .registers 16

    const/4 v9, 0x1

    const/4 v12, 0x0

    const-string/jumbo v8, "cached"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string/jumbo v8, "abnormal"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v8, "kill"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string/jumbo v8, "stay"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string/jumbo v8, "release"

    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v2, :cond_8b

    if-nez v0, :cond_8b

    if-nez v4, :cond_8b

    if-nez v7, :cond_8b

    move v8, v6

    :goto_2e
    if-nez v8, :cond_8d

    const-string/jumbo v8, "BartenderActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BarTender: pid : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " cached="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " abnormal="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " kill="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " stay="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " release="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "BartenderActivityManager"

    const-string/jumbo v9, "BarTender: Value is not set. Type needs at least 1 target group."

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_8b
    move v8, v9

    goto :goto_2e

    :cond_8d
    const-string/jumbo v8, "BartenderActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "BarTender: pid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " cached="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " abnormal="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " kill="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " stay="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " release="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v10, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_e2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v8, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_ef
    if-ltz v3, :cond_100

    iget-object v8, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_fd
    .catchall {:try_start_e2 .. :try_end_fd} :catchall_12b

    if-ne v8, p1, :cond_128

    move-object v1, v5

    :cond_100
    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-nez v1, :cond_131

    const-string/jumbo v8, "BartenderActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "BarTender: pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is nonexistent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_128
    add-int/lit8 v3, v3, -0x1

    goto :goto_ef

    :catchall_12b
    move-exception v8

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v8

    :cond_131
    if-eqz v4, :cond_164

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/am/BartenderActivityManager;->isAllowBarTenderKill(Lcom/android/server/am/ProcessRecord;ZZ)Z

    move-result v8

    if-eqz v8, :cond_14e

    iget-object v10, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_13c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v8, v1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v8, :cond_14a

    const-string/jumbo v8, "excessive cpu kill"

    const/4 v11, 0x1

    invoke-virtual {v1, v8, v11}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_14a
    .catchall {:try_start_13c .. :try_end_14a} :catchall_15e

    :cond_14a
    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :cond_14e
    :goto_14e
    iget-object v10, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_151
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v8, p0, Lcom/android/server/am/BartenderActivityManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V
    :try_end_159
    .catchall {:try_start_151 .. :try_end_159} :catchall_180

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v9

    :catchall_15e
    move-exception v8

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v8

    :cond_164
    if-eqz v6, :cond_173

    if-eqz v2, :cond_16c

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowCachedStay:Z

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    :cond_16c
    if-eqz v0, :cond_14e

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    iput-boolean v12, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    goto :goto_14e

    :cond_173
    if-eqz v2, :cond_179

    iput-boolean v9, v1, Lcom/android/server/am/ProcessRecord;->slowCached:Z

    iput-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->slowCachedStay:Z

    :cond_179
    if-eqz v0, :cond_14e

    iput-boolean v9, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    iput-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    goto :goto_14e

    :catchall_180
    move-exception v8

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v8
.end method
