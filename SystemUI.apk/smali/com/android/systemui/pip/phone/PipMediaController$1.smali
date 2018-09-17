.class Lcom/android/systemui/pip/phone/PipMediaController$1;
.super Landroid/content/BroadcastReceiver;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMediaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMediaController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui.pip.phone.PLAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMediaController;->-get0(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->play()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const-string/jumbo v1, "com.android.systemui.pip.phone.PAUSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMediaController;->-get0(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_1a

    :cond_32
    const-string/jumbo v1, "com.android.systemui.pip.phone.NEXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMediaController;->-get0(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    goto :goto_1a

    :cond_49
    const-string/jumbo v1, "com.android.systemui.pip.phone.PREV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {v1}, Lcom/android/systemui/pip/phone/PipMediaController;->-get0(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    goto :goto_1a
.end method
