.class final Lcom/android/server/power/ShutdownThread$4;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 8

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get4()Z

    move-result v1

    if-eq v1, v0, :cond_2e

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get25()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "ShutdownThread"

    const-string/jumbo v2, "cover state : %b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/ShutdownThread$Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get25()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :cond_2e
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->-set1(Z)Z

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get21()Z

    move-result v1

    if-nez v1, :cond_3d

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-get20()Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_3d
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap11()V

    :cond_40
    return-void
.end method
