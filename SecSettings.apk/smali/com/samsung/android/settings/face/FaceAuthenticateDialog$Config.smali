.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Config"
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mFailedFaceAttempts:I

.field private static mTimeoutEndTime:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDpValue(ILandroid/content/Context;)I
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float v1, p0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private static declared-synchronized getFaceValues()V
    .registers 6

    const-class v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_failed_attempt"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mFailedFaceAttempts:I

    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_remaining_time"

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mTimeoutEndTime:J
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_34

    :goto_28
    monitor-exit v1

    return-void

    :cond_2a
    :try_start_2a
    const-string/jumbo v0, "Config"

    const-string/jumbo v2, "getFaceValues : mContext is null."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_34

    goto :goto_28

    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getFailedFaceAttempts()I
    .registers 4

    const-class v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getFaceValues()V

    const-string/jumbo v0, "Config"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFailedFaceAttempts: return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mFailedFaceAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mFailedFaceAttempts:I
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    monitor-exit v1

    return v0

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getRemaingTimeToUnlock()J
    .registers 10

    const-wide/16 v8, 0x0

    const-class v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;

    monitor-enter v3

    const-wide/16 v0, 0x0

    :try_start_7
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getFaceValues()V

    sget-wide v4, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mTimeoutEndTime:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_22

    sget-wide v4, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mTimeoutEndTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    cmp-long v2, v0, v8

    if-gtz v2, :cond_22

    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mTimeoutEndTime:J

    const-wide/16 v0, 0x0

    :cond_22
    const-string/jumbo v2, "Config"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getRemaingTimeToUnlock: return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3e

    monitor-exit v3

    return-wide v0

    :catchall_3e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized initFailedFaceAttempts(Landroid/content/Context;)V
    .registers 3

    const-class v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;

    monitor-enter v1

    :try_start_3
    sput-object p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getFaceValues()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized putFaceValues()V
    .registers 6

    const-class v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_25

    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_failed_attempt"

    sget v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mFailedFaceAttempts:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "biometrics_remaining_time"

    sget-wide v4, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mTimeoutEndTime:J

    invoke-static {v0, v2, v4, v5}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2f

    :goto_23
    monitor-exit v1

    return-void

    :cond_25
    :try_start_25
    const-string/jumbo v0, "Config"

    const-string/jumbo v2, "putFaceValues : mContext is null."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_23

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reportFailedFaceAttempts()V
    .registers 4

    const-class v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getFaceValues()V

    sget v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mFailedFaceAttempts:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mFailedFaceAttempts:I

    const-string/jumbo v0, "Config"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reportFailedFaceAttempts: mFailedFaceAttempts "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mFailedFaceAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->setRemaingTimeToUnlock()V
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2d

    monitor-exit v1

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetFailedFaceNBackupAttempts()V
    .registers 4

    const-class v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    sput v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mFailedFaceAttempts:I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mTimeoutEndTime:J

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->putFaceValues()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetRemaingTimeToUnlock()V
    .registers 4

    const-class v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;

    monitor-enter v1

    const-wide/16 v2, 0x0

    :try_start_5
    sput-wide v2, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mTimeoutEndTime:J

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->putFaceValues()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setRemaingTimeToUnlock()V
    .registers 6

    const-class v2, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;

    monitor-enter v2

    :try_start_3
    const-string/jumbo v0, "Config"

    const-string/jumbo v1, "setRemaingTimeToUnlock called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mFailedFaceAttempts:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_20

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v4, 0x7530

    add-long/2addr v0, v4

    :goto_19
    sput-wide v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->mTimeoutEndTime:J

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->putFaceValues()V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_23

    monitor-exit v2

    return-void

    :cond_20
    const-wide/16 v0, 0x0

    goto :goto_19

    :catchall_23
    move-exception v0

    monitor-exit v2

    throw v0
.end method
