.class Lcom/android/settings/fingerprint/RegisterFingerprint$21;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 7

    const/4 v4, 0x0

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "onSurfaceTextureAvailable : onPrepared"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get8(Lcom/android/settings/fingerprint/RegisterFingerprint;)Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    move-result-object v2

    sget-object v3, Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;->ENROLL:Lcom/android/settings/fingerprint/RegisterFingerprint$EnrollState;

    if-ne v2, v3, :cond_3d

    const-string/jumbo v2, "FpstRegisterTouchFingerprint"

    const-string/jumbo v3, "onPrepared : MediaPlayer.stop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get34(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get34(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get34(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set16(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_3c
    return-void

    :cond_3d
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get20(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get21(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5a

    :cond_52
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get25(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_5a
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$21$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$21$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$21;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get20(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$21;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get21(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v2

    if-eqz v2, :cond_69

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$21$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$21$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$21;)V

    invoke-static {}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get2()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_69
.end method
