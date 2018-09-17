.class Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
.super Landroid/os/AsyncTask;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCMAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private opCode:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    return-void
.end method

.method private getUCMStatus()V
    .registers 6

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_13

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap9(Lcom/android/keyguard/KeyguardUCMPinView;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-get6(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2d

    :cond_13
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_20
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->-get9()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_25
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-set2(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;)Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_62

    monitor-exit v3

    return-void

    :cond_2d
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-get1(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v2

    if-nez v2, :cond_13

    const-wide/16 v2, 0x3e8

    :try_start_37
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_3a} :catch_5d

    :goto_3a
    const-string/jumbo v2, "KeyguardUCMPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GetStatus thread result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-get6(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_5d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3a

    :catchall_62
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    :pswitch_5
    const/4 v0, 0x0

    return-object v0

    :pswitch_7
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->getUCMStatus()V

    goto :goto_5

    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->-get5(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->-get6(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-get1(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap11(Lcom/android/keyguard/KeyguardUCMPinView;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->opCode:I

    if-ne v1, v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap10(Lcom/android/keyguard/KeyguardUCMPinView;Z)V

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap10(Lcom/android/keyguard/KeyguardUCMPinView;Z)V

    goto :goto_a
.end method
