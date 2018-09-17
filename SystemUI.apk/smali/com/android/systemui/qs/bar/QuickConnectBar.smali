.class public Lcom/android/systemui/qs/bar/QuickConnectBar;
.super Lcom/android/systemui/qs/bar/QSBarItem;
.source "QuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/QuickConnectBar$1;,
        Lcom/android/systemui/qs/bar/QuickConnectBar$2;,
        Lcom/android/systemui/qs/bar/QuickConnectBar$H;,
        Lcom/android/systemui/qs/bar/QuickConnectBar$State;
    }
.end annotation


# static fields
.field private static final FADE_INOUT_ANIM_DURATION:I = 0x1a0

.field public static final PERMISSION_UPDATE_REMOTE_VIEWS:Ljava/lang/String; = "com.sec.android.systemui.UPDATE_REMOTE_VIEWS"

.field public static final QUICKCONNECT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.oneconnect"

.field public static final UPDATE_QS_REMOTE_VIEWS:Ljava/lang/String; = "com.android.systemui.update_qs_remote_views"

.field private static mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetailShowing:Z

.field private mFraction:F

.field private mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

.field private mHeight:I

.field private mKeptState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteViewsContainer:Landroid/view/ViewGroup;

.field private mSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

.field private mViewUpdateDelyed:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/bar/QuickConnectBar;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/bar/QuickConnectBar;)Landroid/animation/ValueAnimator;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/bar/QuickConnectBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/bar/QuickConnectBar;Lcom/android/systemui/qs/bar/QuickConnectBar$State;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QuickConnectBar;->refresh(Lcom/android/systemui/qs/bar/QuickConnectBar$State;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    invoke-direct {v2}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    new-instance v2, Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    invoke-direct {v2}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mKeptState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iput-boolean v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mViewUpdateDelyed:Z

    iput-boolean v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mDetailShowing:Z

    new-instance v2, Lcom/android/systemui/qs/bar/QuickConnectBar$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/QuickConnectBar$1;-><init>(Lcom/android/systemui/qs/bar/QuickConnectBar;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/qs/bar/QuickConnectBar$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/QuickConnectBar$2;-><init>(Lcom/android/systemui/qs/bar/QuickConnectBar;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iput v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHeight:I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0153

    invoke-static {v2, v3, p0}, Lcom/android/systemui/qs/bar/QuickConnectBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mBarItemView:Landroid/view/View;

    const v2, 0x7f0a03f2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/bar/QuickConnectBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;-><init>(Lcom/android/systemui/qs/bar/QuickConnectBar;Lcom/android/systemui/qs/bar/QuickConnectBar$H;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.android.systemui.update_qs_remote_views"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "com.sec.android.systemui.UPDATE_REMOTE_VIEWS"

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private animateViews(Landroid/view/View;Landroid/view/View;)V
    .registers 9

    const-wide/16 v4, 0x1a0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1e
    if-eqz p2, :cond_34

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/bar/QuickConnectBar$3;

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/qs/bar/QuickConnectBar$3;-><init>(Lcom/android/systemui/qs/bar/QuickConnectBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_34
    return-void
.end method

.method private clearView(Z)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iput-object v1, v0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iput-object v1, v0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QuickConnectBar;->refresh(Lcom/android/systemui/qs/bar/QuickConnectBar$State;)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_15
.end method

.method private isViewUpdateAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mDetailShowing:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_25

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mFraction:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    iget v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mFraction:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_27

    :cond_25
    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPanelFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QuickConnectBar;->isViewVisible()Z

    move-result v0

    goto :goto_26

    :cond_34
    const/4 v0, 0x0

    goto :goto_26
.end method

.method private isViewVisible()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHeight:I

    if-lez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private refresh(Lcom/android/systemui/qs/bar/QuickConnectBar$State;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->isEmptyRemoteView()Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    invoke-virtual {p1, v4, v7}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->copyTo(Lcom/android/systemui/qs/bar/QuickConnectBar$State;Z)Z

    invoke-direct {p0, v6, v5}, Lcom/android/systemui/qs/bar/QuickConnectBar;->updateView(Landroid/view/View;Z)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_11

    :try_start_18
    iget-object v4, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->copyTo(Lcom/android/systemui/qs/bar/QuickConnectBar$State;Z)Z

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/qs/bar/QuickConnectBar;->updateView(Landroid/view/View;Z)V
    :try_end_2a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_18 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2a} :catch_49

    goto :goto_11

    :catch_2b
    move-exception v1

    iget-object v4, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refresh() NotFoundException - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/android/systemui/qs/bar/QuickConnectBar;->clearView(Z)V

    goto :goto_11

    :catch_49
    move-exception v0

    iget-object v4, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refresh() Exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private startSizeChangeAnimation(II)V
    .registers 7

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_15
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/qs/bar/QuickConnectBar$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/QuickConnectBar$4;-><init>(Lcom/android/systemui/qs/bar/QuickConnectBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/systemui/qs/bar/QuickConnectBar$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/QuickConnectBar$5;-><init>(Lcom/android/systemui/qs/bar/QuickConnectBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    invoke-interface {v1}, Lcom/android/systemui/qs/bar/QSBarItem$Callback;->onHeightChanged()V

    :goto_5d
    return-void

    :cond_5e
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5d
.end method

.method private updateContainerHeight(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHeight:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHeight:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/bar/QuickConnectBar;->startSizeChangeAnimation(II)V

    iput p1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHeight:I

    return-void
.end method

.method private updateView(Landroid/view/View;Z)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QuickConnectBar;->isViewUpdateAvailable()Z

    move-result v2

    if-nez v2, :cond_b

    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mViewUpdateDelyed:Z

    return-void

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mDetailShowing:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1b

    iput-boolean v4, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mViewUpdateDelyed:Z

    :cond_1b
    if-nez p1, :cond_3b

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/bar/QuickConnectBar;->updateContainerHeight(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    :goto_25
    if-eqz p2, :cond_4e

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_45

    const/4 v1, 0x0

    :goto_30
    if-eqz p1, :cond_37

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_37
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/qs/bar/QuickConnectBar;->animateViews(Landroid/view/View;Landroid/view/View;)V

    :goto_3a
    return-void

    :cond_3b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/bar/QuickConnectBar;->updateContainerHeight(I)V

    goto :goto_25

    :cond_45
    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_30

    :cond_4e
    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mRemoteViewsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_3a
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mQuickConnectReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "QSQuickConnectView state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  mCollapsed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mExpanded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iget-object v0, v0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v0, "  mIsExpanded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iget-boolean v0, v0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  mHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getBarHeight()I
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHeight:I

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6
.end method

.method public isAvailable()Z
    .registers 2

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isQuickConnectEnabled()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Lcom/android/systemui/qs/bar/QSBarItem;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mKeptState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->copyTo(Lcom/android/systemui/qs/bar/QuickConnectBar$State;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "DEX QuickConnectBar is attached and It\'s done to copy previous state to mKeptState."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    sget-object v2, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEmergencyModeChanged()V
    .registers 2

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QuickConnectBar;->clearView(Z)V

    :cond_e
    return-void
.end method

.method public onExpandingFinished(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mViewUpdateDelyed:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mViewUpdateDelyed:Z

    sget-object v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QuickConnectBar;->refresh(Lcom/android/systemui/qs/bar/QuickConnectBar$State;)V

    :cond_11
    return-void
.end method

.method public onQsClosed()V
    .registers 5

    sget-object v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iget-boolean v0, v0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    sget-object v2, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onShowingDetail(Z)V
    .registers 6

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mDetailShowing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_11

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QuickConnectBar;->clearView(Z)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mKeptState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mKeptState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    :goto_1b
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_10

    :cond_24
    sget-object v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    goto :goto_1b
.end method

.method public receiveRemoteView(Landroid/content/Intent;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "PKG_REPLACED"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_18
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/bar/QuickConnectBar;->clearView(Z)V

    return-void

    :cond_1c
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "COLLAPSED"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    const-string/jumbo v3, "EXPANDED"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "collapsed ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",  expanded ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iput-object v1, v3, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mCollapsed:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iput-object v2, v3, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mExpanded:Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    if-eqz v2, :cond_8b

    move v3, v4

    :goto_69
    iput-boolean v3, v6, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iget-boolean v3, v3, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->mIsExpanded:Z

    if-nez v3, :cond_78

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    iget-object v6, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mKeptState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    invoke-virtual {v3, v6, v5}, Lcom/android/systemui/qs/bar/QuickConnectBar$State;->copyTo(Lcom/android/systemui/qs/bar/QuickConnectBar$State;Z)Z

    :cond_78
    iget-object v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    iget-object v5, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mHandler:Lcom/android/systemui/qs/bar/QuickConnectBar$H;

    iget-object v6, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mTmpState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_8b
    move v3, v5

    goto :goto_69
.end method

.method public setPosition(F)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;->setPosition(F)V

    iput p1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mFraction:F

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mViewUpdateDelyed:Z

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_14

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1c

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mViewUpdateDelyed:Z

    sget-object v0, Lcom/android/systemui/qs/bar/QuickConnectBar;->mState:Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QuickConnectBar;->refresh(Lcom/android/systemui/qs/bar/QuickConnectBar$State;)V

    :cond_1c
    return-void
.end method
