.class Lcom/android/server/trust/TrustManagerService$2;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x1

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_a6

    :cond_8
    :goto_8
    :pswitch_8
    return-void

    :pswitch_9
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/trust/ITrustListener;

    invoke-static {v5, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap4(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    goto :goto_8

    :pswitch_13
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/trust/ITrustListener;

    invoke-static {v5, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap10(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    goto :goto_8

    :pswitch_1d
    iget-object v6, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eqz v7, :cond_29

    :goto_23
    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v4, v5}, Lcom/android/server/trust/TrustManagerService;->-wrap5(Lcom/android/server/trust/TrustManagerService;ZI)V

    goto :goto_8

    :cond_29
    move v4, v5

    goto :goto_23

    :pswitch_2b
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4, v5, v6}, Lcom/android/server/trust/TrustManagerService;->-wrap6(Lcom/android/server/trust/TrustManagerService;II)V

    goto :goto_8

    :pswitch_35
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v7}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4, v7}, Lcom/android/server/trust/TrustManagerService;->-wrap8(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_8

    :pswitch_40
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v5}, Lcom/android/server/trust/TrustManagerService;->-get2(Lcom/android/server/trust/TrustManagerService;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/trust/TrustManagerService;->-wrap8(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_8

    :pswitch_4c
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    goto :goto_8

    :pswitch_54
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, v5}, Lcom/android/server/trust/TrustManagerService;->-set0(Lcom/android/server/trust/TrustManagerService;I)I

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4, v7}, Lcom/android/server/trust/TrustManagerService;->-wrap8(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_8

    :pswitch_61
    iget-object v5, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5, v6, v4}, Lcom/android/server/trust/TrustManagerService;->-wrap11(Lcom/android/server/trust/TrustManagerService;IZ)V

    goto :goto_8

    :pswitch_69
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    monitor-enter v5

    :try_start_70
    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get8(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_a2

    move-result-object v2

    monitor-exit v5

    const/4 v0, 0x0

    :goto_7c
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v4

    if-eq v3, v4, :cond_9f

    iget-object v4, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v4}, Lcom/android/server/trust/TrustManagerService;->-get5(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    :cond_9f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    :catchall_a2
    move-exception v4

    monitor-exit v5

    throw v4

    nop

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_9
        :pswitch_13
        :pswitch_1d
        :pswitch_35
        :pswitch_8
        :pswitch_40
        :pswitch_4c
        :pswitch_4c
        :pswitch_54
        :pswitch_69
        :pswitch_4c
        :pswitch_61
        :pswitch_2b
    .end packed-switch
.end method
