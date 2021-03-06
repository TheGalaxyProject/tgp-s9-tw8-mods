.class public Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mRequestedQuality:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SaveChosenLockWorkerBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .registers 13

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get19()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->setRecoveryScreenLocked(ZI)V

    :cond_11
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    iget v9, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get20()Z

    move-result v5

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mHasChallenge:Z

    if-nez v5, :cond_2c

    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get17()Z

    move-result v5

    if-eqz v5, :cond_87

    :cond_2c
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_2f
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_b5

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    iget v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v5, v6, v8, v9, v7}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B

    move-result-object v2

    :goto_41
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeIris:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_ca

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeIris:J

    iget v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v5, v6, v8, v9, v7}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B

    move-result-object v4

    :goto_53
    iget-wide v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeFace:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_dc

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v8, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeFace:J

    iget v7, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v5, v6, v8, v9, v7}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B
    :try_end_64
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_2f .. :try_end_64} :catch_c7

    move-result-object v3

    :goto_65
    if-nez v2, :cond_70

    const-string/jumbo v5, "ChooseLockPassword"

    const-string/jumbo v6, "critical: no token returned for known good password."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "hw_auth_token"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v5, "hw_auth_token_iris"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v5, "hw_auth_token_face"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_87
    invoke-static {}, Lcom/android/settings/ChooseLockPassword;->-get17()Z

    move-result v5

    if-eqz v5, :cond_b4

    iget v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->isChangeRequested(Landroid/content/Context;I)I

    move-result v5

    if-lez v5, :cond_b4

    const-string/jumbo v5, "password"

    iget-object v6, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v5, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-static {v5}, Lcom/android/settings/Utils;->lockProfile(I)V

    :cond_b4
    return-object v1

    :cond_b5
    const/4 v5, 0x1

    :try_start_b6
    new-array v2, v5, [B

    const/4 v5, -0x1

    const/4 v6, 0x0

    aput-byte v5, v2, v6

    const-string/jumbo v5, "ChooseLockPassword"

    const-string/jumbo v6, "critical: challenge returned zero."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    :catch_c7
    move-exception v0

    const/4 v2, 0x0

    goto :goto_65

    :cond_ca
    const/4 v5, 0x1

    new-array v4, v5, [B

    const/4 v5, -0x1

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    const-string/jumbo v5, "ChooseLockPassword"

    const-string/jumbo v6, "critical: challenge returned zero."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_53

    :cond_dc
    const/4 v5, 0x1

    new-array v3, v5, [B

    const/4 v5, -0x1

    const/4 v6, 0x0

    aput-byte v5, v3, v6

    const-string/jumbo v5, "ChooseLockPassword"

    const-string/jumbo v6, "critical: mChallengeFace returned zero."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ec
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_b6 .. :try_end_ec} :catch_c7

    goto/16 :goto_65
.end method

.method public bridge synthetic setBlocking(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SaveChosenLockWorkerBase;->setBlocking(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/settings/SaveChosenLockWorkerBase;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    return-void
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJJJLjava/lang/String;Ljava/lang/String;II)V
    .registers 24

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    move/from16 v8, p13

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    move/from16 v0, p12

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    move/from16 v0, p13

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    move-wide/from16 v0, p6

    iput-wide v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeIris:J

    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->mChallengeFace:J

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;->start()V

    return-void
.end method
