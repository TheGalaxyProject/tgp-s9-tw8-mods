.class Lcom/android/systemui/pip/tv/PipControlsView$6;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/tv/PipControlsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_15

    :cond_14
    return-void

    :cond_15
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get3(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController$TransportControls;->play()V

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get3(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result v3

    if-nez v3, :cond_4b

    iget-object v3, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {v3}, Lcom/android/systemui/pip/tv/PipControlsView;->-get2(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_4b
.end method
