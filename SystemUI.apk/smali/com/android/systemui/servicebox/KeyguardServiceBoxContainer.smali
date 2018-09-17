.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Lcom/android/systemui/servicebox/KeyguardStatusBase;
.implements Lcom/android/systemui/servicebox/KeyguardServiceBoxController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$10;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$4;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$6;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$8;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$9;
    }
.end annotation


# static fields
.field private static final DENSITY_MAP:[[I

.field public static final EXPAND_ENABLED:Z

.field public static final SUPPORT_AOD_FEATURE_VERSION:I

.field private static mHideOnKeyguard:Z

.field private static mIsCovered:Z

.field private static mIsDeskMode:Z

.field private static sIsSViewCovered:Z


# instance fields
.field private mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

.field private mClockScaleMode:I

.field private mCurrentLayoutDirection:I

.field private mDensityDpi:I

.field private mDisableTransitionType:Landroid/os/Handler;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mExpandStateChangeHandler:Landroid/os/Handler;

.field private mHasCMAS:Z

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAnimating:Z

.field private mIsExpanded:Z

.field private mIsFixedClockShowing:Z

.field private mIsMKeyboardConnected:Z

.field private mIsOrientationChanged:Z

.field private mIsRotationEnabled:Z

.field private mIsScalableClockShowing:Z

.field private mIsScreenTurnedOn:Z

.field private mKeyguardShowing:Z

.field mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

.field private mLeftArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

.field private mLeftArrowView:Landroid/widget/ImageView;

.field private mMetadataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

.field private mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

.field private mOrientation:I

.field private mOwnerInfo:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

.field private mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

.field private mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mPrivPagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteViewsItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

.field private mRightArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

.field private mRightArrowView:Landroid/widget/ImageView;

.field private mServiceBoxDexMinHeightFhd:I

.field private mServiceBoxDexMinHeightHd:I

.field private mServiceBoxDexMinHeightWqhd:I

.field private mServiceBoxExpandedHeight:I

.field private mServiceBoxItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/KeyguardPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxMKCoverHeight:I

.field private mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

.field private mServiceBoxSCoverHeight:I

.field private mServiceBoxScailingView:Landroid/view/View;

.field private mServiceBoxScailingViewDexMinHeight:I

.field private mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

.field private mServiceBoxSmallHeight:I

.field private mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShowServiceBoxInProgress:Z

.field private mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

.field private mUpdateClockHandler:Landroid/os/Handler;

.field private mUserManager:Landroid/os/UserManager;

.field private mWakeUpReason:I

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateClockHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWakeUpReason:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisableTransitionType:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsOrientationChanged:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetadataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Landroid/animation/LayoutTransition;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsAnimating:Z

    return p1
.end method

.method static synthetic -set2(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    return p0
.end method

.method static synthetic -set3(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsOrientationChanged:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWakeUpReason:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->checkMusicIsActivated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateRemoteViewsPage(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->wakeUp()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->handleScreenTurnedOn(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->refreshTime(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->showArrowAnimation()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateComponentVisibility()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateExpandState(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updatePivotX()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    sput-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->EXPAND_ENABLED:Z

    const-string/jumbo v0, "5"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->SUPPORT_AOD_FEATURE_VERSION:I

    sput-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    sput-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    const/4 v0, 0x3

    new-array v0, v0, [[I

    const/16 v1, 0x118

    const/16 v2, 0x140

    const/16 v3, 0x168

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1a4

    const/16 v2, 0x1e0

    const/16 v3, 0x21c

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x230

    const/16 v2, 0x280

    const/16 v3, 0x2d0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    sput-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    sput-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDensityDpi:I

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mKeyguardShowing:Z

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsFixedClockShowing:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScalableClockShowing:Z

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockScaleMode:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    sget-boolean v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->EXPAND_ENABLED:Z

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsAnimating:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPrivPagesMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsOrientationChanged:Z

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWakeUpReason:I

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOrientation:I

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    new-instance v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$1;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$2;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    new-instance v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$3;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    new-instance v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$4;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$5;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$6;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$7;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateClockHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$8;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$8;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisableTransitionType:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$9;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$9;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mExpandStateChangeHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$10;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;)V

    iput-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    if-ne v2, v0, :cond_fe

    :goto_a8
    sput-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    new-instance v0, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    new-instance v0, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;-><init>(Landroid/content/Context;Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetadataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->initPagesInfo()V

    return-void

    :cond_fe
    move v0, v1

    goto :goto_a8
.end method

.method private attachPage(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;
    .registers 7

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isPageEnabled(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "KeyguardServiceBoxContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attachPage() pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2f

    const/4 v2, 0x0

    return-object v2

    :cond_2f
    new-instance v1, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPrivPagesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private attachRemoteViewsPages(Ljava/lang/String;)V
    .registers 8

    const-string/jumbo v2, "KeyguardServiceBoxContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attachRemoteViewsPages() pkgName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v2, v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    iget-object v4, v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    const v5, 0x7f0d019f

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;Ljava/lang/String;ILcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "KeyguardServiceBoxContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attachRemoteViewsPages() attach page : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_60
    return-void
.end method

.method private checkMusicIsActivated(Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v2, "servicebox_music"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isMusicPlaying()Z

    move-result v1

    const-string/jumbo v2, "KeyguardServiceBoxContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkMusicIsActivated() ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    if-eqz v0, :cond_45

    :goto_41
    invoke-virtual {v2, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setMusicActivated(Z)V

    return-void

    :cond_45
    const/4 v1, 0x0

    goto :goto_41
.end method

.method private findRemotePageIndexToBeAdded(Ljava/lang/String;)I
    .registers 8

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->getPagesOrder()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_8
    array-length v3, v0

    if-ge v1, v3, :cond_4b

    :goto_b
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3f

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "servicebox_clock"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_3f
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_48

    return v2

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_4b
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "findRemotePageIndexToBeAdded() there is no pkg in order list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3
.end method

.method private getCoverContainerHeight()I
    .registers 4

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSCoverHeight:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getLargeOrSmallMark()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d23d70a    # 0.04f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDetailEventByPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "servicebox_music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "1"

    return-object v0

    :cond_d
    const-string/jumbo v0, "servicebox_calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "2"

    return-object v0

    :cond_1a
    const-string/jumbo v0, "servicebox_alarm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string/jumbo v0, "3"

    return-object v0

    :cond_27
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLargeOrSmallMark()I
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v1, 0x0

    :goto_f
    if-gt v1, v4, :cond_28

    sget-object v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    if-ne v0, v2, :cond_1b

    const/4 v2, -0x1

    return v2

    :cond_1b
    sget-object v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->DENSITY_MAP:[[I

    aget-object v2, v2, v1

    aget v2, v2, v4

    if-ne v0, v2, :cond_25

    const/4 v2, 0x1

    return v2

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_28
    return v3
.end method

.method private handleScreenTurnedOff()V
    .registers 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "handleScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mLeftArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRightArrowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setScreenTurnedOn(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isAodServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_3e

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "Go to the clock page due to AOD is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "servicebox_clock"

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method private handleScreenTurnedOn(I)V
    .registers 6

    const/4 v3, 0x6

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleScreenTurnedOn() why = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-nez v0, :cond_20

    return-void

    :cond_20
    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    if-eqz v0, :cond_49

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "Go to the clock page. mHideOnKeyguard is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "servicebox_clock"

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    :cond_33
    :goto_33
    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->showArrowAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setScreenTurnedOn(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateAnalytics(Ljava/lang/String;Z)V

    return-void

    :cond_49
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledServiceBoxMusicPage()Z

    move-result v0

    if-eqz v0, :cond_84

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_84

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_84

    const-string/jumbo v0, "servicebox_clock"

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxSharePageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    if-ne p1, v3, :cond_84

    :cond_74
    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "Go to the music page due to UX concept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "servicebox_music"

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    goto :goto_33

    :cond_84
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->isMusicPlaying()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_33

    if-ne p1, v3, :cond_33

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    const-string/jumbo v1, "Go to the clock page due to Cover open concept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "servicebox_clock"

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    goto :goto_33
.end method

.method private initDimens()V
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSmallHeight:I

    const v1, 0x7f0705ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxExpandedHeight:I

    const v1, 0x7f0705ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSCoverHeight:I

    const v1, 0x7f0705cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxMKCoverHeight:I

    const v1, 0x7f0705c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxDexMinHeightWqhd:I

    const v1, 0x7f0705c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxDexMinHeightFhd:I

    const v1, 0x7f0705c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxDexMinHeightHd:I

    const v1, 0x7f0705d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingViewDexMinHeight:I

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    if-eqz v1, :cond_77

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->init(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->updateBottomMargin(Landroid/content/Context;Z)V

    :cond_77
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    if-eqz v1, :cond_8d

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->init(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->updateBottomMargin(Landroid/content/Context;Z)V

    :cond_8d
    return-void
.end method

.method private initPagesInfo()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPrivPagesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "servicebox_clock"

    const v2, 0x7f0d006a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPrivPagesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "servicebox_music"

    const v2, 0x7f0d019b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPrivPagesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "servicebox_calendar"

    const v2, 0x7f0d01a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPrivPagesMap:Ljava/util/HashMap;

    const-string/jumbo v1, "servicebox_alarm"

    const v2, 0x7f0d0198

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isAodServiceEnabled()Z
    .registers 3

    sget v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->SUPPORT_AOD_FEATURE_VERSION:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_18

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAodEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowFaceWidgetOnAod()Z

    move-result v0

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method private isPageEnabled(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    if-eqz v0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->isPageEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSViewCovered()Z
    .registers 1

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    return v0
.end method

.method private launchBaseApplication(Ljava/lang/String;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "servicebox_music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/systemui/servicebox/pages/music/ServiceBoxMusicPage;->launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    const-string/jumbo v0, "servicebox_calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    goto :goto_15
.end method

.method private playPageMoveAnimation(I)V
    .registers 8

    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playPageMoveAnimation toIdx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    if-nez v3, :cond_25

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    return-void

    :cond_25
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, p1, :cond_2e

    return-void

    :cond_2e
    if-ge p1, v0, :cond_7d

    const/4 v1, 0x1

    :goto_31
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3b

    xor-int/lit8 v1, v1, 0x1

    :cond_3b
    iget-boolean v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsAnimating:Z

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_48
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e6d9168    # 0.232f

    mul-float v2, v3, v4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsAnimating:Z

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x74

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v1, :cond_7f

    :goto_70
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$13;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_7d
    const/4 v1, 0x0

    goto :goto_31

    :cond_7f
    neg-float v2, v2

    goto :goto_70
.end method

.method private preProcessingBeforePageAttached(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "servicebox_calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    :cond_e
    :goto_e
    return-void

    :cond_f
    const-string/jumbo v0, "servicebox_music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/music/MusicController;->addCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    goto :goto_e
.end method

.method private refreshTime(I)V
    .registers 5

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshTime() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->refreshViews(I)V

    return-void
.end method

.method private saveCurrentPageKeyListForAOD()V
    .registers 6

    const-string/jumbo v2, ""

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_45
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->saveCurrentPageKeyListForAOD(Ljava/lang/String;)V

    return-void
.end method

.method private sendGsimLog(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method private setMobileKeyboardState(Z)V
    .registers 5

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMobileKeyboardState() isConnected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->setMobileKeyboardState(Z)V

    if-nez p1, :cond_2a

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    :goto_23
    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setExpandState(Z)V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private showArrowAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-nez v0, :cond_1f

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->needToPlayGuideArrow(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_20

    :cond_1f
    return-void

    :cond_20
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->start()V

    return-void
.end method

.method private updateAnalytics(Ljava/lang/String;Z)V
    .registers 7

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    if-eqz v3, :cond_f

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getDetailEventByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    return-void

    :cond_f
    return-void

    :cond_10
    if-eqz p2, :cond_1e

    const-string/jumbo v2, "107"

    :goto_15
    if-eqz p2, :cond_22

    const-string/jumbo v1, "1060"

    :goto_1a
    invoke-static {v2, v1, v0}, Lcom/android/systemui/util/AnalyticUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    const-string/jumbo v2, "106"

    goto :goto_15

    :cond_22
    const-string/jumbo v1, "1050"

    goto :goto_1a
.end method

.method private updateComponentVisibility()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    if-eqz v0, :cond_19

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenAllDisabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_19
.end method

.method private updateContainerLayout()V
    .registers 8

    const/16 v6, 0x438

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSmallHeight:I

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    sget-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-eqz v4, :cond_a2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getCoverContainerHeight()I

    move-result v0

    const v2, 0x3f428f5c    # 0.76f

    :cond_12
    :goto_12
    const-string/jumbo v4, "KeyguardServiceBoxContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateContainerLayout() h = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", s = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", c = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mk = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", d = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setMinimumHeight(I)V

    move v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$14;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$14;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;I)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    sget-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-eqz v4, :cond_92

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMinimumHeight()I

    move-result v4

    if-eq v4, v3, :cond_92

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    int-to-float v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    :cond_92
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateLayout()V

    return-void

    :cond_a2
    sget-boolean v4, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v4, :cond_b0

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v4, :cond_b0

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxMKCoverHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_12

    :cond_b0
    sget-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-eqz v4, :cond_de

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v4, :cond_c3

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_c3
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v4, v6, :cond_d2

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxDexMinHeightWqhd:I

    :goto_cb
    iget v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingViewDexMinHeight:I

    const v2, 0x3fb33333    # 1.4f

    goto/16 :goto_12

    :cond_d2
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v6, :cond_db

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxDexMinHeightHd:I

    goto :goto_cb

    :cond_db
    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxDexMinHeightFhd:I

    goto :goto_cb

    :cond_de
    sget-boolean v4, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v4, :cond_12

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v4, :cond_12

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxExpandedHeight:I

    const/high16 v2, 0x3f800000    # 1.0f

    goto/16 :goto_12
.end method

.method private updateExpandState(Z)V
    .registers 7

    const-string/jumbo v2, "KeyguardServiceBoxContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateExpandState() >> START >> isExpand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsExpanded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v2, :cond_2f

    sget-boolean v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-eqz v2, :cond_3e

    :cond_2f
    :goto_2f
    const/4 p1, 0x0

    :cond_30
    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-ne v2, p1, :cond_47

    const-string/jumbo v2, "KeyguardServiceBoxContainer"

    const-string/jumbo v3, "updateExpandState() << END << same state"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-nez v2, :cond_2f

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsFixedClockShowing:Z

    if-eqz v2, :cond_30

    goto :goto_2f

    :cond_47
    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    move v0, p1

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    if-eqz v2, :cond_97

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v2

    if-eqz v2, :cond_97

    sget-boolean v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    xor-int/lit8 v1, v2, 0x1

    :goto_5b
    if-eqz v1, :cond_99

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->makeTransitionData()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$11;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Z)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_6e
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->updateBottomMargin(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->updateBottomMargin(Landroid/content/Context;Z)V

    const-string/jumbo v2, "KeyguardServiceBoxContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateExpandState() << END << isExpandFinal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_97
    const/4 v1, 0x0

    goto :goto_5b

    :cond_99
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    if-eqz v0, :cond_a2

    const/4 v2, 0x1

    :goto_9e
    invoke-virtual {v3, v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->setPageType(I)V

    goto :goto_6e

    :cond_a2
    const/4 v2, 0x0

    goto :goto_9e
.end method

.method private updatePivotX()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    return-void
.end method

.method private declared-synchronized updateRemoteViewsPage(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    const-string/jumbo v4, "KeyguardServiceBoxContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRemoteViewsPage() item = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mIsDeskMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    if-eqz v4, :cond_9c

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_35
    if-ltz v1, :cond_55

    iget-object v5, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v4, v4, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v2, p1}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->copyFrom(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    const/4 v0, 0x1

    :cond_55
    if-eqz v0, :cond_6b

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v5, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateRemoteViews(Ljava/lang/String;)V

    :cond_5e
    :goto_5e
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->saveCurrentPageKeyListForAOD()V
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_99

    monitor-exit p0

    return-void

    :cond_68
    add-int/lit8 v1, v1, -0x1

    goto :goto_35

    :cond_6b
    :try_start_6b
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-nez v4, :cond_5e

    sget-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5e

    sget-boolean v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5e

    iget-object v4, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findRemotePageIndexToBeAdded(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5e

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    iget-object v6, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    const v7, 0x7f0d019f

    invoke-direct {v5, p0, v6, v7, p1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;Ljava/lang/String;ILcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_98
    .catchall {:try_start_6b .. :try_end_98} :catchall_99

    goto :goto_5e

    :catchall_99
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_9c
    :try_start_9c
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_a4
    if-ltz v1, :cond_bd

    iget-object v5, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v4, v4, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_bd
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_c5
    if-ltz v1, :cond_e0

    iget-object v5, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ec

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_e0
    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v5, p1, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->removeCacheData(Ljava/lang/String;)V
    :try_end_e7
    .catchall {:try_start_9c .. :try_end_e7} :catchall_99

    goto/16 :goto_5e

    :cond_e9
    add-int/lit8 v1, v1, -0x1

    goto :goto_a4

    :cond_ec
    add-int/lit8 v1, v1, -0x1

    goto :goto_c5
.end method

.method private wakeUp()V
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "com.android.systemui:SERVICE_BOX"

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void
.end method

.method private writePageToSettings(Ljava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxSharePageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public cancelGuideNotification()V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_12

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_12
    return-void
.end method

.method public disableBlurFlag(Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "disableBlurFlag pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->setDuration(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->setFlag(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public dismissServiceBox(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dismissServiceBox pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->refreshTime()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/systemui/servicebox/-$Lambda$hdt2P97Ci8sZM36d73A824YH2OU$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/servicebox/-$Lambda$hdt2P97Ci8sZM36d73A824YH2OU$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateAnalytics(Ljava/lang/String;Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->resetTimer()V

    :cond_9
    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-nez v0, :cond_11

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    if-eqz v0, :cond_13

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_12
.end method

.method public getClockBottom()I
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getClockScaleMode()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockScaleMode:I

    return v0
.end method

.method public getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPagePkgName()Ljava/lang/String;
    .registers 5

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v3, :cond_c

    const/4 v3, 0x0

    return-object v3

    :cond_c
    move-object v2, v0

    check-cast v2, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "clone_clock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const-string/jumbo v1, "servicebox_clock"

    :cond_1f
    return-object v1
.end method

.method public getOwnerInfo()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    return-object v0
.end method

.method public getPageTopPos(Ljava/lang/String;)I
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v2, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCacheData(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v0

    if-nez v0, :cond_a

    return v3

    :cond_a
    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getTopPosOfHolder()I

    move-result v1

    sget-boolean v2, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    if-eqz v2, :cond_2c

    if-nez v1, :cond_2c

    const-string/jumbo v2, "servicebox_clock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    const-string/jumbo v3, "clone_clock"

    invoke-virtual {v2, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCacheData(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getTopPosOfHolder()I

    move-result v1

    :cond_2c
    return v1
.end method

.method public getStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-object v0
.end method

.method public hideArrowAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->needToPlayGuideArrow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;->finishGuideArrow(Landroid/content/Context;)V

    return-void
.end method

.method public isContainerExpanded()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isKeyguardShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->isKeyguardShowing()Z

    move-result v0

    return v0
.end method

.method public isPagedViewEnabled()Z
    .registers 3

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_f

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_FULL_PAGE_CLOCK:Z

    :cond_f
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isScalableClockShowing()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScalableClockShowing:Z

    return v0
.end method

.method public isShowServiceBox()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsCovered:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method synthetic lambda$-com_android_systemui_servicebox_KeyguardServiceBoxContainer_20436(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->onOwnerInfoSpaceChanged(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_servicebox_KeyguardServiceBoxContainer_40496(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 7

    const/4 v0, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->registListener()V

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_8b

    :goto_27
    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    :cond_29
    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->registerCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_45
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_6a

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_6a
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->registerClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    :cond_79
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowFaceWidgetOnKeyguard()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    sget-boolean v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setSwipeLocked(Z)V

    return-void

    :cond_8b
    const/4 v0, 0x0

    goto :goto_27
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    const/16 v5, 0x1180

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_2b

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOrientation:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateClockHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateClockHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_24
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mUpdateClockHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_29
    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsOrientationChanged:Z

    :cond_2b
    iget v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-eq v3, v4, :cond_3c

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mCurrentLayoutDirection:I

    :cond_3c
    sget-boolean v3, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-eqz v3, :cond_46

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updatePivotX()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    :cond_46
    sget-boolean v3, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v3, :cond_5e

    iget-boolean v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget v3, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v3, v1, :cond_b0

    move v3, v1

    :goto_51
    if-eq v4, v3, :cond_5e

    iget v3, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v3, v1, :cond_b2

    :goto_57
    iput-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_5e
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetadataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->onConfigurationChanged()V

    const-string/jumbo v1, "servicebox_calendar"

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isPageEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->onConfigurationChanged()V

    :cond_79
    iget-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    if-eqz v1, :cond_af

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsOrientationChanged:Z

    if-eqz v1, :cond_af

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_af

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->removeAllViews()V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxSharePageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->showArrowAnimation()V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsOrientationChanged:Z

    :cond_af
    return-void

    :cond_b0
    move v3, v2

    goto :goto_51

    :cond_b2
    move v1, v2

    goto :goto_57
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->initDimens()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->unregistListener()V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mKnoxStateCallback:Lcom/android/systemui/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/KnoxStateMonitor;->removeCallback(Lcom/android/systemui/KnoxStateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_2b
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_36
    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockCallback:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->unregisterClockChangedCallback(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$ClockCallback;)V

    :cond_45
    return-void
.end method

.method public onDismissServiceBoxStarted(Ljava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDismissServiceBoxStarted pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    const/4 v1, 0x0

    const-wide/16 v2, 0x14d

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    :cond_26
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    new-instance v0, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    const v0, 0x7f0a0298

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    const v0, 0x7f0a027a

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    new-instance v3, Lcom/android/systemui/servicebox/-$Lambda$hdt2P97Ci8sZM36d73A824YH2OU;

    invoke-direct {v3, p0}, Lcom/android/systemui/servicebox/-$Lambda$hdt2P97Ci8sZM36d73A824YH2OU;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->setSpaceChangedListener(Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView$OnOwnerInfoSpaceChangedListener;)V

    const v0, 0x7f0a0297

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxScailingView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateComponentVisibility()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updatePivotX()V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_b3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/music/MusicController;->clearListeners()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    const v0, 0x7f0a0295

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mLeftArrowView:Landroid/widget/ImageView;

    const v0, 0x7f0a0296

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRightArrowView:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mLeftArrowView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mLeftArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    new-instance v0, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRightArrowView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRightArrowAnimator:Lcom/android/systemui/servicebox/utils/GuideArrowAnimator;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->showArrowAnimation()V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setServiceBoxController(Lcom/android/systemui/servicebox/KeyguardServiceBoxController;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMetadataParser:Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;

    invoke-virtual {v0, v6}, Lcom/android/systemui/servicebox/pages/remoteviews/MetadataParser;->loadAllMetadatas(Ljava/lang/Runnable;)V

    :cond_b3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v0, :cond_d5

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v0, v1, :cond_f9

    move v0, v1

    :goto_ce
    iput-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_d5
    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateContainerLayout()V

    const v0, 0x7f0a027b

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_f8

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0x16f

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfoLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_f8
    return-void

    :cond_f9
    move v0, v2

    goto :goto_ce
.end method

.method public onPageSelected(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateAnalytics(Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->checkMusicIsActivated(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public onSettingsChanged(Landroid/net/Uri;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->onSettingsChanged(Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowFaceWidgetOnKeyguard()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    sget-boolean v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setSwipeLocked(Z)V

    return-void
.end method

.method public refreshTime()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->refreshTime(I)V

    return-void
.end method

.method public reissueAllPages()V
    .registers 10

    const/4 v6, 0x0

    const-string/jumbo v5, "KeyguardServiceBoxContainer"

    const-string/jumbo v7, "reissueAllPages() >> START >>"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->clear()V

    const-string/jumbo v5, "servicebox_clock"

    invoke-direct {p0, v5}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->attachPage(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    const-string/jumbo v5, "servicebox_clock"

    invoke-direct {p0, v5}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->writePageToSettings(Ljava/lang/String;)V

    sget-boolean v5, Lcom/android/systemui/Rune;->KEYWI_SUPPORT_SERVICEBOX:Z

    if-eqz v5, :cond_c0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mMusicControllerListener:Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-virtual {v5, v7}, Lcom/android/systemui/servicebox/pages/music/MusicController;->removeCallback(Lcom/android/systemui/servicebox/pages/music/MusicController$MusicControllerListener;)V

    const-string/jumbo v5, "KeyguardServiceBoxContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", u = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", d = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", s = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_bd

    xor-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_bd

    sget-boolean v5, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_bd

    sget-boolean v5, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_bd

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxSettingsHelper:Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/utils/ServiceBoxSettingsHelper;->getPagesOrder()[Ljava/lang/String;

    move-result-object v3

    array-length v7, v3

    move v5, v6

    :goto_96
    if-ge v5, v7, :cond_bd

    aget-object v4, v3, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a3

    :cond_a0
    :goto_a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    :cond_a3
    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPrivPagesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b9

    invoke-direct {p0, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->attachPage(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    move-result-object v0

    if-eqz v0, :cond_a0

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->preProcessingBeforePageAttached(Ljava/lang/String;)V

    goto :goto_a0

    :cond_b9
    invoke-direct {p0, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->attachRemoteViewsPages(Ljava/lang/String;)V

    goto :goto_a0

    :cond_bd
    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->saveCurrentPageKeyListForAOD()V

    :cond_c0
    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->getChildCount()I

    move-result v5

    if-lez v5, :cond_d2

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v5, v6, v6}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    :cond_d2
    sget-boolean v5, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v5, :cond_df

    iget-boolean v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    if-eqz v5, :cond_df

    iget-boolean v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-direct {p0, v5}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setMobileKeyboardState(Z)V

    :cond_df
    const-string/jumbo v5, "KeyguardServiceBoxContainer"

    const-string/jumbo v6, "reissueAllPages() << END <<"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeRemoteViews(Ljava/lang/String;)V
    .registers 7

    const-string/jumbo v2, "KeyguardServiceBoxContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeRemoteViews() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_22
    if-ltz v0, :cond_42

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v1, v2, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mRemoteViewsItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    :cond_42
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_4a
    if-ltz v0, :cond_71

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v2, v1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->removeCacheData(Ljava/lang/String;)V

    :cond_6e
    add-int/lit8 v0, v0, -0x1

    goto :goto_4a

    :cond_71
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->saveCurrentPageKeyListForAOD()V

    return-void
.end method

.method public sendRequestRemoteViewsBroadcast()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.REQUEST_SERVICEBOX_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setClockScaleMode(I)V
    .registers 5

    iget v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockScaleMode:I

    if-eq v0, p1, :cond_32

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClockScaleMode() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockScaleMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mClockScaleMode:I

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->onClockScaleModeChanged(I)V

    :cond_32
    return-void
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_9
    if-ltz v0, :cond_36

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isShowServiceBox()Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-boolean v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2d

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->playPageMoveAnimation(I)V

    :goto_2c
    return-void

    :cond_2d
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxViewPager:Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    goto :goto_2c

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_36
    return-void
.end method

.method public setExpandState(Z)V
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setExpandState() isExpand = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsExpanded = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsScreenTurnedOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScreenTurnedOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->EXPAND_ENABLED:Z

    if-nez v1, :cond_3a

    return-void

    :cond_3a
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mExpandStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mExpandStateChangeHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_47
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mExpandStateChangeHandler:Landroid/os/Handler;

    invoke-static {v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mExpandStateChangeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setFixedClockShowing(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsFixedClockShowing:Z

    if-eq v0, p1, :cond_37

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFixedClockShowing() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsFixedClockShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsFixedClockShowing:Z

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z

    if-eqz v0, :cond_37

    if-eqz p1, :cond_37

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->setExpandState(Z)V

    :cond_37
    return-void
.end method

.method public setScalableClockShowing(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScalableClockShowing:Z

    if-eq v0, p1, :cond_2d

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScalableClockShowing() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScalableClockShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsScalableClockShowing:Z

    :cond_2d
    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    return-void
.end method

.method public showServiceBox(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->showServiceBox(Ljava/lang/String;Z)V

    return-void
.end method

.method public showServiceBox(Ljava/lang/String;Z)V
    .registers 20

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    if-nez v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hasWindow(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_16
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    const-string/jumbo v4, "Ignore show service box. It is already in progress or showing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mKeyguardShowing:Z

    if-nez v3, :cond_49

    xor-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_49

    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignore show service box. mKeyguardShowing="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mKeyguardShowing:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_49
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showServiceBox pkgName = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", isExternal = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", keyguard showing = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", hideOnKgd="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v7, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_93
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_209

    move-result v3

    if-eqz v3, :cond_9f

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    return-void

    :cond_9f
    :try_start_9f
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sendGsimLog(Ljava/lang/String;Z)V

    const-class v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v3}, Lcom/android/systemui/KnoxStateMonitor;->isLockscreenAllDisabled()Z

    move-result v3

    if-eqz v3, :cond_c4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->launchBaseApplication(Ljava/lang/String;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->wakeUp()V
    :try_end_be
    .catchall {:try_start_9f .. :try_end_be} :catchall_209

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    return-void

    :cond_c4
    :try_start_c4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCacheData(Ljava/lang/String;)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v2

    if-eqz v2, :cond_ee

    invoke-virtual {v2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->showExternalActivity()Z

    move-result v3

    if-eqz v3, :cond_ee

    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    const-string/jumbo v4, "external activity is launched"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_e5

    sget-boolean v3, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    if-eqz v3, :cond_e8

    :cond_e5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->wakeUp()V
    :try_end_e8
    .catchall {:try_start_c4 .. :try_end_e8} :catchall_209

    :cond_e8
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    return-void

    :cond_ee
    const/16 v16, 0x0

    :try_start_f0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v12, v3, -0x1

    :goto_fa
    if-ltz v12, :cond_132

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;

    invoke-virtual {v15}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_165

    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showServiceBox item pkgName = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v15

    :cond_132
    if-eqz v16, :cond_1f3

    const-string/jumbo v3, "servicebox_clock"

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz p2, :cond_147

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_14f

    :cond_147
    sget-boolean v3, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    if-eqz v3, :cond_168

    xor-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_168

    :cond_14f
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->launchBaseApplication(Ljava/lang/String;Lcom/android/systemui/servicebox/KeyguardStatusCallback;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->wakeUp()V
    :try_end_15f
    .catchall {:try_start_f0 .. :try_end_15f} :catchall_209

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    return-void

    :cond_165
    add-int/lit8 v12, v12, -0x1

    goto :goto_fa

    :cond_168
    :try_start_168
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    if-eqz v3, :cond_178

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    const/4 v4, 0x1

    const-wide/16 v8, 0x64

    invoke-interface {v3, v4, v8, v9}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->setFullScreenMode(ZJ)V

    :cond_178
    const-string/jumbo v3, "KeyguardServiceBoxContainer"

    const-string/jumbo v4, "showServiceBox!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1f9

    const/4 v13, 0x2

    :goto_184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v13}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPageView(Landroid/content/Context;ZI)Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;

    move-result-object v5

    if-nez p2, :cond_196

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setPageType(IZ)V

    :cond_196
    sget-boolean v3, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->sIsSViewCovered:Z

    invoke-virtual {v5, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setCoverState(Z)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsMKeyboardConnected:Z

    invoke-virtual {v5, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V

    if-eqz p2, :cond_1b2

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer$12;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1b2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mPageAttachedStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v5, v3}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v6, 0x0

    const/4 v6, 0x1

    if-eqz v6, :cond_203

    const/4 v6, 0x1

    :goto_1be
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget-boolean v7, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsDeskMode:Z

    if-nez v7, :cond_205

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsRotationEnabled:Z

    if-nez v7, :cond_205

    sget-boolean v7, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHideOnKeyguard:Z

    :goto_1d6
    xor-int/lit8 v9, v7, 0x1

    if-eqz p2, :cond_207

    const/4 v7, 0x1

    :goto_1db
    int-to-long v10, v7

    const/4 v8, 0x1

    move v7, v6

    invoke-virtual/range {v3 .. v11}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->showFloatingView(Ljava/lang/String;Landroid/view/View;ZZZZJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mResetTimer:Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/servicebox/utils/ServiceBoxPageResetTimer;->setServiceBoxShowing(Z)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/servicebox/pages/KeyguardPageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->updateAnalytics(Ljava/lang/String;Z)V
    :try_end_1f3
    .catchall {:try_start_168 .. :try_end_1f3} :catchall_209

    :cond_1f3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    return-void

    :cond_1f9
    :try_start_1f9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mIsExpanded:Z
    :try_end_1fd
    .catchall {:try_start_1f9 .. :try_end_1fd} :catchall_209

    if-eqz v3, :cond_201

    const/4 v13, 0x1

    goto :goto_184

    :cond_201
    const/4 v13, 0x0

    goto :goto_184

    :cond_203
    const/4 v6, 0x0

    goto :goto_1be

    :cond_205
    const/4 v7, 0x1

    goto :goto_1d6

    :cond_207
    const/4 v7, -0x1

    goto :goto_1db

    :catchall_209
    move-exception v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mShowServiceBoxInProgress:Z

    throw v3
.end method

.method public updateCMAS(Z)V
    .registers 5

    const-string/jumbo v0, "KeyguardServiceBoxContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCMAS() hasCmasNotification = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mHasCMAS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    if-eq v0, p1, :cond_37

    iput-boolean p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mHasCMAS:Z

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mServiceBoxPageAdapter:Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPageAdapter;->updateCMAS(Z)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mOwnerInfo:Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardOwnerInfoView;->updateOwnerInfo(Z)V

    :cond_37
    return-void
.end method

.method public updateClockPageLocation(F)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxContainer;->mStatusCallback:Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->updateClockPosition(F)V

    :cond_9
    return-void
.end method
