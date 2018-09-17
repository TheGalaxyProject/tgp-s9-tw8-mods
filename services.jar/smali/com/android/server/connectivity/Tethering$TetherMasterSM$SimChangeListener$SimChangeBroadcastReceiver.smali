.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final mGenerationNumber:I

.field private mSimNotLoadedSeen:Z

.field final synthetic this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    iput p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->mGenerationNumber:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    invoke-static {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;->-get0(Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "simchange mGenerationNumber="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->mGenerationNumber:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", current generationNumber="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->mGenerationNumber:I

    if-eq v9, v0, :cond_37

    return-void

    :cond_37
    const-string/jumbo v9, "ss"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get0()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "got Sim changed to state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mSimNotLoadedSeen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    invoke-static {v9, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;->-wrap0(Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_76

    iget-boolean v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-nez v9, :cond_75

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    :cond_75
    return-void

    :cond_76
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    invoke-static {v9, v4}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;->-wrap0(Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10b

    iget-boolean v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    if-eqz v9, :cond_10b

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->mSimNotLoadedSeen:Z

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;->hasMobileHotspotProvisionApp()Z

    move-result v9

    if-nez v9, :cond_8e

    return-void

    :cond_8e
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->-get22(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    const/4 v1, 0x0

    :goto_9f
    :try_start_9f
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->-get26(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v1, v9, :cond_f0

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->-get26(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v9, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v11, 0x2

    if-eq v9, v11, :cond_c7

    :cond_c4
    :goto_c4
    add-int/lit8 v1, v1, 0x1

    goto :goto_9f

    :cond_c7
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v9}, Lcom/android/server/connectivity/Tethering;->-get26(Lcom/android/server/connectivity/Tethering;)Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v9, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v9, v2}, Lcom/android/server/connectivity/Tethering;->-wrap4(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_c4

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ec
    .catchall {:try_start_9f .. :try_end_ec} :catchall_ed

    goto :goto_c4

    :catchall_ed
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_f0
    monitor-exit v10

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener$SimChangeBroadcastReceiver;->this$2:Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;

    invoke-static {v9, v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;->-wrap1(Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeListener;I)V

    goto :goto_f5

    :cond_10b
    return-void
.end method
