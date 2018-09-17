.class public Lcom/android/systemui/recents/views/AbstractHelpPopup;
.super Ljava/lang/Object;
.source "AbstractHelpPopup.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/AbstractHelpPopup$1;,
        Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

.field private mBottomView:Landroid/widget/FrameLayout;

.field private mButton:Landroid/widget/Button;

.field mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCurrentPage:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpDialog:Landroid/app/AlertDialog;

.field private mHelpRootView:Landroid/view/ViewGroup;

.field private mIndicator:Lcom/android/systemui/recents/views/HelpIndicator;

.field mIsRTL:Z

.field private mKey:Ljava/lang/String;

.field mLastDeviceOrientation:I

.field private mReadyOK:Z

.field private mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

.field showRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Lcom/android/systemui/recents/views/HelpViewAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Landroid/app/AlertDialog;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mReadyOK:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Lcom/android/systemui/recents/views/HelpViewPager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;-><init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mLastDeviceOrientation:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0d016a

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0204

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0207

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/HelpViewPager;

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    new-instance v3, Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mLastDeviceOrientation:I

    invoke-direct {v3, v4, p0, v5}, Lcom/android/systemui/recents/views/HelpViewAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/AbstractHelpPopup;I)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    iget-object v4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/HelpViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const v3, 0x7f0a01f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mBottomView:Landroid/widget/FrameLayout;

    const v3, 0x7f0a0203

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/HelpIndicator;

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIndicator:Lcom/android/systemui/recents/views/HelpIndicator;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    iget-object v4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIndicator:Lcom/android/systemui/recents/views/HelpIndicator;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/HelpViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/views/HelpViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v3, 0x7f0a01fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/systemui/recents/views/AbstractHelpPopup$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup$2;-><init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    const v5, 0x7f1300ff

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->create()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setLayout(II)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const v3, 0x7f130104

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static checkShowingCondition(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/android/systemui/EmSystemUIManagerBridge;->get()Lcom/android/systemui/EmSystemUIManagerBridge;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/EmSystemUIManagerBridge;->getEmRecentsManager()Lcom/samsung/systemui/splugins/recents/PluginEmRecentsManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/systemui/splugins/recents/PluginEmRecentsManager;->isBixbyRuleRunning()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string/jumbo v2, "AbstractHelpPopup"

    const-string/jumbo v3, "Bixby is running, so skip the help popup."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_19} :catch_1a

    return v1

    :catch_1a
    move-exception v0

    const-string/jumbo v2, "AbstractHelpPopup"

    const-string/jumbo v3, "Bixby is on, but fail to get instance of bixby manager."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const-string/jumbo v2, "RecentsFullscreenHelpPopup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-nez v2, :cond_42

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "PREF_KEY_SHOW"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_42
    return v1

    :cond_43
    const-string/jumbo v2, "RecentsTaskLockHelpPopup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "PREF_KEY_SHOW"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1

    :cond_58
    return v1
.end method

.method private updateLayoutConfiguration(I)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x2

    if-ne p1, v3, :cond_26

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_e
    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mBottomView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v1, :cond_36

    :goto_23
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIsRTL:Z

    return-void

    :cond_26
    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07050f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_e

    :cond_36
    move v1, v2

    goto :goto_23
.end method


# virtual methods
.method public addContent(IIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
    .registers 11

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-result-object v0

    return-object v0
.end method

.method public addContent(IIIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
    .registers 12

    new-instance v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;-><init>(IIIII)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public dismiss()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public initialize(Ljava/lang/String;)V
    .registers 10

    const v3, 0x7f120936

    const v2, 0x7f080564

    const v5, 0x7f120937

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mKey:Ljava/lang/String;

    const-string/jumbo v0, "RecentsFullscreenHelpPopup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v0, :cond_a0

    const v0, 0x7f120940

    const v1, 0x7f080571

    invoke-virtual {p0, v0, v1, v3, v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-result-object v0

    new-array v1, v6, [I

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->setHelpTextIconList([I)V

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v0, :cond_52

    const v0, 0x7f120956

    const v1, 0x7f08056b

    const v2, 0x7f12093a

    const v3, 0x7f12093b

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-result-object v0

    new-array v1, v6, [I

    const v2, 0x7f080563

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->setHelpTextIconList([I)V

    :cond_52
    const v1, 0x7f120941

    const v2, 0x7f080568

    const v3, 0x7f120939

    const v4, 0x7f12093f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    :cond_62
    :goto_62
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-ne v0, v6, :cond_c6

    move v0, v6

    :goto_6d
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateDimMode(Z)V

    return-void

    :cond_71
    const-string/jumbo v0, "RecentsTaskLockHelpPopup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v0, :cond_c2

    const v0, 0x7f080566

    :goto_85
    const v1, 0x7f120949

    const v2, 0x7f12093c

    const v3, 0x7f12093d

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-result-object v0

    const v1, 0x7f0807a8

    const v2, 0x7f0807ab

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->setHelpTextIconList([I)V

    goto :goto_62

    :cond_a0
    const v0, 0x7f120940

    const v1, 0x7f08056c

    invoke-virtual {p0, v0, v1, v3, v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-result-object v0

    new-array v1, v6, [I

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->setHelpTextIconList([I)V

    const v1, 0x7f120941

    const v2, 0x7f080567

    const v3, 0x7f120938

    const v4, 0x7f12093f

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    goto :goto_62

    :cond_c2
    const v0, 0x7f080565

    goto :goto_85

    :cond_c6
    move v0, v7

    goto :goto_6d
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->dismiss()V

    return-void

    :cond_9
    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mLastDeviceOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/HelpViewAdapter;->onConfigurationChanged(I)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateLayoutConfiguration(I)V

    :cond_1b
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mLastDeviceOrientation:I

    return-void
.end method

.method public onPageChanged(II)V
    .registers 6

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIsRTL:Z

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1d

    :goto_e
    const/4 v0, 0x1

    :goto_f
    if-eqz v0, :cond_22

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    const v2, 0x7f1207fe

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mReadyOK:Z

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const/4 v0, 0x0

    goto :goto_f

    :cond_1f
    if-nez p1, :cond_1d

    goto :goto_e

    :cond_22
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mReadyOK:Z

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    const v2, 0x7f12093e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1c
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 5

    if-nez p3, :cond_d

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mCurrentPage:I

    if-eq v0, p1, :cond_d

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mCurrentPage:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->onPageChanged(II)V

    iput p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mCurrentPage:I

    :cond_d
    return-void
.end method

.method public onPageSelected(I)V
    .registers 2

    return-void
.end method

.method protected setPersistentState(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PREF_KEY_SHOW"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public show()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showInternal()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mLastDeviceOrientation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateLayoutConfiguration(I)V

    iput v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mCurrentPage:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/HelpViewAdapter;->setContents(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/HelpViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIsRTL:Z

    if-eqz v1, :cond_80

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/HelpViewPager;->setCurrentItem(I)V

    :goto_28
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIndicator:Lcom/android/systemui/recents/views/HelpIndicator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/HelpIndicator;->setContentSize(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_86

    const v1, 0x800015

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    const v2, 0x7f12093e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mReadyOK:Z

    :goto_52
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x700

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-ne v1, v4, :cond_7a

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_7a
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_7f
    return-void

    :cond_80
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/HelpViewPager;->setCurrentItem(I)V

    goto :goto_28

    :cond_86
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    const v2, 0x7f1207fe

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    iput-boolean v4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mReadyOK:Z

    goto :goto_52
.end method

.method public updateDimMode(Z)V
    .registers 5

    const/4 v2, 0x2

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    const/high16 v1, -0x56000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_13
.end method
