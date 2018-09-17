.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_28

    :goto_5
    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v3, p2, p3}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->onInfo(II)Z

    move-result v1

    if-nez v0, :cond_25

    :goto_d
    return v1

    :pswitch_e
    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iput-boolean v2, v3, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    const/4 v0, 0x1

    goto :goto_5

    :pswitch_19
    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mBufferingStart:Z

    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$8;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->notifyBufferingStartEnd()V

    const/4 v0, 0x1

    goto :goto_5

    :cond_25
    move v1, v2

    goto :goto_d

    nop

    :pswitch_data_28
    .packed-switch 0x2bd
        :pswitch_e
        :pswitch_19
    .end packed-switch
.end method
