.class public Lcom/android/systemui/statusbar/phone/NavBarHideController;
.super Ljava/lang/Object;
.source "NavBarHideController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;
    }
.end annotation


# static fields
.field private static mSingleton:Lcom/android/systemui/statusbar/phone/NavBarHideController;


# instance fields
.field private mAllKeyDisabled:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mDisplay:Landroid/view/Display;

.field private mEmptyView:Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;

.field private mTouchConsumeWindowBreadth:I

.field private mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

.field private mWindowAdded:Z

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NavBarHideController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowAdded:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavBarHideController;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NavBarHideController;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mSingleton:Lcom/android/systemui/statusbar/phone/NavBarHideController;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustConsumeWindowLp()V
    .registers 11

    const/4 v9, 0x3

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideSetting()Z

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mCurrentRotation:I

    const-string/jumbo v5, "NavBarHideController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adjustConsumeWindowLp() enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mWindowAdded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowAdded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", rot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mCurrentRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mCurrentRotation:I

    if-eq v5, v8, :cond_5a

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mCurrentRotation:I

    if-ne v5, v9, :cond_92

    :cond_5a
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowBreadth:I

    :goto_5c
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mCurrentRotation:I

    if-eq v5, v8, :cond_64

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mCurrentRotation:I

    if-ne v5, v9, :cond_94

    :cond_64
    const/4 v2, -0x1

    :goto_65
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mCurrentRotation:I

    if-ne v5, v8, :cond_97

    const/4 v1, 0x5

    :goto_6a
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mAllKeyDisabled:Z

    if-nez v5, :cond_76

    xor-int/lit8 v5, v3, 0x1

    if-nez v5, :cond_76

    xor-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_78

    :cond_76
    const/4 v2, 0x4

    const/4 v4, 0x4

    :cond_78
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowAdded:Z

    if-eqz v5, :cond_91

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mEmptyView:Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_91
    return-void

    :cond_92
    const/4 v4, -0x1

    goto :goto_5c

    :cond_94
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowBreadth:I

    goto :goto_65

    :cond_97
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mCurrentRotation:I

    if-ne v5, v9, :cond_9d

    const/4 v1, 0x3

    goto :goto_6a

    :cond_9d
    const/16 v1, 0x50

    goto :goto_6a
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/phone/NavBarHideController;
    .registers 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mSingleton:Lcom/android/systemui/statusbar/phone/NavBarHideController;

    return-object v0
.end method


# virtual methods
.method public addTouchConsumeWindow()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowAdded:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->adjustConsumeWindowLp()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mEmptyView:Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public checkNaviKeyDisabled(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mAllKeyDisabled:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mAllKeyDisabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->adjustConsumeWindowLp()V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mEmptyView:Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mEmptyView:Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowManager:Landroid/view/WindowManager;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mDisplay:Landroid/view/Display;

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v6, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x7d

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowBreadth:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;-><init>(Lcom/android/systemui/statusbar/phone/NavBarHideController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mEmptyView:Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8e1

    const v4, 0x80108

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v1, "NavBarTouchConsumer"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mTouchConsumeWindowLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-void
.end method

.method public onOrientationChanged()V
    .registers 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowAdded:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mCurrentRotation:I

    if-ne v1, v0, :cond_10

    return-void

    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->adjustConsumeWindowLp()V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mCurrentRotation:I

    return-void
.end method

.method public removeTouchConsumeWindow()V
    .registers 4

    const-string/jumbo v0, "NavBarHideController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTouchConsumeWindow() mWindowAdded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowAdded:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mEmptyView:Lcom/android/systemui/statusbar/phone/NavBarHideController$EmptyView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_27
    return-void
.end method

.method public setNavigationBarImmersiveMode(Landroid/content/Context;)Z
    .registers 8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideSetting()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v0

    const-string/jumbo v3, "NavBarHideController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNavigationBarImmersiveMode() setting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", enabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_39
    invoke-static {p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v3

    if-eqz v1, :cond_4d

    :goto_3f
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarHideEnabled(Z)V

    if-eqz v1, :cond_5e

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavBarHideController;->mWindowAdded:Z

    if-eqz v3, :cond_4f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->adjustConsumeWindowLp()V

    :goto_4b
    const/4 v3, 0x1

    return v3

    :cond_4d
    const/4 v0, 0x0

    goto :goto_3f

    :cond_4f
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->addTouchConsumeWindow()V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_52} :catch_53

    goto :goto_4b

    :catch_53
    move-exception v2

    const-string/jumbo v3, "NavBarHideController"

    const-string/jumbo v4, "Error writing policy control"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    :cond_5e
    :try_start_5e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavBarHideController;->removeTouchConsumeWindow()V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_61} :catch_53

    goto :goto_4b
.end method
