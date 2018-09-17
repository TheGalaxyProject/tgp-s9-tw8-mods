.class public Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.super Lcom/android/systemui/statusbar/phone/NavigationBarView;
.source "SecNavigationBarView.java"


# static fields
.field private static CONFIRMED:Ljava/lang/String;

.field static final DEBUG:Z

.field private static final IS_FACTORY_BINARY:Z

.field private static sPinBtnHelpDoubleTapPolicyCount:I

.field private static sPinBtnHelpSingleTapPolicyCount:I


# instance fields
.field private mAllKeyDisabled:Z

.field private mConfirm:Ljava/lang/Runnable;

.field mCurrentRemoteView:Landroid/view/View;

.field private mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpConfirmed:Z

.field private mHomeAnimRunning:Z

.field private mHomeRunnable:[Ljava/lang/Runnable;

.field private mHorizontalMoved:I

.field private mHorizontalShift:I

.field private final mImmersivePinClickListener:Landroid/view/View$OnClickListener;

.field private mImmersiveToastShowing:Z

.field mIsThemeDefault:Z

.field mIsThemeIconUse:Z

.field private mLastPinButtonClickTime:J

.field private mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

.field private mNavBarHideIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field mNavBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;

.field mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

.field private mNavBarShowIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

.field private mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

.field private mPinButtonToastShownCount:I

.field private mRightRemoteViewContainer:Landroid/widget/LinearLayout;

.field mShowPinButtonToastRunnable:Ljava/lang/Runnable;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mVerticalMoved:I

.field private mVerticalShift:I

.field private messageList:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_9

    move v0, v1

    :cond_9
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->DEBUG:Z

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->IS_FACTORY_BINARY:Z

    const/16 v0, 0xa

    sput v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->sPinBtnHelpDoubleTapPolicyCount:I

    sput v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->sPinBtnHelpSingleTapPolicyCount:I

    const-string/jumbo v0, "Confirmed"

    sput-object v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->CONFIRMED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v3, 0x0

    const v6, 0x7f0a036b

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalMoved:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalMoved:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeIconUse:Z

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    const v0, 0x7f1203a6

    const v3, 0x7f1203a7

    const v4, 0x7f1203a8

    const v5, 0x7f1203a9

    filled-new-array {v0, v3, v4, v5}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->messageList:[I

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$5;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$7;-><init>(Ljava/lang/Object;)V

    aput-object v3, v0, v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$11;-><init>(Ljava/lang/Object;)V

    aput-object v3, v0, v1

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$12;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$12;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x2

    aput-object v3, v0, v4

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$13;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x3

    aput-object v3, v0, v4

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$14;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x4

    aput-object v3, v0, v4

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$15;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$15;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x5

    aput-object v3, v0, v4

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$16;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$16;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x6

    aput-object v3, v0, v4

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$17;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$17;-><init>(Ljava/lang/Object;)V

    const/4 v4, 0x7

    aput-object v3, v0, v4

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$18;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$18;-><init>(Ljava/lang/Object;)V

    const/16 v4, 0x8

    aput-object v3, v0, v4

    new-instance v3, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$8;-><init>(Ljava/lang/Object;)V

    const/16 v4, 0x9

    aput-object v3, v0, v4

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeRunnable:[Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$6;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$9;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$4;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImmersivePinClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$10;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfirm:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->unregisterAllCallbacks()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v3}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v0, :cond_108

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarUseThemeDefault()I

    move-result v0

    if-ne v0, v1, :cond_146

    move v0, v1

    :goto_dd
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v4, v1, [Landroid/net/Uri;

    const-string/jumbo v5, "navigationbar_color"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v4, v1, [Landroid/net/Uri;

    const-string/jumbo v5, "navigationbar_use_theme_default"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_108
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v0, :cond_145

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v3, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v1, v1, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_hide_bar"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NavBarHideController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NavigationBarForceImmersiveConfirmation"

    const-string/jumbo v2, "null"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->CONFIRMED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    :cond_145
    return-void

    :cond_146
    move v0, v2

    goto :goto_dd
.end method

.method private createForceImmersiveHelpDialogView()Landroid/view/View;
    .registers 15

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v13, 0x1030132

    invoke-direct {v1, v12, v13}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v12, "layout_inflater"

    invoke-virtual {v1, v12}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    const v12, 0x7f0d00f1

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0703c8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v12

    int-to-float v2, v12

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v3, v12, Landroid/content/res/Configuration;->fontScale:F

    const v12, 0x3fa66666    # 1.3f

    cmpl-float v12, v3, v12

    if-lez v12, :cond_3f

    const v3, 0x3fa66666    # 1.3f

    :cond_3f
    const v12, 0x7f0a01fd

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v13, 0x7f1203ac

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v12, v2, v3

    const/4 v13, 0x0

    invoke-virtual {v6, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const v12, 0x7f0a01fe

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    :goto_64
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->messageList:[I

    array-length v12, v12

    if-ge v7, v12, :cond_a8

    const v12, 0x7f0d00f2

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0a01fc

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string/jumbo v12, "\u2022 "

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v12, v2, v3

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    const v12, 0x7f0a01fe

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->messageList:[I

    aget v13, v13, v7

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v12, v2, v3

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_64

    :cond_a8
    const v12, 0x7f0a01ff

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v13, 0x7f1203a5

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v12, v2, v3

    const/4 v13, 0x0

    invoke-virtual {v5, v13, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    return-object v0
.end method

.method private getForceImmersiveHelpDialog()Landroid/app/Dialog;
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_57

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_57

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->createForceImmersiveHelpDialogView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$1;-><init>(Ljava/lang/Object;)V

    const v2, 0x7f1203aa

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$2;-><init>(Ljava/lang/Object;)V

    const v2, 0x7f1203ab

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_57
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method private getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    if-nez p1, :cond_15

    const v1, 0x7f080300

    :goto_9
    if-nez p1, :cond_54

    const v0, 0x7f080301

    :goto_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v1, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v2

    return-object v2

    :cond_15
    if-ne p1, v4, :cond_1b

    const v1, 0x7f080302

    goto :goto_9

    :cond_1b
    if-ne p1, v5, :cond_21

    const v1, 0x7f080304

    goto :goto_9

    :cond_21
    if-ne p1, v6, :cond_27

    const v1, 0x7f080306

    goto :goto_9

    :cond_27
    if-ne p1, v7, :cond_2d

    const v1, 0x7f080308

    goto :goto_9

    :cond_2d
    const/4 v3, 0x5

    if-ne p1, v3, :cond_34

    const v1, 0x7f08030a

    goto :goto_9

    :cond_34
    const/4 v3, 0x6

    if-ne p1, v3, :cond_3b

    const v1, 0x7f08030c

    goto :goto_9

    :cond_3b
    const/4 v3, 0x7

    if-ne p1, v3, :cond_42

    const v1, 0x7f08030e

    goto :goto_9

    :cond_42
    const/16 v3, 0x8

    if-ne p1, v3, :cond_4a

    const v1, 0x7f080310

    goto :goto_9

    :cond_4a
    const/16 v3, 0x9

    if-ne p1, v3, :cond_52

    const v1, 0x7f080312

    goto :goto_9

    :cond_52
    const/4 v1, -0x1

    goto :goto_9

    :cond_54
    if-ne p1, v4, :cond_5a

    const v0, 0x7f080303

    goto :goto_e

    :cond_5a
    if-ne p1, v5, :cond_60

    const v0, 0x7f080305

    goto :goto_e

    :cond_60
    if-ne p1, v6, :cond_66

    const v0, 0x7f080307

    goto :goto_e

    :cond_66
    if-ne p1, v7, :cond_6c

    const v0, 0x7f080309

    goto :goto_e

    :cond_6c
    const/4 v3, 0x5

    if-ne p1, v3, :cond_73

    const v0, 0x7f08030b

    goto :goto_e

    :cond_73
    const/4 v3, 0x6

    if-ne p1, v3, :cond_7a

    const v0, 0x7f08030d

    goto :goto_e

    :cond_7a
    const/4 v3, 0x7

    if-ne p1, v3, :cond_81

    const v0, 0x7f08030f

    goto :goto_e

    :cond_81
    const/16 v3, 0x8

    if-ne p1, v3, :cond_89

    const v0, 0x7f080311

    goto :goto_e

    :cond_89
    const/16 v3, 0x9

    if-ne p1, v3, :cond_92

    const v0, 0x7f080313

    goto/16 :goto_e

    :cond_92
    const/4 v0, -0x1

    goto/16 :goto_e
.end method

.method private getThemeNavigationBarColor()I
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.systemui"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_b} :catch_14

    move-result-object v0

    :goto_c
    const v2, 0x7f060106

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    return v2

    :catch_14
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_c
.end method

.method private isHomeKey(Landroid/view/MotionEvent;)Z
    .registers 12

    const/4 v9, 0x3

    const v8, 0x7f0a020a

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0703b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-nez v4, :cond_5c

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    if-ge v2, v4, :cond_5c

    :cond_5b
    return v6

    :cond_5c
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v7, :cond_65

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    if-lt v1, v4, :cond_5b

    :cond_65
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v9, :cond_6e

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_5b

    :cond_6e
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-eqz v4, :cond_77

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_80

    :cond_77
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-le v1, v4, :cond_91

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-ge v1, v4, :cond_91

    return v7

    :cond_80
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-eq v4, v7, :cond_88

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v9, :cond_91

    :cond_88
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v4, :cond_91

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v4, :cond_91

    return v7

    :cond_91
    return v6
.end method

.method private isPinDoubleTabbed(J)Z
    .registers 10

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLastPinButtonClickTime:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x190

    cmp-long v1, v2, v4

    if-gez v1, :cond_12

    const/4 v0, 0x1

    :goto_b
    if-eqz v0, :cond_f

    const-wide/16 p1, 0x0

    :cond_f
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLastPinButtonClickTime:J

    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_41001(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private marqueeNavigationBar()V
    .registers 14

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->reorient()V

    return-void

    :cond_8
    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    const/16 v9, 0x10

    if-ge v8, v9, :cond_14

    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    const/16 v9, -0x10

    if-gt v8, v9, :cond_19

    :cond_14
    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalMoved:I

    neg-int v8, v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalMoved:I

    :cond_19
    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    const/16 v9, 0xa

    if-ge v8, v9, :cond_25

    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    const/16 v9, -0xa

    if-gt v8, v9, :cond_2a

    :cond_25
    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalMoved:I

    neg-int v8, v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalMoved:I

    :cond_2a
    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalMoved:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalMoved:I

    add-int/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    const/high16 v9, 0x40800000    # 4.0f

    div-float v5, v8, v9

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVertical:Z

    if-eqz v8, :cond_e3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    :goto_52
    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVertical:Z

    if-eqz v8, :cond_e7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    :goto_60
    int-to-float v8, v8

    mul-float/2addr v8, v5

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v7, v8

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v9, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v8, v9, :cond_eb

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_7a
    int-to-double v8, v8

    const-wide v10, 0x3f96bb98c0000000L    # 0.022199999541044235

    mul-double/2addr v8, v10

    double-to-int v6, v8

    const/4 v1, 0x0

    :goto_83
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v1, v8, :cond_138

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f4

    :cond_c1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_ee

    add-int v9, v6, v7

    :goto_d0
    iget v10, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-nez v10, :cond_f0

    add-int/lit8 v10, v6, 0x0

    :goto_d6
    iget v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_f2

    add-int/lit8 v11, v6, 0x0

    :goto_dd
    invoke-virtual {v8, v2, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPadding(IIII)V

    :goto_e0
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    :cond_e3
    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    goto/16 :goto_52

    :cond_e7
    iget v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    goto/16 :goto_60

    :cond_eb
    iget v8, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_7a

    :cond_ee
    move v9, v7

    goto :goto_d0

    :cond_f0
    const/4 v10, 0x0

    goto :goto_d6

    :cond_f2
    const/4 v11, 0x0

    goto :goto_dd

    :cond_f4
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12c

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-nez v9, :cond_126

    add-int v9, v6, v2

    :goto_114
    iget v10, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_128

    add-int v10, v6, v7

    :goto_11b
    iget v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_12a

    add-int/lit8 v11, v6, 0x0

    :goto_122
    invoke-virtual {v8, v9, v10, v4, v11}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPadding(IIII)V

    goto :goto_e0

    :cond_126
    move v9, v2

    goto :goto_114

    :cond_128
    move v10, v7

    goto :goto_11b

    :cond_12a
    const/4 v11, 0x0

    goto :goto_122

    :cond_12c
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v8, v2, v7, v4, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPadding(IIII)V

    goto :goto_e0

    :cond_138
    return-void
.end method

.method private playHomeButtonDownAnimation()V
    .registers 11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    const/4 v2, 0x0

    :goto_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeRunnable:[Ljava/lang/Runnable;

    array-length v3, v3

    if-ge v2, v3, :cond_19

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeRunnable:[Ljava/lang/Runnable;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    const-wide/16 v0, 0x1e

    const/4 v2, 0x0

    :goto_1c
    const/16 v3, 0xa

    if-ge v2, v3, :cond_32

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeRunnable:[Ljava/lang/Runnable;

    aget-object v4, v4, v2

    add-int/lit8 v5, v2, 0x1

    int-to-long v6, v5

    const-wide/16 v8, 0x1e

    mul-long/2addr v6, v8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_32
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f0a020a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    return-void
.end method

.method private playHomeButtonUpAnimation()V
    .registers 11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    if-nez v4, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x0

    :goto_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeRunnable:[Ljava/lang/Runnable;

    array-length v4, v4

    if-ge v1, v4, :cond_19

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeRunnable:[Ljava/lang/Runnable;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    const-wide/16 v2, 0x1e

    const/4 v1, 0x0

    :goto_1c
    const/16 v4, 0xa

    if-ge v1, v4, :cond_34

    rsub-int/lit8 v0, v1, 0x9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeRunnable:[Ljava/lang/Runnable;

    aget-object v5, v5, v0

    add-int/lit8 v6, v1, 0x1

    int-to-long v6, v6

    const-wide/16 v8, 0x1e

    mul-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_34
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v5, 0x7f0a020a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    return-void
.end method

.method private readHelpToastCSCPolicy()V
    .registers 7

    const/4 v5, 0x1

    sget-object v2, Lcom/android/systemui/Rune;->NAVBAR_HIDE_CSC_POLICY:Ljava/lang/String;

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_c
    if-ge v2, v3, :cond_5b

    aget-object v0, v1, v2

    const-string/jumbo v4, "DoubleTap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_34

    const-string/jumbo v2, "DoubleTap"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->sPinBtnHelpDoubleTapPolicyCount:I

    return-void

    :cond_34
    const-string/jumbo v4, "SingleTap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_58

    const-string/jumbo v2, "SingleTap"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->sPinBtnHelpSingleTapPolicyCount:I

    return-void

    :cond_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_5b
    return-void
.end method

.method private setRemoteViewContainerLayout()Z
    .registers 9

    const/4 v5, 0x1

    const-wide v6, 0x3f96bb98c0000000L    # 0.022199999541044235

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_43

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1d
    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v3, 0x7f0a02f0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v3, 0x7f0a041f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_42

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    if-nez v2, :cond_46

    :cond_42
    return v4

    :cond_43
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1d

    :cond_46
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v4, v1, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_54
    :goto_54
    return v5

    :cond_55
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-eq v2, v5, :cond_5e

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_54

    :cond_5e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v1, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_54

    :cond_69
    return v4
.end method

.method private updateNavigationBarColor(Z)V
    .registers 6

    const v3, 0x7f0600d5

    const/4 v2, 0x0

    if-eqz p1, :cond_28

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getThemeNavigationBarColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarThemeColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_15
    if-nez v0, :cond_1d

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarCurrentColor(I)V

    return-void

    :cond_28
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarColor()I

    move-result v0

    goto :goto_15
.end method

.method private updateOpenThemeIcon(Landroid/content/Context;)Z
    .registers 14

    const v11, 0x7f080317

    const v10, 0x7f0802fe

    const v9, 0x7f0802fa

    const v8, 0x7f0802f8

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v5, :cond_b8

    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_1e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_14 .. :try_end_1e} :catch_b9

    move-result v4

    :goto_1f
    const v5, 0x7f0802fa

    :try_start_22
    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4d

    const v5, 0x7f0802fe

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4d

    const v5, 0x7f0802f8

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4d

    const v5, 0x7f080317

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4d

    const v5, 0x7f080325

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4d

    const/4 v2, 0x1

    :cond_4d
    const v5, 0x7f0802f3

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7b

    const v5, 0x7f0802fd

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7b

    const v5, 0x7f0802f7

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7b

    const v5, 0x7f080316

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7b

    const v5, 0x7f080324

    invoke-virtual {p1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_77
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_22 .. :try_end_77} :catch_c6

    move-result-object v5

    if-eqz v5, :cond_7b

    const/4 v1, 0x1

    :cond_7b
    :goto_7b
    if-eqz v2, :cond_ed

    if-eqz v1, :cond_ed

    const v5, 0x7f0802f3

    invoke-virtual {p0, p1, v9, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v5, 0x7f0802fd

    invoke-virtual {p0, p1, v10, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v5, 0x7f0802f7

    invoke-virtual {p0, p1, v8, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v5, 0x7f080316

    invoke-virtual {p0, p1, v11, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v5, 0x7f080325

    const v6, 0x7f080324

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v3, 0x1

    :cond_b8
    :goto_b8
    return v3

    :catch_b9
    move-exception v0

    const-string/jumbo v5, "SecNavigationBarView"

    const-string/jumbo v6, "updateOpenThemeIcon OpenThemeTintReousrce NotFoundExceptionn"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto/16 :goto_1f

    :catch_c6
    move-exception v0

    const-string/jumbo v5, "SecNavigationBarView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateOpenThemeIcon OpenThemeIconReousrce NotFoundExceptionLightThemeIcon : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", DarkThemeIcon : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    :cond_ed
    if-nez v4, :cond_11f

    if-eqz v2, :cond_11f

    invoke-virtual {p0, p1, v9, v9}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0, p1, v10, v10}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0, p1, v8, v8}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0, p1, v11, v11}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v5, 0x7f080325

    const v6, 0x7f080325

    invoke-virtual {p0, p1, v5, v6}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v3, 0x1

    goto :goto_b8

    :cond_11f
    if-eqz v4, :cond_14f

    if-eqz v2, :cond_14f

    invoke-virtual {p0, p1, v9}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getOpenThemeDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0, p1, v10}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getOpenThemeDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0, p1, v8}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getOpenThemeDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {p0, p1, v11}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getOpenThemeDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v5, 0x7f080325

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getOpenThemeDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const/4 v3, 0x1

    goto/16 :goto_b8

    :cond_14f
    const/4 v3, 0x0

    goto/16 :goto_b8
.end method

.method private updateRemoteView()V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setRemoteViewContainerLayout()Z

    move-result v4

    if-nez v4, :cond_a

    return-void

    :cond_a
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v9, :cond_af

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    move-result-object v0

    :goto_14
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v9, :cond_b7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    move-result-object v2

    :goto_1e
    if-eqz v0, :cond_bf

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_31

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_31
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_40
    :goto_40
    if-eqz v2, :cond_cb

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_62

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_53

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_53
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_62
    :goto_62
    if-nez v0, :cond_66

    if-eqz v2, :cond_86

    :cond_66
    const-string/jumbo v4, "SecNavigationBarView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRemoteView mCurrentRemoteView visibility : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    if-eqz v4, :cond_d6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d6

    :goto_96
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v9, :cond_e7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9f
    :goto_9f
    sget-boolean v4, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v4, :cond_ae

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    move-result-object v4

    if-eqz v4, :cond_ae

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    :cond_ae
    return-void

    :cond_af
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    move-result-object v0

    goto/16 :goto_14

    :cond_b7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    move-result-object v2

    goto/16 :goto_1e

    :cond_bf
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_40

    :cond_cb
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_62

    :cond_d6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    if-eqz v4, :cond_9f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9f

    goto :goto_96

    :cond_e7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_9f
.end method


# virtual methods
.method public checkNaviKeyDisabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAllKeyDisabled:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAllKeyDisabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAllKeyDisabled:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLastPinbuttonShow()Z

    move-result v0

    :goto_11
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NavBarHideController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->checkNaviKeyDisabled(Z)V

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a036b

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method protected getOpenThemeDrawable(Landroid/content/Context;I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 6

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v2, 0x7f060104

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const v2, 0x7f060103

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v2

    return-object v2
.end method

.method protected getRtlDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .registers 8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->createRTL(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_11521()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_11612()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_11703()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_11794()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_11885()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_11976()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_12067()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_12158()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_12249()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_12340()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeAnimationIcon(I)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimationImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_32178()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_37162()V
    .registers 7

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImmersiveToastShowing:Z

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f1203ae

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1c
    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImmersiveToastShowing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$HW0YPY8mNwLYMj7O8eSPMmaoxzw$19;-><init>(Ljava/lang/Object;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f1203ad

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_37644()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImmersiveToastShowing:Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_37811(Landroid/view/View;)V
    .registers 12

    const-wide/16 v8, 0x190

    const/4 v6, 0x0

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->DEBUG:Z

    if-eqz v3, :cond_10

    const-string/jumbo v3, "SecNavigationBarView"

    const-string/jumbo v4, "ImmersivePinClickListener clicked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->isPinDoubleTabbed(J)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget v3, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->sPinBtnHelpSingleTapPolicyCount:I

    if-nez v3, :cond_3b

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPinButtonToastShownCount:I

    sget v4, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->sPinBtnHelpDoubleTapPolicyCount:I

    if-ge v3, v4, :cond_3b

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPinButtonToastShownCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPinButtonToastShownCount:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "NavigationBarForceImmersiveToastCount"

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPinButtonToastShownCount:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    if-nez v3, :cond_7e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getForceImmersiveHelpDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    return-void

    :cond_4e
    sget v3, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->sPinBtnHelpSingleTapPolicyCount:I

    if-lez v3, :cond_70

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPinButtonToastShownCount:I

    sget v4, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->sPinBtnHelpSingleTapPolicyCount:I

    if-ge v3, v4, :cond_6f

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPinButtonToastShownCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPinButtonToastShownCount:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "NavigationBarForceImmersiveToastCount"

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPinButtonToastShownCount:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6f
    :goto_6f
    return-void

    :cond_70
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPinButtonToastShownCount:I

    sget v4, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->sPinBtnHelpDoubleTapPolicyCount:I

    if-ge v3, v4, :cond_6f

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowPinButtonToastRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6f

    :cond_7e
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v3

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarHideEnabled(Z)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NavBarHideController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->setNavigationBarImmersiveMode(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateImmersivePinIcon()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_40409(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_40572(Landroid/content/DialogInterface;I)V
    .registers 8

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.settings.NAVIGATION_BAR_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_10
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string/jumbo v2, "SecNavigationBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException intent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_41230(Landroid/content/DialogInterface;)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLastPinbuttonShow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_43963()V
    .registers 5

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    if-nez v1, :cond_7

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    :cond_7
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    if-eqz v1, :cond_2b

    sget-object v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->CONFIRMED:Ljava/lang/String;

    :goto_d
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "NavigationBarForceImmersiveConfirmation"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarHideEnabled(Z)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NavBarHideController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->setNavigationBarImmersiveMode(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateImmersivePinIcon()V

    return-void

    :cond_2b
    const/4 v0, 0x0

    goto :goto_d
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_SecNavigationBarView_5768(Landroid/net/Uri;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string/jumbo v2, "SecNavigationBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OnChangedCallback onChanged uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1f

    return-void

    :cond_1f
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v2, :cond_33

    const-string/jumbo v2, "navigationbar_color"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor(Z)V

    :cond_33
    :goto_33
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v0, :cond_4a

    const-string/jumbo v0, "navigationbar_hide_bar"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setForceImmersiveMode()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateImmersivePinIcon()V

    :cond_4a
    return-void

    :cond_4b
    const-string/jumbo v2, "navigationbar_use_theme_default"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarUseThemeDefault()I

    move-result v2

    if-ne v2, v1, :cond_61

    move v0, v1

    :cond_61
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor(Z)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    goto :goto_33
.end method

.method protected onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onDetachedFromWindow()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onFinishInflate()V

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->setRemoteViewCallback(Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteViewCallback;)V

    :cond_14
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v2, :cond_41

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NavBarHideController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->setNavigationBarImmersiveMode(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImmersivePinClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLastPinbuttonShow()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "NavigationBarForceImmersiveToastCount"

    invoke-static {v2, v3, v0}, Lcom/android/systemui/Prefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mPinButtonToastShownCount:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->readHelpToastCSCPolicy()V

    :cond_41
    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_OPEN_THEME:Z

    if-eqz v2, :cond_5e

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarUseThemeDefault()I

    move-result v2

    if-ne v2, v1, :cond_4e

    move v0, v1

    :cond_4e
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    :cond_5e
    return-void
.end method

.method public onFinishedGoingToSleep()V
    .registers 2

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_ICON_MOVEMENT:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->marqueeNavigationBar()V

    :cond_7
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_14
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_ICON_ANIMATION:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeIconUse:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    :cond_17
    :goto_17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    if-nez v0, :cond_21

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->isHomeKey(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    :cond_28
    :goto_28
    :pswitch_28
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_41

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->isHomeKey(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->reScheduleAutohide(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_4b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_28

    goto :goto_17

    :pswitch_53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->playHomeButtonDownAnimation()V

    goto :goto_28

    :pswitch_57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->playHomeButtonUpAnimation()V

    goto :goto_28

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_53
        :pswitch_57
        :pswitch_28
        :pswitch_57
    .end packed-switch
.end method

.method public onOpenThemeChanged()V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->DEBUG:Z

    if-eqz v1, :cond_f

    const-string/jumbo v1, "SecNavigationBarView"

    const-string/jumbo v4, "onOpenThemeChanged()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_47

    move v1, v2

    :goto_27
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v4, :cond_30

    move v3, v2

    :cond_30
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarUseThemeDefault(I)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    return-void

    :cond_47
    move v1, v3

    goto :goto_27
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_ICON_ANIMATION:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->playHomeButtonUpAnimation()V

    :cond_12
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reorient()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_10
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NavBarHideController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->onOrientationChanged()V

    :cond_17
    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_ICON_MOVEMENT:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_22

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->marqueeNavigationBar()V

    :cond_22
    return-void
.end method

.method public setForceImmersiveMode()V
    .registers 3

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NavBarHideController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->setNavigationBarImmersiveMode(Landroid/content/Context;)Z

    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowMenu:Z

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v1, :cond_10

    if-nez p2, :cond_d

    if-eq v0, p1, :cond_10

    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    :cond_10
    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .registers 8

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v2, :cond_32

    sget-boolean v2, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v2, :cond_32

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_3a

    const/4 v0, 0x1

    :goto_11
    const-string/jumbo v2, "SecNavigationBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setNavigationIconHints showImeButton : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-nez v0, :cond_3c

    :goto_2f
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_32
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v1, :cond_39

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateImmersivePinIcon()V

    :cond_39
    return-void

    :cond_3a
    const/4 v0, 0x0

    goto :goto_11

    :cond_3c
    const/4 v1, 0x4

    goto :goto_2f
.end method

.method public setPinButtonVisibility(Z)V
    .registers 14

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    if-nez v8, :cond_8

    return-void

    :cond_8
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    if-nez v8, :cond_25

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->isOccludedOnKeyguard()Z

    move-result v8

    if-eqz v8, :cond_25

    const-string/jumbo v8, "SecNavigationBarView"

    const-string/jumbo v10, "setPinButtonVisibility() PIN Button disalbed!"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void

    :cond_25
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NavBarRemoteViewManager$NavBarRemoteView;

    move-result-object v8

    if-eqz v8, :cond_e0

    const/4 v6, 0x1

    :goto_2e
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->isNavBarATTApp()Z

    move-result v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->isUltraPowerSavingMode()Z

    move-result v4

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceEncrypted()Z

    move-result v2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/StatusBar;->isUserSetup()Z

    move-result v5

    if-eqz p1, :cond_e5

    sget-boolean v8, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->IS_FACTORY_BINARY:Z

    if-nez v8, :cond_e3

    if-nez v6, :cond_e3

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAllKeyDisabled:Z

    if-nez v8, :cond_e3

    if-nez v1, :cond_e3

    if-nez v4, :cond_e3

    if-nez v3, :cond_e3

    if-nez v2, :cond_e3

    xor-int/lit8 v8, v5, 0x1

    :goto_6a
    xor-int/lit8 v7, v8, 0x1

    :goto_6c
    const-string/jumbo v8, "SecNavigationBarView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setPinButtonVisibility() shouldshow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", leftRemoteVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mAllKeyDisabled="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAllKeyDisabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isBouncerShowing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isUltraPowerSaving="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isEmergencyMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isDeviceEncrypted="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", isUserSetupComplete : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v10

    if-eqz v7, :cond_e7

    const/4 v8, 0x0

    :goto_dc
    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void

    :cond_e0
    const/4 v6, 0x0

    goto/16 :goto_2e

    :cond_e3
    const/4 v8, 0x1

    goto :goto_6a

    :cond_e5
    const/4 v7, 0x0

    goto :goto_6c

    :cond_e7
    move v8, v9

    goto :goto_dc
.end method

.method public setVisibility(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibility(I)V

    const/16 v2, 0x8

    if-ne p1, v2, :cond_3d

    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3d

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_21

    :cond_1e
    :goto_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isRunningAnimations()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    goto :goto_1e

    :cond_3d
    return-void
.end method

.method protected updateCurrentView()V
    .registers 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    sget-boolean v0, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_REMOTEVIEW:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a0369

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    :cond_15
    return-void
.end method

.method protected updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 10

    const v5, 0x7f0802f2

    const v4, 0x7f0802f0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v1, v2, :cond_19

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq v1, v2, :cond_e5

    :cond_19
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_OPEN_THEME:Z

    if-eqz v1, :cond_e6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateOpenThemeIcon(Landroid/content/Context;)Z

    move-result v1

    :goto_21
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeIconUse:Z

    const-string/jumbo v1, "SecNavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIcons mIsThemeDefault : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsThemeIconUse : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeIconUse:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isRTL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v1, :cond_65

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeIconUse:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b1

    :cond_65
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e9

    const/4 v0, 0x1

    :goto_6d
    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_STABLE_LAYOUT:Z

    if-eqz v1, :cond_eb

    if-eqz v0, :cond_eb

    invoke-virtual {p0, p1, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRtlDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_79
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v1, 0x7f0802fb

    const v2, 0x7f0802fc

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v1, 0x7f0802f4

    const v2, 0x7f0802f6

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v1, 0x7f0802ff

    const v2, 0x7f080315

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v1, 0x7f080322

    const v2, 0x7f080323

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_b1
    const v1, 0x7f08031c

    const v2, 0x7f08031d

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v1, 0x7f080318

    const v2, 0x7f080319

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_SUPPORT_FORCE_IMMERSIVE:Z

    if-eqz v1, :cond_e5

    const v1, 0x7f080320

    const v2, 0x7f080321

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarShowIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v1, 0x7f08031e

    const v2, 0x7f08031f

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarHideIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_e5
    return-void

    :cond_e6
    const/4 v1, 0x0

    goto/16 :goto_21

    :cond_e9
    const/4 v0, 0x0

    goto :goto_6d

    :cond_eb
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_79
.end method

.method public updateImmersivePinIcon()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v0

    const-string/jumbo v1, "SecNavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateImmersivePinIcon() isImmersiveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarHideIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_2f
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_51

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f1209ce

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_4a
    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_4e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarShowIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_2f

    :cond_51
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f1209cd

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4a
.end method

.method public updatePinButtonVisibility()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLastPinbuttonShow()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    return-void
.end method
