.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FastForwardAction"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 14

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget v5, Landroid/support/v17/leanback/R$id;->lb_control_fast_forward:I

    invoke-direct {p0, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MultiAction;-><init>(I)V

    if-ge p2, v10, :cond_12

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "numSpeeds must be > 0"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_12
    add-int/lit8 v5, p2, 0x1

    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    sget v5, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_fast_forward:I

    invoke-static {p1, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v0, v9

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setDrawables([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->getActionCount()I

    move-result v5

    new-array v2, v5, [Ljava/lang/String;

    sget v5, Landroid/support/v17/leanback/R$string;->lb_playback_controls_fast_forward:I

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v9

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->getActionCount()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    aget-object v5, v2, v9

    aput-object v5, v3, v9

    const/4 v1, 0x1

    :goto_3a
    if-gt v1, p2, :cond_69

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v17/leanback/R$string;->lb_control_display_fast_forward_multiplier:I

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v17/leanback/R$string;->lb_playback_controls_fast_forward_multiplier:I

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_69
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setLabels([Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->setSecondaryLabels([Ljava/lang/String;)V

    const/16 v5, 0x5a

    invoke-virtual {p0, v5}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$FastForwardAction;->addKeyCode(I)V

    return-void
.end method
