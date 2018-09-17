.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1


# instance fields
.field private bSelfStop:Z

.field private mAllowIndexs:[I

.field private mCaptureStartTime:J

.field private mHandler:Landroid/os/Handler;

.field private mLatestError:I

.field private mOpId:J

.field private mQualityErrorCount:I

.field private mRejectCount:I

.field private mTimeout:I

.field private mTimeoutCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;)V
    .registers 24

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAllowIndexs:[I

    const v2, 0xea60

    iput v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeout:I

    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private semStopTimeout()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFromPassCompat:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeoutCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeoutCallback:Ljava/lang/Runnable;

    :cond_12
    return-void
.end method

.method private semWriteEventLog(I)V
    .registers 4

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    neg-int p1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_stop"

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    invoke-virtual {p0, p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semStopTimeout()V

    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->bSelfStop:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :goto_b
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semWriteEventLog(I)V

    return-void

    :cond_f
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public abstract handleFailedAttempt()I
.end method

.method synthetic lambda$-com_android_server_fingerprint_AuthenticationClient_8982()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleTimeout()V

    return-void
.end method

.method public onAcquired(II)Z
    .registers 7

    const/4 v2, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_b

    packed-switch p2, :pswitch_data_3e

    :cond_b
    :goto_b
    :pswitch_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/fingerprint/AuthenticationClient;->semIsQualityFailedInfo(II)Z

    move-result v1

    if-eqz v1, :cond_17

    iget v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mQualityErrorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mQualityErrorCount:I

    :cond_17
    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-nez v1, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->semLoggingQualityErrorInfo(I)V

    :cond_1e
    return v0

    :pswitch_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semStopTimeout()V

    goto :goto_b

    :pswitch_29
    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFromFPMS:Z

    if-nez v1, :cond_35

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFromPassCompat:Z

    if-nez v1, :cond_35

    iget v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    if-ne v1, v2, :cond_b

    :cond_35
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    invoke-virtual {p0, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    const/4 v0, 0x1

    goto :goto_b

    nop

    :pswitch_data_3e
    .packed-switch 0x2712
        :pswitch_1f
        :pswitch_b
        :pswitch_29
        :pswitch_b
        :pswitch_b
        :pswitch_29
    .end packed-switch
.end method

.method public onAuthenticated(II)Z
    .registers 21

    const/4 v14, 0x0

    if-eqz p1, :cond_16d

    const/4 v8, 0x1

    :goto_4
    sget-boolean v3, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v3, :cond_40

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ClientMonitor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] : onAuthenticated : fpId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    if-eqz v8, :cond_89

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mAllowIndexs:[I

    if-eqz v3, :cond_89

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ClientMonitor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] : onAuthenticated : allowIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mAllowIndexs:[I

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mAllowIndexs:[I

    const/4 v3, 0x0

    array-length v5, v4

    :goto_80
    if-ge v3, v5, :cond_89

    aget v11, v4, v3

    move/from16 v0, p1

    if-ne v11, v0, :cond_170

    const/4 v8, 0x1

    :cond_89
    if-eqz v8, :cond_90

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    :cond_90
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v13

    if-eqz v13, :cond_1f4

    :try_start_96
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xfc

    invoke-static {v3, v4, v8}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-nez v8, :cond_174

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v4

    invoke-interface {v13, v4, v5}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_a8} :catch_1e5
    .catch Ljava/lang/NullPointerException; {:try_start_96 .. :try_end_a8} :catch_1e5

    :goto_a8
    if-nez v8, :cond_20a

    if-eqz v13, :cond_bc

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->semHasPrivilegedAttr(I)Z

    move-result v3

    if-nez v3, :cond_bc

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    :cond_bc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()I

    move-result v12

    if-eqz v12, :cond_105

    :try_start_c2
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Forcing lockout (fp driver code should do this!), mode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    const/4 v3, 0x1

    if-ne v12, v3, :cond_1f7

    const/4 v10, 0x7

    :goto_ed
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v4

    const/4 v3, 0x0

    invoke-interface {v13, v4, v5, v10, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "FPIB"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semGetPackageNameForSurvey()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_105
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_105} :catch_1fb
    .catch Ljava/lang/NullPointerException; {:try_start_c2 .. :try_end_105} :catch_1fb

    :cond_105
    :goto_105
    if-eqz v12, :cond_207

    const/4 v3, 0x1

    :goto_108
    or-int/2addr v14, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mRejectCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mRejectCount:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "FPIF"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semGetPackageNameForSurvey()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "FPTF"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    move-wide/from16 v16, v0

    sub-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_13f
    sget-boolean v3, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v3, :cond_16c

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ClientMonitor["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] : onAuthenticated : result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16c
    return v14

    :cond_16d
    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_170
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_80

    :cond_174
    :try_start_174
    sget-boolean v3, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v3, :cond_1b7

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAuthenticated(owner="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", gp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v3

    if-eqz v3, :cond_1c3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFromPassCompat:Z

    if-eqz v3, :cond_1f2

    :cond_1c3
    new-instance v2, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v3, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v6

    move/from16 v4, p2

    move/from16 v5, p1

    invoke-direct/range {v2 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    :goto_1d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v3

    invoke-interface {v13, v4, v5, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDone:Z
    :try_end_1e3
    .catch Landroid/os/RemoteException; {:try_start_174 .. :try_end_1e3} :catch_1e5
    .catch Ljava/lang/NullPointerException; {:try_start_174 .. :try_end_1e3} :catch_1e5

    goto/16 :goto_a8

    :catch_1e5
    move-exception v9

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "Failed to notify Authenticated:"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v14, 0x1

    goto/16 :goto_a8

    :cond_1f2
    const/4 v2, 0x0

    goto :goto_1d3

    :cond_1f4
    const/4 v14, 0x1

    goto/16 :goto_a8

    :cond_1f7
    const/16 v10, 0x9

    goto/16 :goto_ed

    :catch_1fb
    move-exception v9

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "Failed to notify lockout:"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_105

    :cond_207
    const/4 v3, 0x0

    goto/16 :goto_108

    :cond_20a
    const/4 v3, 0x1

    or-int/2addr v14, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "FPIS"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semGetPackageNameForSurvey()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "FPTS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    move-wide/from16 v16, v0

    sub-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "FPSF"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mRejectCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "FPSQ"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mQualityErrorCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_13f
.end method

.method public onEnrollResult(III)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public onError(II)Z
    .registers 4

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semStopTimeout()V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_e

    iput p2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    :cond_9
    :goto_9
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v0

    return v0

    :cond_e
    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    iput p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    goto :goto_9
.end method

.method public onRemoved(III)Z
    .registers 6

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public abstract semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
.end method

.method public abstract semHandleTimeout()V
.end method

.method public semSetAttribute(Landroid/os/Bundle;Z)V
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->semSetAttribute(Landroid/os/Bundle;Z)V

    if-eqz p1, :cond_20

    const-string/jumbo v0, "request_template_index_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAllowIndexs:[I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "useManualTimeout"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20

    iput v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeout:I

    :cond_20
    return-void
.end method

.method public start()I
    .registers 13

    const/4 v11, 0x3

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v2

    if-nez v2, :cond_12

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "start authentication: no fingerprint HAL!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_12
    :try_start_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v5

    invoke-interface {v2, v6, v7, v5}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result v4

    const-string/jumbo v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthentication FP_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_76

    const-string/jumbo v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthentication failed, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "fingeprintd_auth_start_error"

    invoke-static {v5, v6, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    return v4

    :cond_76
    sget-boolean v5, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v5, :cond_9f

    const-string/jumbo v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is authenticating..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9f
    iget-boolean v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFromPassCompat:Z

    if-eqz v5, :cond_c6

    iget v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeout:I

    if-lez v5, :cond_c6

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeoutCallback:Ljava/lang/Runnable;

    if-eqz v5, :cond_b5

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeoutCallback:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeoutCallback:Ljava/lang/Runnable;

    :cond_b5
    new-instance v5, Lcom/android/server/fingerprint/-$Lambda$Z7ctpx5IECazwOZPm-1LTuIO7ws;

    invoke-direct {v5, p0}, Lcom/android/server/fingerprint/-$Lambda$Z7ctpx5IECazwOZPm-1LTuIO7ws;-><init>(Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeoutCallback:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeoutCallback:Ljava/lang/Runnable;

    iget v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeout:I

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_c6
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_c6} :catch_c7

    :cond_c6
    return v10

    :catch_c7
    move-exception v3

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "startAuthentication failed"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v11
.end method

.method public stop(Z)I
    .registers 14

    const/4 v11, 0x3

    const/4 v10, 0x0

    iget-boolean v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    if-eqz v5, :cond_10

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "stopAuthentication: already cancelled!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_10
    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semStopTimeout()V

    iput-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->bSelfStop:Z

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v2

    if-nez v2, :cond_25

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "stopAuthentication: no fingerprint HAL!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_25
    :try_start_25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v4

    const-string/jumbo v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopAuthentication FP_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_74

    const-string/jumbo v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopAuthentication failed, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_74
    sget-boolean v5, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v5, :cond_9d

    const-string/jumbo v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "client "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is no longer authenticating"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_9d} :catch_a1

    :cond_9d
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    return v10

    :catch_a1
    move-exception v3

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "stopAuthentication failed"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v11
.end method
