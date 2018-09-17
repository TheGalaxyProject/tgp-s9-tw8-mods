.class Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;
.super Ljava/lang/Object;
.source "FlashlightControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->tryInitCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "camera"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/CameraManager;

    const/4 v0, 0x0

    :try_start_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-wrap1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "FlashlightController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cameraId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_35} :catch_58
    .catchall {:try_start_15 .. :try_end_35} :catchall_68

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_57

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/hardware/camera2/CameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get8(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/hardware/camera2/CameraManager$TorchCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-get6(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_57
    return-void

    :catch_58
    move-exception v1

    :try_start_59
    const-string/jumbo v2, "FlashlightController"

    const-string/jumbo v3, "Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_68

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :catchall_68
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->-set0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method
