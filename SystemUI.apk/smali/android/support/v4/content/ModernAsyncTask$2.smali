.class Landroid/support/v4/content/ModernAsyncTask$2;
.super Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroid/support/v4/content/ModernAsyncTask;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask$WorkerRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    iget-object v2, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-static {v2}, Landroid/support/v4/content/ModernAsyncTask;->-get1(Landroid/support/v4/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    const/16 v2, 0xa

    :try_start_d
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v2, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    iget-object v3, p0, Landroid/support/v4/content/ModernAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/ModernAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1b} :catch_21
    .catchall {:try_start_d .. :try_end_1b} :catchall_2d

    iget-object v2, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-virtual {v2, v0}, Landroid/support/v4/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catch_21
    move-exception v1

    :try_start_22
    iget-object v2, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-static {v2}, Landroid/support/v4/content/ModernAsyncTask;->-get0(Landroid/support/v4/content/ModernAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v2

    iget-object v3, p0, Landroid/support/v4/content/ModernAsyncTask$2;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-virtual {v3, v0}, Landroid/support/v4/content/ModernAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2
.end method
