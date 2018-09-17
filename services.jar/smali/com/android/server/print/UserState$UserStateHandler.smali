.class final Lcom/android/server/print/UserState$UserStateHandler;
.super Landroid/os/Handler;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserStateHandler"
.end annotation


# static fields
.field public static final MSG_CHECK_CONFIG_CHANGED:I = 0x4

.field public static final MSG_DISPATCH_PRINT_JOB_STATE_CHANGED:I = 0x1

.field public static final MSG_DISPATCH_PRINT_SERVICES_CHANGED:I = 0x2

.field public static final MSG_DISPATCH_PRINT_SERVICES_RECOMMENDATIONS_UPDATED:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_34

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobId;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v2, v1, v0}, Lcom/android/server/print/UserState;->-wrap1(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;I)V

    goto :goto_5

    :pswitch_12
    iget-object v2, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v2}, Lcom/android/server/print/UserState;->-wrap3(Lcom/android/server/print/UserState;)V

    goto :goto_5

    :pswitch_18
    iget-object v3, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/android/server/print/UserState;->-wrap2(Lcom/android/server/print/UserState;Ljava/util/List;)V

    goto :goto_5

    :pswitch_22
    iget-object v2, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v2}, Lcom/android/server/print/UserState;->-get2(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_29
    iget-object v2, p0, Lcom/android/server/print/UserState$UserStateHandler;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v2}, Lcom/android/server/print/UserState;->-wrap4(Lcom/android/server/print/UserState;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_30

    monitor-exit v3

    goto :goto_5

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_6
        :pswitch_12
        :pswitch_18
        :pswitch_22
    .end packed-switch
.end method
