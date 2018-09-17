.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$1;
.super Ljava/lang/Thread;
.source "NetworkAnalyticsDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->startReattemptThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

.field final synthetic val$command:I


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$1;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iput p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$1;->val$command:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->-get2()I

    move-result v2

    if-ge v1, v2, :cond_46

    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->-get0()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "NetworkAnalytics:NetworkAnalyticsDriver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startReattemptThread: Attempting command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$1;->val$command:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Attempt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    invoke-static {}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->-get1()I

    move-result v2

    iget v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$1;->val$command:I

    if-ne v2, v3, :cond_47

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$1;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->deactivate()I

    move-result v2

    if-nez v2, :cond_4f

    :cond_46
    :goto_46
    return-void

    :cond_47
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$1;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->activate()I

    move-result v2

    if-eqz v2, :cond_46

    :cond_4f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0xfa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_57} :catch_5a

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_5a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method
