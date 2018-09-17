.class Lcom/android/systemui/pip/tv/PipNotification$2;
.super Landroid/media/session/MediaController$Callback;
.source "PipNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipNotification;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification$2;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$2;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->-wrap0(Lcom/android/systemui/pip/tv/PipNotification;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$2;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->-get3(Lcom/android/systemui/pip/tv/PipNotification;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$2;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->-wrap2(Lcom/android/systemui/pip/tv/PipNotification;)V

    :cond_15
    return-void
.end method
