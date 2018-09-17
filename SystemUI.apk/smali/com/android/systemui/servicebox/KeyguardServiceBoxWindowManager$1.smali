.class Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardServiceBoxWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->removeAllViews()V

    :cond_9
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .registers 5

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardBouncerChanged() bouncer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_22

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->removeAllViews()V

    :cond_22
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .registers 5

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardVisibilityChanged() showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->removeAllViews()V

    :cond_22
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->removeAllViews()V

    :cond_8
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->removeAllViews()V

    return-void
.end method

.method public onUpdateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 5

    invoke-static {}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateCoverState() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager$1;->this$0:Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/servicebox/KeyguardServiceBoxWindowManager;->removeAllViews()V

    :cond_24
    return-void
.end method
