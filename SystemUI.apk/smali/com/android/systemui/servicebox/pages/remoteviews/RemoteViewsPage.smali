.class public Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;
.super Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;
.source "RemoteViewsPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$1;,
        Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$2;,
        Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field private mExpandBottomPadding:I

.field private mIsAttachReserved:Z

.field private mIsViewAttached:Z

.field private mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

.field private mLastUpdateTime:J

.field private mRemoteViewHolder:Landroid/widget/FrameLayout;

.field private mRestrictedHolderExpandHeight:I

.field private mRestrictedHolderSmallHeight:I

.field private mShowServiceBoxListener:Landroid/view/View$OnClickListener;

.field private mTopActivityChangeCheckHandler:Landroid/os/Handler;

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mUpdateHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getKeyguardStatusCallback()Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->showServiceBox()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    const/4 v0, -0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mExpandBottomPadding:I

    iput v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderSmallHeight:I

    iput v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderExpandHeight:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mLastUpdateTime:J

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsViewAttached:Z

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsAttachReserved:Z

    iput v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mTouchDownY:I

    new-instance v0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$1;-><init>(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mUpdateHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$2;-><init>(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mShowServiceBoxListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;-><init>(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mTopActivityChangeCheckHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07059d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mExpandBottomPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderSmallHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderExpandHeight:I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mAm:Landroid/app/ActivityManager;

    return-void
.end method

.method private getTopActivityName()Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mAm:Landroid/app/ActivityManager;

    if-nez v1, :cond_7

    return-object v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v1

    :cond_1e
    return-object v2
.end method

.method private isValidViewClicked(II)Z
    .registers 11

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mTouchDownX:I

    sub-int v1, p1, v1

    int-to-double v2, v1

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mTouchDownY:I

    sub-int v1, p2, v1

    int-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v0, v2

    const/16 v1, 0xfa

    if-ge v0, v1, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method private onViewClicked()V
    .registers 7

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mTopActivityChangeCheckHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private overrideOnClickListener(Landroid/view/View;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1b

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_f
    if-ge v2, v1, :cond_20

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->overrideOnClickListener(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1b
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mShowServiceBoxListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_20
    return-void
.end method

.method private sendUpdateMessage(J)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->isBigView()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mTouchDownY:I

    :cond_1a
    :goto_1a
    invoke-super {p0, p1}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_1f
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->isValidViewClicked(II)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->onViewClicked()V

    goto :goto_1a
.end method

.method protected getContentsView(I)Landroid/view/View;
    .registers 10

    const/4 v7, 0x1

    const/4 v0, 0x0

    :try_start_2
    iget v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mPageType:I

    if-nez v3, :cond_33

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v3, v3, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_6b

    move-result-object v0

    :cond_11
    :goto_11
    if-eqz v0, :cond_29

    iget-boolean v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsViewAttached:Z

    if-eqz v3, :cond_29

    if-ne p1, v7, :cond_9e

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v3, v3, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v4, v4, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    if-ne v3, v4, :cond_9a

    const-string/jumbo v3, "remoteviews_page_small"

    :goto_26
    invoke-virtual {v0, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->isBigView()Z

    move-result v3

    if-nez v3, :cond_32

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->overrideOnClickListener(Landroid/view/View;)V

    :cond_32
    return-object v0

    :cond_33
    :try_start_33
    iget v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mPageType:I

    if-ne v3, v7, :cond_8d

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v3, v3, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v3, v3, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v4, v4, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    if-ne v3, v4, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_59

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_11

    :cond_59
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mExpandBottomPadding:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_6a} :catch_6b

    goto :goto_11

    :catch_6b
    move-exception v1

    sget-object v3, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Occur exception at apply() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v5, v5, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11

    :cond_8d
    :try_start_8d
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v3, v3, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_97} :catch_6b

    move-result-object v0

    goto/16 :goto_11

    :cond_9a
    const-string/jumbo v3, "remoteviews_page_expand"

    goto :goto_26

    :cond_9e
    const/4 v3, 0x2

    if-ne p1, v3, :cond_b7

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v3, v3, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v4, v4, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    if-ne v3, v4, :cond_b3

    const-string/jumbo v3, "remoteviews_page_small"

    :goto_ae
    invoke-virtual {v0, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto/16 :goto_29

    :cond_b3
    const-string/jumbo v3, "remoteviews_page_big"

    goto :goto_ae

    :cond_b7
    const-string/jumbo v3, "remoteviews_page_small"

    invoke-virtual {v0, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto/16 :goto_29
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRemoteViewHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method protected getTransitionOption(Z)Lcom/android/systemui/servicebox/utils/SecTransitionOption;
    .registers 4

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateDefaultOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->setTransitionType(I)Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0

    :cond_c
    invoke-static {}, Lcom/android/systemui/servicebox/utils/SecTransitionOption;->generateMoveOption()Lcom/android/systemui/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsViewAttached:Z

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsAttachReserved:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsAttachReserved:Z

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->updateRemoteViews()V

    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsViewAttached:Z

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    const v0, 0x7f0a0494

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRemoteViewHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    const/high16 v6, 0x40000000    # 2.0f

    invoke-super {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v3, v4, :cond_80

    const/4 v2, 0x1

    :goto_e
    if-eqz v2, :cond_7f

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getMeasuredHeight()I

    move-result v0

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->isBigView()Z

    move-result v3

    if-nez v3, :cond_78

    sget-object v3, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMeasure() height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", small max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderSmallHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", expand max = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderExpandHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mPageType:I

    if-nez v3, :cond_82

    iget v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderSmallHeight:I

    if-le v0, v3, :cond_82

    iget v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderSmallHeight:I

    :cond_5f
    :goto_5f
    sget-object v3, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onMeasure() final height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/KeyguardServiceBoxPage;->onMeasure(II)V

    :cond_7f
    return-void

    :cond_80
    const/4 v2, 0x0

    goto :goto_e

    :cond_82
    iget v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mPageType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5f

    iget v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderExpandHeight:I

    if-le v0, v3, :cond_5f

    iget v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRestrictedHolderExpandHeight:I

    goto :goto_5f
.end method

.method public refreshViews(I)V
    .registers 2

    return-void
.end method

.method public setItem(Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mItem:Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    return-void
.end method

.method public updateRemoteViews()V
    .registers 8

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mLastUpdateTime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_25

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_25

    sget-object v2, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateRemoteViews() return : not reached the next update time yet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mLastUpdateTime:J

    sub-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->sendUpdateMessage(J)V

    return-void

    :cond_25
    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsAnimating:Z

    if-eqz v2, :cond_37

    sget-object v2, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateRemoteViews() return : animation is in progress"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x14d

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->sendUpdateMessage(J)V

    return-void

    :cond_37
    iget-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsViewAttached:Z

    if-nez v2, :cond_47

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mIsAttachReserved:Z

    sget-object v2, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateRemoteViews() return : view is not showing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_47
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_54
    sget-object v2, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateRemoteViews()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v0, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mLastUpdateTime:J

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->mRemoteViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
