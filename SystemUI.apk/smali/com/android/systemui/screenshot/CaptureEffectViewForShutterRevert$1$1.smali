.class Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1$1;
.super Ljava/lang/Object;
.source "CaptureEffectViewForShutterRevert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;->onAnimationStart(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1$1;->this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1$1;->this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1$1;->this$1:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;->this$0:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;

    iget-object v0, v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mCaptureAnimationListener:Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$OnCaptureAnimationListenerImplementer;->onFinish()V

    :cond_11
    return-void
.end method
