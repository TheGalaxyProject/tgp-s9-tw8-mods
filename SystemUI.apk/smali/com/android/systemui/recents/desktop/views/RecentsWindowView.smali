.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowView;
.super Landroid/support/v7/widget/RecyclerView;
.source "RecentsWindowView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;,
        Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;,
        Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I


# instance fields
.field mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

.field mAppContext:Landroid/content/Context;

.field mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

.field mCustomOnScrollListener:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

.field mFocusedIndex:I

.field mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

.field mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

.field mRootView:Landroid/view/ViewGroup;

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;


# direct methods
.method private static synthetic -getcom-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->values()[Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->DOWN:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_46

    :goto_17
    :try_start_17
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_44

    :goto_20
    :try_start_20
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_42

    :goto_29
    :try_start_29
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_40

    :goto_32
    :try_start_32
    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->UP:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_3b} :catch_3e

    :goto_3b
    sput-object v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-com-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues:[I

    return-object v0

    :catch_3e
    move-exception v1

    goto :goto_3b

    :catch_40
    move-exception v1

    goto :goto_32

    :catch_42
    move-exception v1

    goto :goto_29

    :catch_44
    move-exception v1

    goto :goto_20

    :catch_46
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->handleMoveButtonEnabled()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private handleMoveButtonEnabled()V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    if-eqz v2, :cond_24

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    if-lez v0, :cond_25

    move v2, v3

    :goto_17
    iget-object v6, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_27

    :goto_21
    invoke-interface {v5, v2, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;->handleMoveButtonsEnabled(ZZ)V

    :cond_24
    return-void

    :cond_25
    move v2, v4

    goto :goto_17

    :cond_27
    move v3, v4

    goto :goto_21
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setHasFixedSize(Z)V

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCustomOnScrollListener:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCustomOnScrollListener:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$CustomOnScrollListener;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    new-instance v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$1;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private removeFocusedTask()V
    .registers 4

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ltz v0, :cond_29

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_29
    return-void
.end method


# virtual methods
.method public adjustFocusedIndex()V
    .registers 3

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    return-void
.end method

.method public bindViews(Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->bindViews(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public clearFocusedTask()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    const v2, 0x7f120922

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1
.end method

.method ensureFocusedIndex(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v5}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->getSpanCount()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    div-int v8, v4, v3

    rem-int v5, v4, v3

    if-eqz v5, :cond_48

    move v5, v6

    :goto_15
    add-int v1, v8, v5

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->isLayoutRtl()Z

    move-result v5

    if-eqz v5, :cond_26

    sget-object v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    if-ne p1, v5, :cond_4a

    sget-object p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    :cond_26
    :goto_26
    invoke-static {}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->-getcom-android-systemui-recents-desktop-views-RecentsWindowView$FocusDirectionSwitchesValues()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_c4

    :goto_33
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v7, v6}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    return-void

    :cond_48
    move v5, v7

    goto :goto_15

    :cond_4a
    sget-object v5, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    if-ne p1, v5, :cond_26

    sget-object p1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->LEFT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    goto :goto_26

    :pswitch_51
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_5e

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, -0x1

    :goto_5b
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_33

    :cond_5e
    add-int/lit8 v5, v4, -0x1

    goto :goto_5b

    :pswitch_61
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v4, :cond_6e

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    :goto_6b
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_33

    :cond_6e
    move v5, v7

    goto :goto_6b

    :pswitch_70
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    sub-int/2addr v5, v3

    if-ltz v5, :cond_7b

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    sub-int/2addr v5, v3

    :goto_78
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_33

    :cond_7b
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    rem-int/2addr v5, v3

    add-int/lit8 v6, v1, -0x1

    mul-int/2addr v6, v3

    add-int/2addr v5, v6

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_78

    :pswitch_89
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    div-int/2addr v5, v3

    iget v8, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/lit8 v8, v8, 0x1

    rem-int/2addr v8, v3

    if-eqz v8, :cond_a7

    :goto_95
    add-int v0, v5, v6

    add-int/lit8 v5, v1, -0x1

    if-ne v0, v5, :cond_a9

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/2addr v5, v3

    add-int/lit8 v6, v4, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_33

    :cond_a7
    move v6, v7

    goto :goto_95

    :cond_a9
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/2addr v5, v3

    if-ge v5, v4, :cond_b4

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    add-int/2addr v5, v3

    :goto_b1
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_33

    :cond_b4
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    rem-int/2addr v5, v3

    goto :goto_b1

    :pswitch_b8
    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ge v5, v4, :cond_c2

    iget v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    :goto_be
    iput v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto/16 :goto_33

    :cond_c2
    move v5, v7

    goto :goto_be

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_89
        :pswitch_51
        :pswitch_b8
        :pswitch_61
        :pswitch_70
    .end packed-switch
.end method

.method focusNewTask(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->ensureFocusedIndex(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v1

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-lt v2, v0, :cond_27

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-le v2, v1, :cond_2c

    :cond_27
    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->smoothScrollToPosition(I)V

    :cond_2c
    return-void
.end method

.method public getFocusedIndex()I
    .registers 2

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    return v0
.end method

.method getNextScrollIndex(Z)I
    .registers 8

    if-eqz p1, :cond_18

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    :goto_a
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    invoke-static {v1, v5, v4}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v1

    return v1

    :cond_18
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    goto :goto_a
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public bridge synthetic getStack()Lcom/samsung/systemui/splugins/recents/model/PluginTaskStack;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method public getViewHolderOfFocusedIndex()Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowViewAdapter$PluginRecentsWindowViewHolder;
    .registers 2

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/recents/desktop/views/PluginRecentsWindowViewAdapter$PluginRecentsWindowViewHolder;

    return-object v0
.end method

.method public init(Lcom/android/systemui/recents/model/TaskStack;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    :cond_b
    return-void
.end method

.method public isFirstRow()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    div-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public launchFocusedTask()V
    .registers 4

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ltz v0, :cond_29

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_29

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->startTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_29
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;)V
    .registers 8

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v4, v4, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->visible:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_10

    iget-boolean v4, p1, Lcom/android/systemui/recents/events/activity/RecentsViewModeChangedEvent;->isDone:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateTaskLockState(Z)V

    :cond_10
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v4}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    move v2, v3

    :goto_1d
    if-gt v2, v0, :cond_2d

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->updateViewLockState()V

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2d
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;)V
    .registers 9

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget v3, p1, Lcom/android/systemui/recents/events/activity/UnlockTaskEvent;->id:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_51

    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_51

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v2

    if-eqz v2, :cond_51

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAppContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v5, v4, v6

    const v5, 0x7f120962

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->removeLockedTask(Lcom/android/systemui/recents/model/Task;)V

    :cond_51
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateFocusedTask(Z)V

    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->removeFocusedTask()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;)V
    .registers 4

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;->direction:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    sget-object v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    if-ne v0, v1, :cond_c

    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    return-void

    :cond_c
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;->direction:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->focusNewTask(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mItemAnimator:Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->onFinishInflate()V

    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->handleMoveButtonEnabled()V

    return-void
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->addTaskAt(Lcom/android/systemui/recents/model/Task;I)V

    return-void
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZZ)V
    .registers 11

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;->onTaskCountChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_25

    const v0, 0x7f120932

    :goto_1e
    invoke-direct {v2, v0, p5}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_24
    return-void

    :cond_25
    const v0, 0x7f120933

    goto :goto_1e
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .registers 2

    return-void
.end method

.method public reload(Lcom/android/systemui/recents/model/TaskStack;)V
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->reverseStackTasks()V

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mAdapter:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-virtual {v5, v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->setNewStackTasks(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->init(Lcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->scrollToInitialState()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_20
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    iget-boolean v5, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v5, :cond_3c

    iget-object v5, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-le v5, v4, :cond_3a

    :goto_34
    iput v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    :goto_36
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->updateLayout()V

    return-void

    :cond_3a
    const/4 v4, 0x0

    goto :goto_34

    :cond_3c
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    goto :goto_36
.end method

.method public scrollDownVisibleLine()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getNextScrollIndex(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->smoothScrollToPosition(I)V

    return-void
.end method

.method scrollToInitialState()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public scrollUpVisibleLine()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getNextScrollIndex(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->smoothScrollToPosition(I)V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mCb:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$RecentsWindowViewCallbacks;

    return-void
.end method

.method public setFocusedIndex(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    return-void
.end method

.method public updateFocusedTask(Z)V
    .registers 8

    iget v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    return-void

    :cond_6
    const-string/jumbo v1, "RecentsWindowView"

    const-string/jumbo v2, "updateFocusedTask(%b) - focused index=%d\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;

    if-eqz v0, :cond_33

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->setFocus(Z)V

    :cond_33
    return-void
.end method

.method updateLayout()V
    .registers 5

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v2

    const/4 v0, 0x1

    packed-switch v2, :pswitch_data_28

    const/4 v1, 0x4

    const/4 v0, 0x1

    :goto_c
    const/16 v3, 0x8

    if-gt v2, v3, :cond_22

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setOverScrollMode(I)V

    :goto_14
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->setOrientation(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mLayoutManager:Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowLayoutManager;->setSpanCount(I)V

    return-void

    :pswitch_1f
    const/4 v1, 0x1

    const/4 v0, 0x0

    goto :goto_c

    :cond_22
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->setOverScrollMode(I)V

    goto :goto_14

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch
.end method

.method public updateTaskLockState(Z)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLockPreference()Lcom/android/systemui/recents/model/TaskLockPreference;

    move-result-object v1

    if-eqz p1, :cond_60

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_21

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-nez v5, :cond_32

    :cond_21
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskLockPreference;->getLockedTasksCount()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/android/systemui/recents/events/ui/TaskLockSettingDoneEvent;-><init>(I)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_31
    return-void

    :cond_32
    iget-boolean v5, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    if-eqz v5, :cond_5c

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v5

    if-nez v5, :cond_59

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskLockPreference;->saveLockedTask(Lcom/android/systemui/recents/model/Task;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/TaskLockedEvent;

    iget-object v7, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/systemui/recents/events/ui/TaskLockedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_59
    :goto_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_5c
    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/TaskLockPreference;->removeLockedTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_59

    :cond_60
    const/4 v0, 0x0

    :goto_61
    if-ge v0, v3, :cond_31

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v5, :cond_31

    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/TaskLockPreference;->isTaskLocked(Lcom/android/systemui/recents/model/Task$TaskKey;)Z

    move-result v5

    if-eqz v5, :cond_7d

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    :goto_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_7d
    const/4 v5, 0x0

    iput-boolean v5, v2, Lcom/android/systemui/recents/model/Task;->isTaskLocked:Z

    goto :goto_7a
.end method
