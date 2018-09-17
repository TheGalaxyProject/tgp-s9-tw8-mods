.class Lcom/android/server/execute/SemExecuteManagerService$1;
.super Ljava/lang/Object;
.source "SemExecuteManagerService.java"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/execute/SemExecuteManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/execute/SemExecuteManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/execute/SemExecuteManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/execute/SemExecuteManagerService$1;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutChanged(Ljava/lang/String;I)V
    .registers 13

    invoke-static {}, Lcom/android/server/execute/SemExecuteManagerService;->-get1()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_5
    const-string/jumbo v6, "SemExecuteManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onShortcutChanged: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/execute/SemExecuteManagerService$1;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v6}, Lcom/android/server/execute/SemExecuteManagerService;->-get2(Lcom/android/server/execute/SemExecuteManagerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_9d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v6, "SemExecuteManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onShortcutChanged: size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_54
    if-ge v5, v0, :cond_9d

    iget-object v6, p0, Lcom/android/server/execute/SemExecuteManagerService$1;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v6, p1, p2}, Lcom/android/server/execute/SemExecuteManagerService;->-wrap0(Lcom/android/server/execute/SemExecuteManagerService;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    const-string/jumbo v6, "SemExecuteManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onShortcutChanged: send callback "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_5 .. :try_end_88} :catchall_9a

    :try_start_88
    iget-object v6, p0, Lcom/android/server/execute/SemExecuteManagerService$1;->this$0:Lcom/android/server/execute/SemExecuteManagerService;

    invoke-static {v6}, Lcom/android/server/execute/SemExecuteManagerService;->-get0(Lcom/android/server/execute/SemExecuteManagerService;)Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_92
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_88 .. :try_end_92} :catch_95
    .catchall {:try_start_88 .. :try_end_92} :catchall_9a

    :goto_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_54

    :catch_95
    move-exception v3

    :try_start_96
    invoke-virtual {v3}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_92

    :catchall_9a
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_9d
    monitor-exit v7

    return-void
.end method
