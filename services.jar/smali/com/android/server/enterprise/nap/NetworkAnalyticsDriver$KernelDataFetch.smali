.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;
.super Landroid/os/AsyncTask;
.source "NetworkAnalyticsDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KernelDataFetch"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_2
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->-get0()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v4, "_deliverDataToRecipients: Starting Async task."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->-get3(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    move-result-object v3

    if-eqz v3, :cond_51

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->-get0()Z

    move-result v3

    if-eqz v3, :cond_28

    const-string/jumbo v3, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v4, "_deliverDataToRecipients: Initialzing handler thread from Async task."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-static {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->-get3(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->initializeHandlerThread()V

    :goto_31
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v3, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->readDevice()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v4, 0x19

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_49} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_49} :catch_67

    goto :goto_31

    :catch_4a
    move-exception v2

    :cond_4b
    :goto_4b
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-static {v3, v7}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->-wrap0(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;Z)V

    return-object v6

    :cond_51
    :try_start_51
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->-get0()Z

    move-result v3

    if-eqz v3, :cond_60

    const-string/jumbo v3, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v4, "_deliverDataToRecipients: Data Delivery object is null. Terminate."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    iget-object v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->-wrap0(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;Z)V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_51 .. :try_end_66} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_66} :catch_67

    return-object v6

    :catch_67
    move-exception v1

    const-string/jumbo v3, "NetworkAnalytics:NetworkAnalyticsDriver"

    const-string/jumbo v4, "doInBackground: Exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 2

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    return-void
.end method
