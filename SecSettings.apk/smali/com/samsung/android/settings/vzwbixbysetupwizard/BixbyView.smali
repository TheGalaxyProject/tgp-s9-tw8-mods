.class public abstract Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;
.super Landroid/widget/FrameLayout;
.source "BixbyView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;,
        Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;,
        Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;
    }
.end annotation


# static fields
.field public static RECONNECT_VOICE_CALLBACK_INTERVAL:I


# instance fields
.field public final mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

.field private mAreFragmentViewsInitialized:Z

.field private mAreIntroSoftKeysClicked:Z

.field private mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

.field private mBixbyHeaderSubTitle:Landroid/widget/TextView;

.field private mBixbyIntroSoftKeyParentView:Landroid/view/View;

.field private mBixbyIntroTitle:Landroid/widget/TextView;

.field private mBixbyModeSwitcher:Landroid/view/View;

.field public mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

.field private mBixbyStates:[I

.field private mBodyContainerParentView:Landroid/view/View;

.field private mBottomButtonParentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentAsrServiceErrorState:Ljava/lang/String;

.field private mCurrentBixbyStateIndex:I

.field private mCurrentPostWaveAudioIndex:I

.field private mCurrentTime:J

.field mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;

.field private mIsActivityPaused:Z

.field private mIsScreenActiveWhenLaunch:Z

.field private mLcdHeight:I

.field private mParentFooterView:Landroid/view/View;

.field mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

.field private mVoiceCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

.field private mVoiceHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;

.field private mWaitingToMoveToNextState:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAreIntroSoftKeysClicked:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentPostWaveAudioIndex:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAreIntroSoftKeysClicked:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentPostWaveAudioIndex:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;J)J
    .registers 4

    iput-wide p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)Z
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->isScriptPlaying()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getButtonID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->startBixbySetupIntroAnimation()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->startIntroAnimation()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->startListening()V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->startWaveAnimation()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->stopListening()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->stopScriptPlay()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->wakeUpScreenWhenUsingVoiceCommand()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getMessageString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->clean()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->doCloseAnimation()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->handleAsrServiceErrors(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->moveToNextBixbyStateWithDelay(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->openWaveAnimation()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->playBixbySetupIntroAnimation()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->scriptPlayCompleted()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->RECONNECT_VOICE_CALLBACK_INTERVAL:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIsScreenActiveWhenLaunch:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentTime:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIsScreenActiveWhenLaunch:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$1;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;

    return-void
.end method

.method private declared-synchronized clean()V
    .registers 3

    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "do clean up"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->clearVoiceCommandHelper()V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->stopScriptPlay()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->clean()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private disableAllSoftKeyButtons()V
    .registers 5

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    if-nez v3, :cond_5

    return-void

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_f

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_f

    :cond_30
    return-void
.end method

.method private doCloseAnimation()V
    .registers 13

    const/4 v0, 0x7

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->disableAllSoftKeyButtons()V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->clean()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyModeSwitcher:Landroid/view/View;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyModeSwitcher:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBackgroundImage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->clearAnim()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getHeaderHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->setToTarget(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    const-wide/16 v2, 0xa6

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mLcdHeight:I

    int-to-float v4, v0

    const-wide/16 v5, 0x15e

    const/high16 v7, 0x43af0000    # 350.0f

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x2ee

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->setBixbyIconScale(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0x28a

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getIntroHeight()F

    move-result v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbyPositionInHeader()F

    move-result v6

    sub-float/2addr v0, v6

    neg-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBottomButtonParentView:Landroid/view/View;

    const-wide/16 v2, 0xc8

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBodyContainerParentView:Landroid/view/View;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private getBixbyHeaderSubtitleMarginBottom()F
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07086a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getButtonID(Ljava/lang/String;)I
    .registers 9

    const-string/jumbo v4, "SetupWizardWifiScreen_BixbyView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " VoiceCallback -> server returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_78
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    :cond_89
    const/4 v4, -0x1

    return v4
.end method

.method private getIntroHeight()F
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070870

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method private getLcdHeight()I
    .registers 5

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->y:I

    return v2
.end method

.method private getMessageString(I)Ljava/lang/String;
    .registers 5

    packed-switch p1, :pswitch_data_44

    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown message detected : message ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :pswitch_18
    const-string/jumbo v0, "BIXBY_STATE_BIXBY_SETUP_INTRO_ANIMATION"

    goto :goto_17

    :pswitch_1c
    const-string/jumbo v0, "BIXBY_STATE_INTRO_ANIMATION"

    goto :goto_17

    :pswitch_20
    const-string/jumbo v0, "BIXBY_STATE_LISTENING"

    goto :goto_17

    :pswitch_24
    const-string/jumbo v0, "BIXBY_STATE_POST_WAVE_AUDIO"

    goto :goto_17

    :pswitch_28
    const-string/jumbo v0, "BIXBY_STATE_SKIP_INTRO_WAVE_ANIMATION"

    goto :goto_17

    :pswitch_2c
    const-string/jumbo v0, "BIXBY_STATE_SOLID_BOUNCE_EFFECT_ANIMATION"

    goto :goto_17

    :pswitch_30
    const-string/jumbo v0, "BIXBY_STATE_VOICE_RECOGNITION_FAILED"

    goto :goto_17

    :pswitch_34
    const-string/jumbo v0, "MESSAGE_CLOSE_ANIMATION"

    goto :goto_17

    :pswitch_38
    const-string/jumbo v0, "MESSAGE_NAVIGATE_SCREEN"

    goto :goto_17

    :pswitch_3c
    const-string/jumbo v0, "MESSAGE_PLAY_INTRO_AUDIO"

    goto :goto_17

    :pswitch_40
    const-string/jumbo v0, "MESSAGE_STOP_LISTENING"

    goto :goto_17

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_28
        :pswitch_1c
        :pswitch_18
        :pswitch_2c
        :pswitch_24
        :pswitch_20
        :pswitch_30
        :pswitch_34
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_40
        :pswitch_3c
        :pswitch_38
    .end packed-switch
.end method

.method private getTapButtonsAudioScript()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ""

    return-object v0
.end method

.method private handleAsrServiceErrors(Ljava/lang/String;)V
    .registers 4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentAsrServiceErrorState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentAsrServiceErrorState:Ljava/lang/String;

    const-string/jumbo v0, "no_network"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v0

    if-ne v0, v1, :cond_35

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "Connection lost or No Network, refresh the listening state"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->clearVoiceCommandHelper()V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->initVoiceCallback()V

    :cond_32
    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->refreshCurrentBixbyState()V

    :cond_35
    :goto_35
    return-void

    :cond_36
    const-string/jumbo v0, "server_error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v0

    if-ne v0, v1, :cond_35

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "Server error from ASR, try reconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->clearVoiceCommandHelper()V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->initVoiceCallback()V

    goto :goto_35
.end method

.method private initIntroSoftKeys()V
    .registers 5

    const v2, 0x7f0a0130

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroSoftKeyParentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroSoftKeyParentView:Landroid/view/View;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroSoftKeyParentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    const v2, 0x7f0a00f3

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00f2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v1, :cond_2b

    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$4;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2b
    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->isBackSoftKeyPresent()Z

    move-result v2

    if-nez v2, :cond_37

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_37
    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$5;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3f
    return-void
.end method

.method private initScriptPlayer()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mHasState(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mHasState(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mHasState(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_15
    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIBixbyScriptPlayerListener:Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->setBixbyScriptPlayerListener(Lcom/samsung/android/settings/vzwbixbysetupwizard/IBixbyScriptPlayerStates;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->buildBixbyScriptPlayer()V

    :cond_2a
    return-void
.end method

.method private initVoiceCallback()V
    .registers 4

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mHasState(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    if-nez v0, :cond_12

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$VoiceCallback;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    :cond_12
    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;

    :cond_1d
    return-void
.end method

.method private isScreenActive()Z
    .registers 4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    return v1
.end method

.method private isScriptPlaying()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->isPlaying()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private mHasState(I)Z
    .registers 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyStates:[I

    array-length v4, v3

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_10

    aget v0, v3, v1

    if-ne v0, p1, :cond_d

    const/4 v1, 0x1

    return v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_10
    return v2
.end method

.method private moveToNextBixbyStateWithDelay(I)V
    .registers 6

    const/4 v2, 0x1

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "Don\'t move to next state when the state is in Close animation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getNextBixbyState()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to process the next bixby state, All bixby states complete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->allBixbyStatesHandled()V

    return-void

    :cond_37
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->isFragmentActivity()Z

    move-result v0

    if-eqz v0, :cond_55

    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAreFragmentViewsInitialized:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_55

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getNextBixbyState()I

    move-result v0

    if-eq v0, v2, :cond_55

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "Fragment views not initialized, dont move to the next state until views initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mWaitingToMoveToNextState:Z

    return-void

    :cond_55
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->hasLongIntroAudio()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getNextBixbyState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_72

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->isScriptPlaying()Z

    move-result v0

    if-eqz v0, :cond_72

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "When the long intro animation playing, don\'t play another audio until this completes"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_72
    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Move to next state, currentState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getMessageString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Next State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getNextBixbyState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getMessageString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIsActivityPaused:Z

    if-eqz v0, :cond_ee

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_ee

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbyHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_bf
    sget p1, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->RECONNECT_VOICE_CALLBACK_INTERVAL:I

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " When paused and resumed, don\'t move to next step for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getMessageString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e3
    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_ee
    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    goto :goto_e3
.end method

.method private openWaveAnimation()V
    .registers 3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$2;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private playBixbySetupIntroAnimation()V
    .registers 13

    const-wide/16 v10, 0x16f

    const-wide/16 v4, 0x14d

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBottomButtonParentView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbySetupAdditionalTextLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    const-wide/16 v2, 0x0

    const/high16 v6, 0x43480000    # 200.0f

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    invoke-static {v0, v10, v11, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbySetupAdditionalTextLayout()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v10, v11, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBottomButtonParentView:Landroid/view/View;

    invoke-static {v0, v10, v11, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStartSetupWizardIntroCompleteMotion()V

    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->moveToNextBixbyStateWithDelay(I)V

    return-void
.end method

.method private refreshCurrentBixbyState()V
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private scriptPlayCompleted()V
    .registers 3

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "script play completed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStopSaying()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentPostWaveAudioIndex:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getPostWaveAudioScripts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->refreshCurrentBixbyState()V

    :goto_24
    return-void

    :cond_25
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->moveToNextBixbyStateWithDelay(I)V

    goto :goto_24
.end method

.method private startBixbySetupIntroAnimation()V
    .registers 3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$3;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startIntroAnimation()V
    .registers 7

    const-wide/16 v4, 0x10b

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "startIntroAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0xa7

    const/16 v1, 0x18

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    invoke-static {v0, v4, v5, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private startListening()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->startListening()V

    :cond_9
    return-void
.end method

.method private startWaveAnimation()V
    .registers 13

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getHeaderBackgroundImage()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mLcdHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->setToTarget(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroSoftKeyParentView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBodyContainerParentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBottomButtonParentView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaEnd(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mParentFooterView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    const v2, 0x3f553f7d    # 0.833f

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->setBixbyIconScale(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x14d

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getIntroHeight()F

    move-result v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v0, v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbyPositionInHeader()F

    move-result v7

    sub-float/2addr v0, v7

    neg-float v7, v0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getHeaderHeight()F

    move-result v4

    const-wide/16 v5, 0x15e

    const/high16 v7, 0x43af0000    # 350.0f

    const-wide/16 v8, 0xfa

    const-wide/16 v10, 0x2ee

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getScreenBodyViewID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_78

    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x1f4

    const/high16 v6, 0x43480000    # 200.0f

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animTextFromBottomAlphaTrans(Landroid/view/View;JJF)Landroid/animation/ValueAnimator;

    :cond_78
    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBottomButtonParentView:Landroid/view/View;

    const-wide/16 v2, 0xfa

    const-wide/16 v4, 0x14d

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBodyContainerParentView:Landroid/view/View;

    const-wide/16 v2, 0x14d

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x14d

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getIntroHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getHeaderHeight()F

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbyHeaderSubtitleMarginBottom()F

    move-result v9

    sub-float/2addr v2, v9

    sub-float/2addr v0, v2

    neg-float v9, v0

    new-instance v10, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SineInOut33;

    invoke-direct {v10}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SineInOut33;-><init>()V

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animTextVerticalTransAtoB(Landroid/view/View;JJFFLandroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    const-wide/16 v2, 0x14d

    const-wide/16 v4, 0xa7

    invoke-static {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/AnimationHelper;->animCommonAlphaStart(Landroid/view/View;JJ)Landroid/animation/ValueAnimator;

    return-void
.end method

.method private stopListening()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->stopListening()V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStopListening()V

    return-void
.end method

.method private stopScriptPlay()V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->isScriptPlaying()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "stop playing script"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStopSaying()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->stopScriptPlay()V

    :cond_19
    return-void
.end method

.method private wakeUpScreenWhenUsingVoiceCommand()V
    .registers 5

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v2, "screenwakeuplock"

    const v3, 0x10000006

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method


# virtual methods
.method protected allBixbyStatesHandled()V
    .registers 1

    return-void
.end method

.method protected clearVoiceCommandHelper()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->stopListening()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;->clear()V

    iput-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceHelper:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper;

    :cond_f
    iput-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mVoiceCallback:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/VoiceCommandHelper$VoiceCommandHelperCallback;

    return-void
.end method

.method protected abstract getBackgroundImage()I
.end method

.method protected abstract getBixbyHeaderTitle()Ljava/lang/String;
.end method

.method protected abstract getBixbyIntroTitle()Ljava/lang/String;
.end method

.method protected getBixbyPositionInHeader()F
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070868

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected getBixbySetupAdditionalTextLayout()Landroid/view/View;
    .registers 3

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getBixbyStates()[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBodyContainerParentViewId()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getBottomButtonParentViewId()I
    .registers 2

    const v0, 0x7f0a012f

    return v0
.end method

.method public getCurrentBixbyState()I
    .registers 3

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyStates:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_d

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    if-gez v0, :cond_f

    :cond_d
    const/4 v0, -0x1

    return v0

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyStates:[I

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    aget v0, v0, v1

    return v0
.end method

.method protected getHeaderBackgroundImage()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected getHeaderHeight()F
    .registers 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07087b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    return v0
.end method

.method protected getIntroAnimationPlayTime()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getIntroAudioScript()Ljava/lang/String;
.end method

.method public getNextBixbyState()I
    .registers 3

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    add-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyStates:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_d

    const/4 v1, -0x1

    return v1

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyStates:[I

    aget v1, v1, v0

    return v1
.end method

.method protected getParentFooterViewId()I
    .registers 2

    const v0, 0x7f0a04f7

    return v0
.end method

.method protected getPostWaveAudioScripts()Ljava/util/ArrayList;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviousBixbyState()I
    .registers 3

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyStates:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_d

    if-gez v0, :cond_f

    :cond_d
    const/4 v1, -0x1

    return v1

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyStates:[I

    aget v1, v1, v0

    return v1
.end method

.method protected getScreenBodyViewID()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getSoftKeyButtonVoiceCommands()Ljava/util/HashMap;
.end method

.method protected hasLongIntroAudio()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected isBackSoftKeyPresent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected isBixbyAnimationInProgress()Z
    .registers 6

    const/4 v2, 0x3

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v0

    if-ne v0, v4, :cond_26

    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_32

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "Bixby Animation still inprogress, ignore the keys"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_26
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getCurrentBixbyState()I

    move-result v0

    if-eq v0, v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getPreviousBixbyState()I

    move-result v0

    if-eq v0, v2, :cond_f

    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method protected isFragmentActivity()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->isScreenActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIsScreenActiveWhenLaunch:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getLcdHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mLcdHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getSoftKeyButtonVoiceCommands()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSoftKeyButtonsVoiceCommand:Ljava/util/HashMap;

    const v0, 0x7f0a053d

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyModeSwitcher:Landroid/view/View;

    const v0, 0x7f0a00f5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbyIntroTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a00f0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbyHeaderTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4a
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getParentFooterViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mParentFooterView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mParentFooterView:Landroid/view/View;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mParentFooterView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5e
    const v0, 0x7f0a01f0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBackgroundImage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    iget v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mLcdHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->setToTarget(F)V

    :cond_7e
    const v0, 0x7f0a04e2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBodyContainerParentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBodyContainerParentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBottomButtonParentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBottomButtonParentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->initIntroSoftKeys()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbyStates()[I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyStates:[I

    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIsScreenActiveWhenLaunch:Z

    if-eqz v0, :cond_b8

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->moveToNextBixbyStateWithDelay(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->initScriptPlayer()V

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->initVoiceCallback()V

    :cond_b8
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->clean()V

    iput-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    :cond_15
    return-void
.end method

.method protected onMoveToNextScreen()V
    .registers 5

    const-string/jumbo v1, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v2, "Move to Next Screen"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected onMoveToPreviousScreen()V
    .registers 5

    const-string/jumbo v1, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v2, "Move to Previous Screen"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected onPause()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/high16 v1, 0x10a0000

    const v2, 0x10a0001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mAnimationStateHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView$AnimationStateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIsActivityPaused:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->stopScriptPlay()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->clearVoiceCommandHelper()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mCurrentBixbyStateIndex:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_17

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    const-string/jumbo v1, "onResume : Recreate the activity in when coming back"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_17
    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIsScreenActiveWhenLaunch:Z

    if-nez v0, :cond_27

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->isScreenActive()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->initScriptPlayer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIsScreenActiveWhenLaunch:Z

    :cond_27
    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIsActivityPaused:Z

    if-eqz v0, :cond_31

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->initVoiceCallback()V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->moveToNextBixbyStateWithDelay(I)V

    :cond_31
    iput-boolean v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mIsActivityPaused:Z

    return-void
.end method

.method public playAudioScript(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "SetupWizardWifiScreen_BixbyView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playAudioScript: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyButton:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/LogoButton;->onStartSaying()V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyScriptPlayer:Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/util/BixbyScriptPlayer;->startScriptPlay(Ljava/lang/String;)V

    :cond_32
    return-void
.end method

.method protected skipIntroWaveAnimation()V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyIntroSoftKeyParentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getHeaderBackgroundImage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mSolidBounceEffectView:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getHeaderHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SolidBounceEffect;->setToTarget(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mParentFooterView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->mBixbyHeaderSubTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getIntroHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getHeaderHeight()F

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/BixbyView;->getBixbyHeaderSubtitleMarginBottom()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method
