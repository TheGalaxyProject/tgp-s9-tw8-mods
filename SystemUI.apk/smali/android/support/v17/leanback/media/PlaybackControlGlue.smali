.class public abstract Landroid/support/v17/leanback/media/PlaybackControlGlue;
.super Landroid/support/v17/leanback/media/PlaybackGlue;
.source "PlaybackControlGlue.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/OnActionClickedListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/PlaybackControlGlue$UpdatePlaybackStateHandler;
    }
.end annotation


# static fields
.field static final sHandler:Landroid/os/Handler;


# instance fields
.field private mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

.field private mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

.field private mFadeWhenPlaying:Z

.field private mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

.field private final mFastForwardSpeeds:[I

.field final mGlueWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v17/leanback/media/PlaybackControlGlue;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field private mPlaybackSpeed:I

.field private mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

.field private final mRewindSpeeds:[I

.field private mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

.field private mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v17/leanback/media/PlaybackControlGlue$UpdatePlaybackStateHandler;

    invoke-direct {v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue$UpdatePlaybackStateHandler;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method private getMaxForwardSpeedId()I
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private getMaxRewindSpeedId()I
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private static notifyItemChanged(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyArrayItemRangeChanged(II)V

    :cond_a
    return-void
.end method

.method private updateControlsRow()V
    .registers 4

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updateRowMetadata()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updateControlButtons()V

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackState()V

    return-void
.end method

.method private updatePlaybackState(I)V
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v7, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    iget-object v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v7, :cond_30

    const/4 v2, 0x0

    const/16 v7, 0xa

    if-lt p1, v7, :cond_1e

    add-int/lit8 v7, p1, -0xa

    add-int/lit8 v2, v7, 0x1

    :cond_1e
    iget-object v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->getIndex()I

    move-result v7

    if-eq v7, v2, :cond_30

    iget-object v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {v7, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setIndex(I)V

    iget-object v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-static {v3, v7}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_30
    iget-object v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v7, :cond_50

    const/4 v2, 0x0

    const/16 v7, -0xa

    if-gt p1, v7, :cond_3e

    neg-int v7, p1

    add-int/lit8 v7, v7, -0xa

    add-int/lit8 v2, v7, 0x1

    :cond_3e
    iget-object v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v7}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->getIndex()I

    move-result v7

    if-eq v7, v2, :cond_50

    iget-object v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v7, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;->setIndex(I)V

    iget-object v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-static {v3, v7}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_50
    if-nez p1, :cond_9d

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updateProgress()V

    invoke-virtual {p0, v6}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    :goto_58
    iget-boolean v7, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFadeWhenPlaying:Z

    if-eqz v7, :cond_6b

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v7

    if-eqz v7, :cond_6b

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v7

    if-ne p1, v5, :cond_a1

    :goto_68
    invoke-virtual {v7, v5}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setControlsOverlayAutoHideEnabled(Z)V

    :cond_6b
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v5, :cond_84

    if-nez p1, :cond_a3

    const/4 v2, 0x0

    :goto_72
    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->getIndex()I

    move-result v5

    if-eq v5, v2, :cond_84

    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v5, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;->setIndex(I)V

    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-static {v3, v5}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->notifyItemChanged(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;Ljava/lang/Object;)V

    :cond_84
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getPlayerCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a5

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_8f
    if-ge v1, v4, :cond_a5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;

    invoke-virtual {v5, p0}, Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;->onPlayStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    :cond_9d
    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    goto :goto_58

    :cond_a1
    move v5, v6

    goto :goto_68

    :cond_a3
    const/4 v2, 0x1

    goto :goto_72

    :cond_a5
    return-void
.end method

.method private updatePlaybackStatusAfterUserAction()V
    .registers 5

    const/16 v3, 0x64

    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackState(I)V

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateRowMetadata()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setTotalTime(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentTime(I)V

    :goto_1c
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getHost()Landroid/support/v17/leanback/media/PlaybackGlueHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->notifyPlaybackRowChanged()V

    :cond_29
    return-void

    :cond_2a
    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getMediaArt()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getMediaDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setTotalTime(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentTime(I)V

    goto :goto_1c
.end method


# virtual methods
.method protected createPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/PresenterSelector;)Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;
    .registers 3

    new-instance v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onCreatePrimaryActions(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;)V

    return-object v0
.end method

.method dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z
    .registers 11

    const/16 v7, 0x55

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-ne p1, v3, :cond_57

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v7, :cond_2d

    :cond_11
    const/4 v1, 0x1

    :goto_12
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v7, :cond_39

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    if-eqz v0, :cond_49

    if-eqz v1, :cond_45

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-ne v3, v5, :cond_49

    :cond_23
    iput v6, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->pause()V

    :cond_28
    :goto_28
    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    const/4 v2, 0x1

    :cond_2c
    :goto_2c
    return v2

    :cond_2d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_37

    const/4 v1, 0x1

    goto :goto_12

    :cond_37
    const/4 v1, 0x0

    goto :goto_12

    :cond_39
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x7f

    if-ne v3, v4, :cond_43

    const/4 v0, 0x1

    goto :goto_1b

    :cond_43
    const/4 v0, 0x0

    goto :goto_1b

    :cond_45
    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-nez v3, :cond_23

    :cond_49
    if-eqz v1, :cond_28

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-eq v3, v5, :cond_28

    iput v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->play(I)V

    goto :goto_28

    :cond_57
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-ne p1, v3, :cond_60

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->next()V

    const/4 v2, 0x1

    goto :goto_2c

    :cond_60
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-ne p1, v3, :cond_69

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->previous()V

    const/4 v2, 0x1

    goto :goto_2c

    :cond_69
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-ne p1, v3, :cond_8f

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getMaxForwardSpeedId()I

    move-result v4

    if-ge v3, v4, :cond_86

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    packed-switch v3, :pswitch_data_b8

    const/16 v3, 0xa

    iput v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    :goto_7e
    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->play(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    :cond_86
    const/4 v2, 0x1

    goto :goto_2c

    :pswitch_88
    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    goto :goto_7e

    :cond_8f
    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-ne p1, v3, :cond_2c

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getMaxRewindSpeedId()I

    move-result v4

    neg-int v4, v4

    if-le v3, v4, :cond_ad

    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    packed-switch v3, :pswitch_data_c4

    const/16 v3, -0xa

    iput v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    :goto_a5
    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->play(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    :cond_ad
    const/4 v2, 0x1

    goto/16 :goto_2c

    :pswitch_b0
    iget v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    goto :goto_a5

    nop

    :pswitch_data_b8
    .packed-switch 0xa
        :pswitch_88
        :pswitch_88
        :pswitch_88
        :pswitch_88
    .end packed-switch

    :pswitch_data_c4
    .packed-switch -0xd
        :pswitch_b0
        :pswitch_b0
        :pswitch_b0
        :pswitch_b0
    .end packed-switch
.end method

.method public enableProgressUpdating(Z)V
    .registers 2

    return-void
.end method

.method public getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    return-object v0
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getCurrentSpeedId()I
.end method

.method public getFastForwardSpeeds()[I
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    return-object v0
.end method

.method public abstract getMediaArt()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMediaDuration()I
.end method

.method public abstract getMediaSubtitle()Ljava/lang/CharSequence;
.end method

.method public abstract getMediaTitle()Ljava/lang/CharSequence;
.end method

.method public getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    return-object v0
.end method

.method public getRewindSpeeds()[I
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    return-object v0
.end method

.method public abstract getSupportedActions()J
.end method

.method public getUpdatePeriod()I
    .registers 2

    const/16 v0, 0x1f4

    return v0
.end method

.method public abstract hasValidMedia()Z
.end method

.method public onActionClicked(Landroid/support/v17/leanback/widget/Action;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    return-void
.end method

.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/media/PlaybackGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p1, p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setOnActionClickedListener(Landroid/support/v17/leanback/widget/OnActionClickedListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    if-nez v0, :cond_18

    :cond_15
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onCreateControlsRowAndPresenter()V

    :cond_18
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost;->setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V

    return-void
.end method

.method protected onCreateControlsRowAndPresenter()V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v2

    if-nez v2, :cond_e

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V

    :cond_e
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getPlaybackRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    move-result-object v2

    if-nez v2, :cond_21

    new-instance v1, Landroid/support/v17/leanback/media/PlaybackControlGlue$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue$1;-><init>(Landroid/support/v17/leanback/media/PlaybackControlGlue;)V

    new-instance v2, Landroid/support/v17/leanback/media/PlaybackControlGlue$2;

    invoke-direct {v2, p0, v1}, Landroid/support/v17/leanback/media/PlaybackControlGlue$2;-><init>(Landroid/support/v17/leanback/media/PlaybackControlGlue;Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V

    :cond_21
    return-void
.end method

.method protected onCreatePrimaryActions(Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;)V
    .registers 2

    return-void
.end method

.method protected onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V
    .registers 2

    return-void
.end method

.method protected onDetachedFromHost()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    invoke-super {p0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onDetachedFromHost()V

    return-void
.end method

.method protected onHostStart()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    return-void
.end method

.method protected onHostStop()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->enableProgressUpdating(Z)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch p2, :sswitch_data_70

    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v5, v2, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;

    move-result-object v1

    if-eqz v1, :cond_6f

    const/16 v5, 0x40

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v5, :cond_25

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v1, v5, :cond_57

    :cond_25
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2e

    invoke-virtual {p0, v1, p3}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->dispatchAction(Landroid/support/v17/leanback/widget/Action;Landroid/view/KeyEvent;)Z

    :cond_2e
    return v3

    :sswitch_2f
    iget v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_50

    iget v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    const/16 v6, -0xa

    if-gt v5, v6, :cond_52

    const/4 v0, 0x1

    :goto_3c
    if-eqz v0, :cond_56

    iput v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    iget v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->play(I)V

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackStatusAfterUserAction()V

    const/4 v5, 0x4

    if-eq p2, v5, :cond_4f

    const/16 v5, 0x6f

    if-ne p2, v5, :cond_54

    :cond_4f
    :goto_4f
    return v3

    :cond_50
    const/4 v0, 0x1

    goto :goto_3c

    :cond_52
    const/4 v0, 0x0

    goto :goto_3c

    :cond_54
    move v3, v4

    goto :goto_4f

    :cond_56
    return v4

    :cond_57
    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v5, :cond_25

    const/16 v5, 0x10

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v5, :cond_25

    const/16 v5, 0x100

    invoke-virtual {v2, v5}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->lookup(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v1, v5, :cond_25

    :cond_6f
    return v4

    :sswitch_data_70
    .sparse-switch
        0x4 -> :sswitch_2f
        0x13 -> :sswitch_2f
        0x14 -> :sswitch_2f
        0x15 -> :sswitch_2f
        0x16 -> :sswitch_2f
        0x6f -> :sswitch_2f
    .end sparse-switch
.end method

.method protected onMetadataChanged()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updateRowMetadata()V

    return-void
.end method

.method protected onStateChanged()V
    .registers 5

    const/16 v3, 0x64

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getCurrentSpeedId()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    if-eq v0, v1, :cond_32

    sget-object v0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    sget-object v1, Landroid/support/v17/leanback/media/PlaybackControlGlue;->sHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mGlueWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_31
    return-void

    :cond_32
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackState()V

    goto :goto_31

    :cond_36
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackState()V

    goto :goto_31
.end method

.method public final play()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->play(I)V

    return-void
.end method

.method public play(I)V
    .registers 2

    return-void
.end method

.method public setControlsRow(Landroid/support/v17/leanback/widget/PlaybackControlsRow;)V
    .registers 5

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    new-instance v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->createPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/PresenterSelector;)Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    new-instance v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->onCreateSecondaryActions(Landroid/support/v17/leanback/widget/ArrayObjectAdapter;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setSecondaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updateControlsRow()V

    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRowPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    return-void
.end method

.method updateControlButtons()V
    .registers 13

    const/16 v11, 0x40

    const/16 v10, 0x20

    const/16 v7, 0x10

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getControlsRow()Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getSupportedActions()J

    move-result-wide v0

    const-wide/16 v4, 0x10

    and-long/2addr v4, v0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_a9

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-nez v3, :cond_a9

    new-instance v3, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    invoke-virtual {v2, v7, v3}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    :cond_32
    :goto_32
    const-wide/16 v4, 0x20

    and-long/2addr v4, v0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-nez v3, :cond_bb

    new-instance v3, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindSpeeds:[I

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    invoke-virtual {v2, v10, v3}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    :cond_50
    :goto_50
    const-wide/16 v4, 0x40

    and-long/2addr v4, v0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_cc

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-nez v3, :cond_cc

    new-instance v3, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    invoke-virtual {v2, v11, v3}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    :cond_6b
    :goto_6b
    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_dd

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-nez v3, :cond_dd

    new-instance v3, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardSpeeds:[I

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    const/16 v4, 0x80

    invoke-virtual {v2, v4, v3}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    :cond_8b
    :goto_8b
    const-wide/16 v4, 0x100

    and-long/2addr v4, v0

    cmp-long v3, v4, v8

    if-eqz v3, :cond_f0

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-nez v3, :cond_f0

    new-instance v3, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    const/16 v4, 0x100

    invoke-virtual {v2, v4, v3}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    :cond_a8
    :goto_a8
    return-void

    :cond_a9
    const-wide/16 v4, 0x10

    and-long/2addr v4, v0

    cmp-long v3, v4, v8

    if-nez v3, :cond_32

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    if-eqz v3, :cond_32

    invoke-virtual {v2, v7}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    iput-object v6, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipPreviousAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;

    goto/16 :goto_32

    :cond_bb
    const-wide/16 v4, 0x20

    and-long/2addr v4, v0

    cmp-long v3, v4, v8

    if-nez v3, :cond_50

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    if-eqz v3, :cond_50

    invoke-virtual {v2, v10}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    iput-object v6, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mRewindAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;

    goto :goto_50

    :cond_cc
    const-wide/16 v4, 0x40

    and-long/2addr v4, v0

    cmp-long v3, v4, v8

    if-nez v3, :cond_6b

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    if-eqz v3, :cond_6b

    invoke-virtual {v2, v11}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    iput-object v6, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

    goto :goto_6b

    :cond_dd
    const-wide/16 v4, 0x80

    and-long/2addr v4, v0

    cmp-long v3, v4, v8

    if-nez v3, :cond_8b

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    if-eqz v3, :cond_8b

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    iput-object v6, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mFastForwardAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;

    goto :goto_8b

    :cond_f0
    const-wide/16 v4, 0x100

    and-long/2addr v4, v0

    cmp-long v3, v4, v8

    if-nez v3, :cond_a8

    iget-object v3, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    if-eqz v3, :cond_a8

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->clear(I)V

    iput-object v6, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mSkipNextAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;

    goto :goto_a8
.end method

.method updatePlaybackState()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->hasValidMedia()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getCurrentSpeedId()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    iget v0, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mPlaybackSpeed:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->updatePlaybackState(I)V

    :cond_11
    return-void
.end method

.method public updateProgress()V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/PlaybackControlGlue;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v17/leanback/media/PlaybackControlGlue;->mControlsRow:Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentTime(I)V

    :cond_d
    return-void
.end method
