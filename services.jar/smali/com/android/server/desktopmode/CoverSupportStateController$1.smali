.class Lcom/android/server/desktopmode/CoverSupportStateController$1;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "CoverSupportStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/CoverSupportStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/CoverSupportStateController;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/CoverSupportStateController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 5

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCoverState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get7(Lcom/android/server/desktopmode/CoverSupportStateController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_26
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get3(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->attached:Z

    iget-object v2, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v2}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get4(Lcom/android/server/desktopmode/CoverSupportStateController;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/samsung/android/cover/CoverState;->attached:Z
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_48

    if-ne v0, v2, :cond_3c

    monitor-exit v1

    return-void

    :cond_3c
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-set1(Lcom/android/server/desktopmode/CoverSupportStateController;Lcom/samsung/android/cover/CoverState;)Lcom/samsung/android/cover/CoverState;

    iget-object v0, p0, Lcom/android/server/desktopmode/CoverSupportStateController$1;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-wrap1(Lcom/android/server/desktopmode/CoverSupportStateController;)Z
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_48

    monitor-exit v1

    return-void

    :catchall_48
    move-exception v0

    monitor-exit v1

    throw v0
.end method
