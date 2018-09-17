.class public Lcom/android/settings/widget/LabeledSeekBar;
.super Landroid/widget/SeekBar;
.source "LabeledSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/LabeledSeekBar$1;,
        Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;
    }
.end annotation


# instance fields
.field private final mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

.field private mLabels:[Ljava/lang/String;

.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private final mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static synthetic -get0(Lcom/android/settings/widget/LabeledSeekBar;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/widget/LabeledSeekBar;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/settings/widget/LabeledSeekBar;->sendClickEventForAccessibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/LabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/LabeledSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/settings/widget/LabeledSeekBar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/LabeledSeekBar$1;-><init>(Lcom/android/settings/widget/LabeledSeekBar;)V

    iput-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v0, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/widget/LabeledSeekBar$LabeledSeekBarExploreByTouchHelper;-><init>(Lcom/android/settings/widget/LabeledSeekBar;Lcom/android/settings/widget/LabeledSeekBar;)V

    iput-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mProxySeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method private sendClickEventForAccessibility(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateRoot()V

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public setLabels([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mLabels:[Ljava/lang/String;

    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar;->mAccessHelper:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateRoot()V

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
