.class public Lcom/samsung/android/settings/SAUtils;
.super Ljava/lang/Object;
.source "SAUtils.java"


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/samsung/android/settings/SAUtils;


# instance fields
.field private mRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/SAUtils;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/SAUtils;->sInstance:Lcom/samsung/android/settings/SAUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/SAUtils;->mRes:Landroid/content/res/Resources;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;
    .registers 3

    const-class v1, Lcom/samsung/android/settings/SAUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/android/settings/SAUtils;->sInstance:Lcom/samsung/android/settings/SAUtils;

    if-nez v0, :cond_e

    new-instance v0, Lcom/samsung/android/settings/SAUtils;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SAUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/settings/SAUtils;->sInstance:Lcom/samsung/android/settings/SAUtils;

    :cond_e
    sget-object v0, Lcom/samsung/android/settings/SAUtils;->sInstance:Lcom/samsung/android/settings/SAUtils;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public insertLog(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    return-void
.end method

.method public insertLog(II)V
    .registers 5

    const-wide/16 v0, -0x270f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/settings/SAUtils;->insertLog(IIJ)V

    return-void
.end method

.method public insertLog(IIJ)V
    .registers 12

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/SAUtils;->insertLog(IILjava/lang/String;J)V

    return-void
.end method

.method public insertLog(IILjava/lang/String;J)V
    .registers 16

    if-nez p1, :cond_10

    sget-boolean v5, Lcom/samsung/android/settings/SAUtils;->DBG:Z

    if-eqz v5, :cond_f

    const-string/jumbo v5, "SAUtils"

    const-string/jumbo v6, "insertLog fail: screen res id is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    iget-object v5, p0, Lcom/samsung/android/settings/SAUtils;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3e

    sget-boolean v5, Lcom/samsung/android/settings/SAUtils;->DBG:Z

    if-eqz v5, :cond_3d

    const-string/jumbo v5, "SAUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertLog fail: screen id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " returns null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return-void

    :cond_3e
    const/4 v3, 0x0

    if-eqz p2, :cond_47

    iget-object v5, p0, Lcom/samsung/android/settings/SAUtils;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_47
    sget-boolean v5, Lcom/samsung/android/settings/SAUtils;->DBG:Z

    if-eqz v5, :cond_bb

    const-string/jumbo v6, "SAUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertLog screen:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_e2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " event:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_74
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_e6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " detail:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_8e
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v8, -0x270f

    cmp-long v5, p4, v8

    if-eqz v5, :cond_ea

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " value:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_b0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    if-eqz v3, :cond_ee

    :try_start_bd
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v0, v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    invoke-virtual {v0, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    if-eqz p3, :cond_cd

    invoke-virtual {v0, p3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    :cond_cd
    const-wide/16 v6, -0x270f

    cmp-long v5, p4, v6

    if-eqz v5, :cond_d6

    invoke-virtual {v0, p4, p5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventValue(J)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    :cond_d6
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_e1
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_bd .. :try_end_e1} :catch_102

    :cond_e1
    :goto_e1
    return-void

    :cond_e2
    const-string/jumbo v5, " enter"

    goto :goto_74

    :cond_e6
    const-string/jumbo v5, ""

    goto :goto_8e

    :cond_ea
    const-string/jumbo v5, ""

    goto :goto_b0

    :cond_ee
    :try_start_ee
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;-><init>()V

    invoke-virtual {v1, v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_101
    .catch Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException; {:try_start_ee .. :try_end_101} :catch_102

    goto :goto_e1

    :catch_102
    move-exception v2

    const-string/jumbo v5, "SAUtils"

    const-string/jumbo v6, "Exception occurred while SA logging"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/samsung/android/settings/SAUtils;->DBG:Z

    if-eqz v5, :cond_e1

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/AnalyticsException;->printStackTrace()V

    goto :goto_e1
.end method
