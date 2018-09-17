.class public Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/settings/CredentialCheckResultTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;,
        Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;,
        Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;,
        Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/android/settings/CredentialCheckResultTracker$Listener;"
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-ConfirmLockPattern$StageSwitchesValues:[I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private external:Z

.field private hasChallenge:Z

.field private isShowBackUpPinButton:Z

.field private knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

.field private mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mBackUpPinButton:Landroid/widget/Button;

.field private mBackupPinButtonClickListner:Landroid/view/View$OnClickListener;

.field private mChallenge:J

.field private mChallengeFace:J

.field private mChallengeIris:J

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

.field private mDetailsText:Ljava/lang/CharSequence;

.field private mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

.field private mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

.field private mLeftSpacerLandscape:Landroid/view/View;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNumWrongConfirmAttempts:I

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPendingLockCheckFace:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mPendingLockCheckIris:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field

.field private mRightSpacerLandscape:Landroid/view/View;

.field mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mUserId:I

.field private mUsingFingerprint:Z

.field private mUsingIris:Z

.field private mUsingSmartScan:Z


# direct methods
.method static synthetic -get0(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->hasChallenge:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallenge:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .registers 2

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeFace:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeIris:J

    return-wide v0
.end method

.method static synthetic -get4(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/CredentialCheckResultTracker;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/samsung/android/settings/lockscreen/LockCustomTextView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method private static synthetic -getcom-android-settings-ConfirmLockPattern$StageSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-com-android-settings-ConfirmLockPattern$StageSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-com-android-settings-ConfirmLockPattern$StageSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/ConfirmLockPattern$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-com-android-settings-ConfirmLockPattern$StageSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallenge:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeFace:J

    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeIris:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I
    .registers 2

    iput p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheckFace:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheckIris:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateAttemptLockoutDesc(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;-><init>()V

    const-string/jumbo v0, "ConfirmLockPatternFragment"

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->isShowBackUpPinButton:Z

    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingFingerprint:Z

    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingIris:Z

    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingSmartScan:Z

    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->hasChallenge:Z

    iput-wide v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallenge:J

    iput-wide v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeIris:J

    iput-wide v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallengeFace:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackupPinButtonClickListner:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method private getActiveViews()[[Ljava/lang/Object;
    .registers 11

    const/4 v9, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-nez v6, :cond_38

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v0

    const/4 v1, 0x0

    :goto_3f
    array-length v6, v0

    if-ge v1, v6, :cond_5d

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_48
    aget-object v6, v0, v1

    array-length v6, v6

    if-ge v2, v6, :cond_57

    aget-object v6, v0, v1

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    :cond_57
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_5d
    iget-object v6, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_73

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_73
    const-class v6, Ljava/lang/Object;

    const/4 v7, 0x2

    new-array v7, v7, [I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    aput v8, v7, v9

    aget-object v8, v0, v9

    array-length v8, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_8b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_ac

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_98
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_a9

    aget-object v6, v4, v1

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    :cond_a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    :cond_ac
    return-object v4
.end method

.method private getDefaultDetails()I
    .registers 5

    const v3, 0x7f12109b

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->isFingerprintDisallowedByStrongAuth()Z

    move-result v0

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern;->-get0()Z

    move-result v1

    if-nez v1, :cond_15

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    return v3

    :cond_16
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_30

    if-eqz v0, :cond_2c

    const v1, 0x7f121091

    :goto_2b
    return v1

    :cond_2c
    const v1, 0x7f12105a

    goto :goto_2b

    :cond_30
    return v3
.end method

.method private handleAttemptLockout(J)V
    .registers 12

    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic lambda$-com_android_settings_ConfirmLockPattern$ConfirmLockPatternFragment_27649(Lcom/android/settings/ConfirmLockPattern;Landroid/content/Intent;)V
    .registers 4

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/ConfirmLockPattern;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern;->finish()V

    const v0, 0x7f010017

    const v1, 0x7f010018

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern;->overridePendingTransition(II)V

    return-void
.end method

.method private onPatternChecked(ZLandroid/content/Intent;IIZ)V
    .registers 11

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    if-eqz p1, :cond_44

    if-eqz p5, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->reportSuccessfullAttempt()V

    :cond_e
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    if-eqz v2, :cond_2f

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isPremiumDeviceOrContainer(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    invoke-virtual {v2}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->resetNumberOfAttempts()V

    :cond_2f
    invoke-direct {p0, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->checkForPendingIntent()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "iris_confirm_credential_fail_count"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_43
    :goto_43
    return-void

    :cond_44
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->isPremiumDeviceOrContainer(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_9d

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_9d

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    if-eqz v2, :cond_68

    const/4 v2, -0x1

    if-eq p3, v2, :cond_68

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    invoke-virtual {v2}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->checkNumberOfAttempts()V

    :cond_68
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    if-eqz v2, :cond_8e

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    invoke-virtual {v2}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->isSFMaxAttempts()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8e

    if-lez p3, :cond_85

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->refreshLockScreen()V

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_43

    :cond_85
    sget-object v2, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_43

    :cond_8e
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_43

    :cond_9d
    if-lez p3, :cond_b1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->refreshLockScreen()V

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    :goto_ab
    if-eqz p5, :cond_43

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->reportFailedAttempt()V

    goto :goto_43

    :cond_b1
    sget-object v2, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    goto :goto_ab
.end method

.method private postClearPatternRunnable()V
    .registers 5

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .registers 6

    iget-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ConfirmLockPattern;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_16
    return-void

    :cond_17
    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern;->getConfirmCredentialTheme()Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v1, v2, :cond_33

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/android/settings/-$Lambda$izbGrUz6aDg7QoTfX150XNchOlY;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/-$Lambda$izbGrUz6aDg7QoTfX150XNchOlY;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_32
.end method

.method private updateAttemptLockoutDesc(I)V
    .registers 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    div-int/lit8 v0, p1, 0x3c

    if-nez v0, :cond_1d

    if-ne p1, v1, :cond_1d

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f1210b8

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c
    return-void

    :cond_1d
    div-int/lit8 v0, p1, 0x3c

    if-nez v0, :cond_38

    if-le p1, v1, :cond_38

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f1210b9

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_38
    div-int/lit8 v0, p1, 0x3c

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit8 v2, p1, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f1210b6

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_53
    div-int/lit8 v0, p1, 0x3c

    if-le v0, v1, :cond_70

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    new-array v1, v1, [Ljava/lang/Object;

    div-int/lit8 v2, p1, 0x3c

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f1210b7

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c

    :cond_70
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f1210b5

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1c
.end method

.method private updateConfirmCredentialDetailsTextRes()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingFingerprint:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingIris:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingSmartScan:Z

    if-eqz v0, :cond_10

    :cond_c
    const v0, 0x7f12105f

    return v0

    :cond_10
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingFingerprint:Z

    if-eqz v0, :cond_18

    const v0, 0x7f121060

    return v0

    :cond_18
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingIris:Z

    if-eqz v0, :cond_20

    const v0, 0x7f121062

    return v0

    :cond_20
    iget-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingSmartScan:Z

    if-eqz v0, :cond_28

    const v0, 0x7f121061

    return v0

    :cond_28
    const v0, 0x7f12109b

    return v0
.end method

.method private updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .registers 8

    const v2, 0x7f12109c

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPattern;->-set1(Lcom/android/settings/ConfirmLockPattern$Stage;)Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-getcom-android-settings-ConfirmLockPattern$StageSwitchesValues()[I

    move-result-object v0

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern;->-get1()Lcom/android/settings/ConfirmLockPattern$Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_138

    :goto_19
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_25
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_30
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b4

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3b
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->isSFAttemptDefaultFailed()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V

    :cond_54
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->isProfileChallenge()Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateErrorMessage(I)V

    :cond_65
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_19

    :cond_75
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_aa

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_aa

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f120eee

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30

    :cond_aa
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f12105b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_30

    :cond_b4
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultDetails()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    goto/16 :goto_3b

    :pswitch_bf
    invoke-static {}, Lcom/android/settings/ConfirmLockPattern;->-get0()Z

    move-result v0

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v1, 0x7f121474

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    :goto_cd
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v0

    if-eqz v0, :cond_e6

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    if-eqz v0, :cond_126

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->isSFAttemptDefaultFailed()Z

    move-result v0

    if-eqz v0, :cond_126

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V

    :cond_e6
    :goto_e6
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    goto/16 :goto_19

    :cond_fc
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    if-eqz v0, :cond_120

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPremiumDeviceOrContainer(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_120

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;->setRemainingNumberOfAttemptsText(Landroid/widget/TextView;)V

    goto :goto_cd

    :cond_120
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    goto :goto_cd

    :cond_126
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    goto :goto_e6

    :pswitch_12c
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto/16 :goto_19

    :pswitch_data_138
    .packed-switch 0x1
        :pswitch_12c
        :pswitch_25
        :pswitch_bf
    .end packed-switch
.end method


# virtual methods
.method protected applyWorkProfileStyle()V
    .registers 10

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070523

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    div-float v2, v5, v0

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x1010435

    invoke-virtual {v5, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    if-eqz v5, :cond_54

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x10301f0

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v5, v8, v2}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v5, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setTextColor(I)V

    :cond_54
    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_6e

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x10301f7

    invoke-virtual {v5, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6e
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_a0

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_84

    iget-boolean v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->external:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_84

    iget-object v5, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_84
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_a0

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_a0
    return-void
.end method

.method protected authenticationSucceeded()V
    .registers 6

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method public createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 24

    instance-of v0, p1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v0, :cond_31

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz p7, :cond_27

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_d
    if-eqz p7, :cond_29

    move/from16 v4, p6

    :goto_11
    if-eqz p7, :cond_2b

    const/4 v5, 0x0

    :goto_14
    if-eqz p7, :cond_2e

    const/4 v6, 0x0

    :goto_17
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v0 .. v13}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :goto_26
    return-void

    :cond_27
    const/4 v3, 0x0

    goto :goto_d

    :cond_29
    const/4 v4, 0x0

    goto :goto_11

    :cond_2b
    move/from16 v5, p6

    goto :goto_14

    :cond_2e
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_17

    :cond_31
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    move-object v3, p1

    check-cast v3, Landroid/view/View;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    goto :goto_26
.end method

.method protected getLastTryErrorMessage()I
    .registers 2

    const v0, 0x7f120ff9

    return v0
.end method

.method public getMetricsCategory()I
    .registers 2

    const/16 v0, 0x1f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isFromKnoxSetDigitalLock"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    iput v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    :cond_23
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_personal"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPattern;->-set0(Z)Z

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_5a

    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_67

    :cond_5a
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_67
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPremiumDeviceOrContainer(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8c

    new-instance v0, Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/KnoxConfirmLockHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->knoxConfirmLockHelper:Lcom/samsung/android/settings/KnoxConfirmLockHelper;

    :cond_8c
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "has_challenge"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->hasChallenge:Z

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "challenge"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mChallenge:J

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 21

    const/16 v16, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    if-eqz v12, :cond_18

    const-string/jumbo v2, "com.android.settings.ConfirmCredentials.showWhenLocked"

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->external:Z

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1ed

    const v2, 0x7f0d0088

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    :goto_2c
    const v2, 0x7f0a03ac

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v2, 0x7f0a0244

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    const v2, 0x7f0a04cd

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/LockPatternView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const v2, 0x7f0a02db

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    const v2, 0x7f0a048f

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    const v2, 0x7f0a0704

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    const v2, 0x7f0a00c0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackupPinButtonClickListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a08d3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v15, v2}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    if-eqz v12, :cond_c6

    const-string/jumbo v2, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    const-string/jumbo v2, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    :cond_c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_1f9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    or-int v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v13}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    :cond_fe
    :goto_fe
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    sget-object v2, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v10

    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-eqz v2, :cond_131

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v10, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v14, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateAttemptLockoutDesc(I)V

    :cond_131
    if-eqz p3, :cond_222

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/ConfirmLockPattern$Stage;

    move-result-object v2

    const-string/jumbo v3, "uiStage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget-object v2, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    const-string/jumbo v2, "num_wrong_attempts"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    const-string/jumbo v3, "backup_pin_btn_visibility"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_164
    :goto_164
    new-instance v2, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000e

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    const-wide/16 v4, 0xdc

    const/high16 v6, 0x40000000    # 2.0f

    const v7, 0x3fa66666    # 1.3f

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v2, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x7d

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10c000f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    new-instance v9, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$5;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    const/high16 v6, 0x40800000    # 4.0f

    const v7, 0x3e99999a    # 0.3f

    invoke-direct/range {v2 .. v9}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "check_lock_result"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/CredentialCheckResultTracker;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

    if-nez v2, :cond_1ec

    new-instance v2, Lcom/android/settings/CredentialCheckResultTracker;

    invoke-direct {v2}, Lcom/android/settings/CredentialCheckResultTracker;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

    const-string/jumbo v4, "check_lock_result"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1ec
    return-object v16

    :cond_1ed
    const v2, 0x7f0d008b

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    goto/16 :goto_2c

    :cond_1f9
    invoke-static {}, Lcom/android/settings/ConfirmLockPattern;->-get0()Z

    move-result v2

    if-nez v2, :cond_fe

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_21d

    const/4 v2, 0x0

    :goto_212
    invoke-virtual {v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    goto/16 :goto_fe

    :cond_21d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    goto :goto_212

    :cond_222
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_236

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mIsFromKnoxSetDigitalLock:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_164

    :cond_236
    invoke-static {}, Lcom/android/settings/ConfirmLockPattern;->-get0()Z

    move-result v2

    if-nez v2, :cond_164

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_164

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-nez v2, :cond_164

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto/16 :goto_164
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .registers 6

    const/16 v1, 0x8

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingFingerprint:Z

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateConfirmCredentialDetailsTextRes()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_25

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_26

    move v0, v1

    :goto_1b
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_28

    :goto_22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    return-void

    :cond_26
    move v0, v2

    goto :goto_1b

    :cond_28
    move v1, v2

    goto :goto_22
.end method

.method public onIrisVisibilityChanged(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingIris:Z

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateConfirmCredentialDetailsTextRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onMultiWindowModeChanged(Z)V

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120ffe

    invoke-virtual {p0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V

    return-void

    :cond_27
    return-void
.end method

.method public onPause()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_d
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/settings/CredentialCheckResultTracker;->setListener(Lcom/android/settings/CredentialCheckResultTracker$Listener;)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

    invoke-virtual {v0}, Lcom/android/settings/CredentialCheckResultTracker;->clearResult()V

    return-void
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3c

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_3c

    iget v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3c

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120ffe

    invoke-virtual {p0, v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3c
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings/CredentialCheckResultTracker;->clearResult()V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    :cond_52
    :goto_52
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/settings/CredentialCheckResultTracker;->setListener(Lcom/android/settings/CredentialCheckResultTracker$Listener;)V

    return-void

    :cond_58
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_52

    iput v4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    sget-object v2, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    goto :goto_52
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern$Stage;->values()[Lcom/android/settings/ConfirmLockPattern$Stage;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern;->-get1()Lcom/android/settings/ConfirmLockPattern$Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    :cond_17
    const-string/jumbo v0, "uiStage"

    invoke-static {}, Lcom/android/settings/ConfirmLockPattern;->-get1()Lcom/android/settings/ConfirmLockPattern$Stage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "backup_pin_btn_visibility"

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mBackUpPinButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onShowDefault()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultDetails()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    goto :goto_b
.end method

.method protected onShowError()V
    .registers 1

    return-void
.end method

.method public onSmartScanVisibilityChanged(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mUsingSmartScan:Z

    if-eqz p1, :cond_e

    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateConfirmCredentialDetailsTextRes()I

    move-result v0

    :goto_8
    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setText(I)V

    return-void

    :cond_e
    const v0, 0x7f12105d

    goto :goto_8
.end method

.method public prepareEnterAnimation()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Lcom/samsung/android/settings/lockscreen/LockCustomTextView;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockCustomTextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public startEnterAnimation()V
    .registers 3

    invoke-super {p0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    return-void
.end method
