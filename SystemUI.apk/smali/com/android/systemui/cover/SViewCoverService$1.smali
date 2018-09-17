.class Lcom/android/systemui/cover/SViewCoverService$1;
.super Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;
.source "SViewCoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/cover/SViewCoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cover/SViewCoverService;


# direct methods
.method constructor <init>(Lcom/android/systemui/cover/SViewCoverService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-direct {p0}, Lcom/samsung/android/cover/ISViewCoverBaseService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isCoverViewShowing()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-get2(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-wrap0(Lcom/android/systemui/cover/SViewCoverService;)Z

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-get2(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-get2(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCoverViewShowing()Z

    move-result v0

    return v0

    :cond_20
    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "isCoverViewShowing() - cannot find mStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onCoverAppCovered(Z)I
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-get2(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-wrap0(Lcom/android/systemui/cover/SViewCoverService;)Z

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-get2(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-get2(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onCoverAppCovered(Z)I

    move-result v0

    return v0

    :cond_20
    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v1, "onCoverAppCovered() - cannot find mStatusBar"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onSViewCoverHide()V
    .registers 1

    return-void
.end method

.method public onSViewCoverShow()V
    .registers 1

    return-void
.end method

.method public onSystemReady()V
    .registers 1

    return-void
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-get1(Lcom/android/systemui/cover/SViewCoverService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-get2(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-wrap0(Lcom/android/systemui/cover/SViewCoverService;)Z

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-get2(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0}, Lcom/android/systemui/cover/SViewCoverService;->-get2(Lcom/android/systemui/cover/SViewCoverService;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/systemui/cover/SViewCoverService;->-set1(Lcom/android/systemui/cover/SViewCoverService;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    :goto_2b
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0, p1}, Lcom/android/systemui/cover/SViewCoverService;->-set0(Lcom/android/systemui/cover/SViewCoverService;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    :try_end_30
    .catchall {:try_start_7 .. :try_end_30} :catchall_41

    monitor-exit v1

    return-void

    :cond_32
    :try_start_32
    const-string/jumbo v0, "CoverUI"

    const-string/jumbo v2, "updateCoverState() - cannot find mStatusBar"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverService$1;->this$0:Lcom/android/systemui/cover/SViewCoverService;

    invoke-static {v0, p1}, Lcom/android/systemui/cover/SViewCoverService;->-set1(Lcom/android/systemui/cover/SViewCoverService;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_41

    goto :goto_2b

    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0
.end method
