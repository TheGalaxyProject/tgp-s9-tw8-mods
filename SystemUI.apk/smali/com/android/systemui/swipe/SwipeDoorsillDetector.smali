.class public Lcom/android/systemui/swipe/SwipeDoorsillDetector;
.super Ljava/lang/Object;
.source "SwipeDoorsillDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDistance:D

.field private mIntercepting:Z

.field private mIsMultiTouch:Z

.field private mIsTouching:Z

.field private mStartX:F

.field private mStartY:F

.field private mSwipeUnlockRadius:I

.field private mTouchSlop:I

.field private mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

.field private mUnlockExecuted:Z

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    iput-boolean v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    iput-boolean v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    iput-boolean v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    iput-boolean v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->initDimens()V

    return-void
.end method

.method private isLoggableEvent(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    const/4 v2, 0x5

    if-ne p1, v2, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    move v0, v1

    goto :goto_7
.end method

.method private isUnlockPossible()Z
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    iget v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_75

    iget v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_75

    iget-boolean v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_75

    iget-boolean v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_75

    move v1, v0

    :goto_24
    if-nez v1, :cond_74

    const-string/jumbo v2, "SwipeDoorsillDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUnlockPossible(): mStartX="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mStartY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsMultiTouch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mUnlockExecuted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isDeviceInteractive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    return v1

    :cond_75
    const/4 v1, 0x0

    goto :goto_24
.end method

.method static synthetic lambda$-com_android_systemui_swipe_SwipeDoorsillDetector_7263(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .registers 4

    const-string/jumbo v1, "101"

    const-string/jumbo v2, "1001"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "3"

    :goto_13
    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_17
    const-string/jumbo v0, "2"

    goto :goto_13
.end method

.method private unlockExecute()V
    .registers 4

    const-string/jumbo v1, "SwipeDoorsillDetector"

    const-string/jumbo v2, "unlockExecute()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/swipe/-$Lambda$ERtaDOZH-FY_UpCwajKvNSbM4zE;

    invoke-direct {v1, v0}, Lcom/android/systemui/swipe/-$Lambda$ERtaDOZH-FY_UpCwajKvNSbM4zE;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwipedUnlockRunnable(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onUnlock()V

    iget-object v1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v1}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->onUnlockExecuted()V

    return-void
.end method


# virtual methods
.method public initDimens()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15

    const/4 v12, 0x2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v2, v5, 0xff

    iget-boolean v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    if-eqz v5, :cond_1f

    invoke-direct {p0, v2}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isLoggableEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1e

    const-string/jumbo v4, "SwipeDoorsillDetector"

    const-string/jumbo v5, "onTouchEvent(): Unlock is started already"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return v3

    :cond_1f
    iget-boolean v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    if-nez v5, :cond_46

    invoke-direct {p0, v2}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isLoggableEvent(I)Z

    move-result v4

    if-eqz v4, :cond_45

    const-string/jumbo v4, "SwipeDoorsillDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onTouchEvent(): mIntercepting is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    return v3

    :cond_46
    sget-boolean v5, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v5, :cond_66

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-direct {p0, v2}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isLoggableEvent(I)Z

    move-result v3

    if-eqz v3, :cond_65

    const-string/jumbo v3, "SwipeDoorsillDetector"

    const-string/jumbo v5, "isSupportSimPermDisabled!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    return v4

    :cond_66
    packed-switch v2, :pswitch_data_1ae

    :goto_69
    :pswitch_69
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v3, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->handleTouchEvent(Landroid/view/MotionEvent;)V

    return v4

    :pswitch_6f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-lt v5, v12, :cond_76

    move v3, v4

    :cond_76
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    const-string/jumbo v3, "SwipeDoorsillDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onTouchEvent(): ACTION_POINTER_DOWN mIsMultiTouch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    :pswitch_95
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    iput-boolean v4, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    goto :goto_69

    :pswitch_aa
    iget-boolean v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    if-nez v5, :cond_af

    return v3

    :cond_af
    iget-object v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v3}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->userActivity()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    sub-float/2addr v3, v5

    float-to-int v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    sub-float/2addr v3, v5

    float-to-int v1, v3

    int-to-double v6, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    goto :goto_69

    :pswitch_d6
    const-string/jumbo v5, "SwipeDoorsillDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent(): ACTION_CANCEL mDistance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-gt v5, v4, :cond_116

    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    const-string/jumbo v5, "SwipeDoorsillDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent(): ACTION_CANCEL mIsMultiTouch="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_116
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    goto/16 :goto_69

    :pswitch_11a
    const-string/jumbo v5, "SwipeDoorsillDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent(): ACTION_UP (T/D/R)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->setIntercept(Z)V

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v5}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->userActivity()V

    iget-wide v6, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    iget v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    int-to-double v8, v5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_192

    iget-object v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v5}, Lcom/android/systemui/swipe/SwipeDoorsillDetector$UnlockCallback;->onAffordanceTap()V

    :cond_166
    :goto_166
    invoke-virtual {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->reset()V

    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-lt v5, v12, :cond_172

    move v3, v4

    :cond_172
    iput-boolean v3, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    const-string/jumbo v3, "SwipeDoorsillDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onTouchEvent(): ACTION_UP mIsMultiTouch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69

    :cond_192
    iget v5, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    int-to-double v6, v5

    iget-wide v8, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    cmpg-double v5, v6, v8

    if-gez v5, :cond_166

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->isUnlockPossible()Z

    move-result v5

    if-eqz v5, :cond_166

    const-string/jumbo v5, "SwipeDoorsillDetector#unlockExecute"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->unlockExecute()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_166

    :pswitch_data_1ae
    .packed-switch 0x0
        :pswitch_95
        :pswitch_11a
        :pswitch_aa
        :pswitch_d6
        :pswitch_69
        :pswitch_6f
    .end packed-switch
.end method

.method public reset()V
    .registers 4

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mDistance:D

    iput v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartX:F

    iput v2, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mStartY:F

    return-void
.end method

.method public setIntercept(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    return-void
.end method
