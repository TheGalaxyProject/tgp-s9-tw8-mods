.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "plugged"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_21

    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-set1(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get0()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "AlarmManagerEXT"

    const-string/jumbo v2, "on AC power"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_20
    return-void

    :cond_21
    const/4 v1, 0x2

    if-ne v0, v1, :cond_39

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get0()Z

    move-result v1

    if-eqz v1, :cond_33

    const-string/jumbo v1, "AlarmManagerEXT"

    const-string/jumbo v2, "on USB power"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v1, v3}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-set1(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_20

    :cond_39
    if-nez v0, :cond_50

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get0()Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "AlarmManagerEXT"

    const-string/jumbo v2, "on Battery power"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v1, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-set1(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_20

    :cond_50
    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get0()Z

    move-result v1

    if-eqz v1, :cond_70

    const-string/jumbo v1, "AlarmManagerEXT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no Extra info, plugged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    iget-object v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$1;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v1, v4}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-set1(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Z)Z

    goto :goto_20
.end method
