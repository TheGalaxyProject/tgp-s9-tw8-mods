.class Lcom/android/server/desktopmode/CoverSupportStateController$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/desktopmode/CoverSupportStateController;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 7

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get2(Lcom/android/server/desktopmode/CoverSupportStateController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_keyboard"

    invoke-static {v1, v2, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_50

    const/4 v0, 0x1

    :goto_16
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get7(Lcom/android/server/desktopmode/CoverSupportStateController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_1d
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get6(Lcom/android/server/desktopmode/CoverSupportStateController;)Z

    move-result v1

    if-eq v1, v0, :cond_4e

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_44

    invoke-static {}, Lcom/android/server/desktopmode/CoverSupportStateController;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mKeyboardCoverEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/CoverSupportStateController;->-set3(Lcom/android/server/desktopmode/CoverSupportStateController;Z)Z

    iget-object v1, p0, Lcom/android/server/desktopmode/CoverSupportStateController$2;->this$0:Lcom/android/server/desktopmode/CoverSupportStateController;

    invoke-static {v1}, Lcom/android/server/desktopmode/CoverSupportStateController;->-wrap1(Lcom/android/server/desktopmode/CoverSupportStateController;)Z
    :try_end_4e
    .catchall {:try_start_1d .. :try_end_4e} :catchall_52

    :cond_4e
    monitor-exit v2

    return-void

    :cond_50
    const/4 v0, 0x0

    goto :goto_16

    :catchall_52
    move-exception v1

    monitor-exit v2

    throw v1
.end method
