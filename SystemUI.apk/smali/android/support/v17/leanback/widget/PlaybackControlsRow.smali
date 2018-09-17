.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.super Landroid/support/v17/leanback/widget/Row;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ClosedCaptioningAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$HighQualityAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$MoreActions;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$PictureInPictureAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$RepeatAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$RewindAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ShuffleAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipNextAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$SkipPreviousAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsDownAction;,
        Landroid/support/v17/leanback/widget/PlaybackControlsRow$ThumbsUpAction;
    }
.end annotation


# instance fields
.field private mBufferedProgressMs:J

.field private mCurrentTimeMs:J

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mItem:Ljava/lang/Object;

.field private mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

.field private mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mTotalTimeMs:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Row;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Row;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mItem:Ljava/lang/Object;

    return-void
.end method

.method static getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 8

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroid/support/v17/leanback/R$attr;->playbackControlsActionIcons:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x0

    return-object v3

    :cond_14
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->data:I

    sget-object v5, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method


# virtual methods
.method public getActionForKeyCode(Landroid/support/v17/leanback/widget/ObjectAdapter;I)Landroid/support/v17/leanback/widget/Action;
    .registers 7

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq p1, v2, :cond_11

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq p1, v2, :cond_11

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid adapter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    invoke-virtual {p1, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/Action;

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/Action;->respondsToKeyCode(I)Z

    move-result v2

    if-eqz v2, :cond_25

    return-object v0

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_28
    const/4 v2, 0x0

    return-object v2
.end method

.method public getBufferedPosition()J
    .registers 3

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    return-wide v0
.end method

.method public getBufferedProgress()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getBufferedPosition()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .registers 3

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    return-wide v0
.end method

.method public getCurrentTime()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getCurrentTimeLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getCurrentTimeLong()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    return-wide v0
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    return-wide v0
.end method

.method public final getImageDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getItem()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public final getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getTotalTime()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getTotalTimeLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getTotalTimeLong()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    return-wide v0
.end method

.method public setBufferedPosition(J)V
    .registers 8

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_13

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    iget-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mBufferedProgressMs:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;->onBufferedPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V

    :cond_13
    return-void
.end method

.method public setBufferedProgress(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setBufferedPosition(J)V

    return-void
.end method

.method public setCurrentPosition(J)V
    .registers 8

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_13

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    iget-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mCurrentTimeMs:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;->onCurrentPositionChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V

    :cond_13
    return-void
.end method

.method public setCurrentTime(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentTimeLong(J)V

    return-void
.end method

.method public setCurrentTimeLong(J)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setCurrentPosition(J)V

    return-void
.end method

.method public setDuration(J)V
    .registers 8

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_13

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    iget-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mTotalTimeMs:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;->onDurationChanged(Landroid/support/v17/leanback/widget/PlaybackControlsRow;J)V

    :cond_13
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnPlaybackProgressChangedListener(Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    return-void
.end method

.method public final setPrimaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mPrimaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-void
.end method

.method public final setSecondaryActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->mSecondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-void
.end method

.method public setTotalTime(I)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->setDuration(J)V

    return-void
.end method
