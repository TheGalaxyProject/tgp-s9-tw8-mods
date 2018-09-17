.class public Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnDismissListener;,
        Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;


# instance fields
.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mContext:Landroid/content/Context;

.field private final mFloatViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mWLPListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            "Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWLPStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowLayoutParamsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;)Landroid/view/WindowManager;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->sInstance:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private adjustBackground(Landroid/view/View;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    sget-object v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWhiteKeyguardWallpaper is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_33

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0601b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_32
    return-void

    :cond_33
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0601b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_32
.end method

.method private adjustNavigationBar(Landroid/view/View;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardNavigationBar()Z

    move-result v0

    sget-object v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "White bg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_2f
    return-void

    :cond_30
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_2f
.end method

.method private createLayoutParams(Ljava/lang/String;Z)Landroid/view/WindowManager$LayoutParams;
    .registers 7

    const/4 v2, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x96f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/high16 v1, 0x4080000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v1, 0x3e19999a    # 0.15f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const-wide/16 v2, 0x2710

    iput-wide v2, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    if-eqz p2, :cond_34

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :cond_34
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;
    .registers 3

    const-class v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->sInstance:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    if-nez v0, :cond_e

    new-instance v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->sInstance:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    :cond_e
    sget-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->sInstance:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addWLP(Landroid/view/WindowManager$LayoutParams;Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;)V
    .registers 8

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addWLP size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", wlp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;

    invoke-interface {v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;->layoutParamsUpdated()V

    :cond_53
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x3e19999a    # 0.15f

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    if-eqz p2, :cond_67

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;->layoutParamsUpdated()V
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_69

    :cond_67
    monitor-exit v2

    return-void

    :catchall_69
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hasWindow(Ljava/lang/String;)Z
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_e
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public hideFloatingView(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideFloatingView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1c
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_3e
    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->removeWLP(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_4e
    .catchall {:try_start_1c .. :try_end_4e} :catchall_56

    monitor-exit v1

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/utils/BroadcastMessageUtil;->sendFullWindowStateChanged(Landroid/content/Context;Z)V

    return-void

    :catchall_56
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAllViews()V
    .registers 11

    sget-object v8, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "removeAllViews"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v9

    :try_start_b
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1a

    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v8, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    instance-of v8, v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnDismissListener;

    if-eqz v8, :cond_4b

    check-cast v0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnDismissListener;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnDismissListener;->forcedDismiss()V

    :cond_4b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_57
    .catchall {:try_start_b .. :try_end_57} :catchall_58

    goto :goto_1a

    :catchall_58
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_5b
    :try_start_5b
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v4}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->removeWLP(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7b
    .catchall {:try_start_5b .. :try_end_7b} :catchall_58

    goto :goto_5f

    :cond_7c
    monitor-exit v9

    iget-object v8, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/systemui/servicebox/utils/BroadcastMessageUtil;->sendFullWindowStateChanged(Landroid/content/Context;Z)V

    return-void
.end method

.method public removeWLP(Landroid/view/WindowManager$LayoutParams;)V
    .registers 8

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeWLP size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", wlp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_35
    if-ltz v0, :cond_4d

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_4a

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_35

    :cond_4d
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_79

    move-result v2

    if-eqz v2, :cond_57

    monitor-exit v3

    return-void

    :cond_57
    :try_start_57
    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    const v2, 0x3e19999a    # 0.15f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWLPListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;

    invoke-interface {v2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;->layoutParamsUpdated()V
    :try_end_77
    .catchall {:try_start_57 .. :try_end_77} :catchall_79

    :cond_77
    monitor-exit v3

    return-void

    :catchall_79
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDuration(Ljava/lang/String;J)V
    .registers 8

    sget-object v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDuration k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_27
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_43

    :cond_37
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_27 .. :try_end_41} :catchall_5c

    monitor-exit v2

    return-void

    :cond_43
    :try_start_43
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput-wide p2, v0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v3, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_5c

    monitor-exit v2

    return-void

    :catchall_5c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setFlag(Ljava/lang/String;ZZ)V
    .registers 8

    sget-object v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFlag k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_32
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4e

    :cond_42
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catchall {:try_start_32 .. :try_end_4c} :catchall_8d

    monitor-exit v2

    return-void

    :cond_4e
    :try_start_4e
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-nez p2, :cond_5a

    if-eqz p3, :cond_86

    :cond_5a
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_60
    if-eqz p3, :cond_90

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_68
    if-nez p2, :cond_6c

    if-eqz p3, :cond_97

    :cond_6c
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->adjustBackground(Landroid/view/View;)V

    :goto_77
    iget-object v3, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v3, v1, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_84
    .catchall {:try_start_4e .. :try_end_84} :catchall_8d

    monitor-exit v2

    return-void

    :cond_86
    :try_start_86
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_8c
    .catchall {:try_start_86 .. :try_end_8c} :catchall_8d

    goto :goto_60

    :catchall_8d
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_90
    :try_start_90
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_68

    :cond_97
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_a3
    .catchall {:try_start_90 .. :try_end_a3} :catchall_8d

    goto :goto_77
.end method

.method public showFloatingView(Ljava/lang/String;Landroid/view/View;ZZZZJ)V
    .registers 14

    sget-object v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showFloatingView k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", d="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", p="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", dd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/servicebox/utils/BroadcastMessageUtil;->sendFullWindowStateChanged(Landroid/content/Context;Z)V

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_6b
    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->hideFloatingView(Ljava/lang/String;)V

    :cond_76
    invoke-direct {p0, p1, p6}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->createLayoutParams(Ljava/lang/String;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez p3, :cond_7e

    if-eqz p4, :cond_b1

    :cond_7e
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_84
    if-eqz p4, :cond_bb

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_8c
    iput-wide p7, v0, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    invoke-direct {p0, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->adjustNavigationBar(Landroid/view/View;)V

    invoke-direct {p0, p2}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->adjustBackground(Landroid/view/View;)V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mWindowLayoutParamsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$2;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$2;-><init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->addWLP(Landroid/view/WindowManager$LayoutParams;Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$OnLayoutParamsUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->mFloatViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af
    .catchall {:try_start_6b .. :try_end_af} :catchall_b8

    monitor-exit v2

    return-void

    :cond_b1
    :try_start_b1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I
    :try_end_b7
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_b8

    goto :goto_84

    :catchall_b8
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_bb
    :try_start_bb
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I
    :try_end_c1
    .catchall {:try_start_bb .. :try_end_c1} :catchall_b8

    goto :goto_8c
.end method
