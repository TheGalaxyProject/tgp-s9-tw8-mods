.class final Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;
.super Landroid/os/Handler;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/SluggishInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SluggishInfoHandler"
.end annotation


# instance fields
.field private slgInfo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/SluggishInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/android/server/am/SluggishInfo;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-get0()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SluggishInfoHandler()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-get2()Lcom/android/server/am/SluggishInfo;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_10

    :cond_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->slgInfo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz p1, :cond_1e

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1f

    :cond_1e
    return-void

    :cond_1f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1e

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-get0()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage() - what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " componentName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_6c

    :goto_5e
    return-void

    :pswitch_5f
    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->-wrap4(Ljava/lang/String;)V

    goto :goto_5e

    :pswitch_63
    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->-wrap3(Ljava/lang/String;)V

    goto :goto_5e

    :pswitch_67
    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->-wrap2(Ljava/lang/String;)V

    goto :goto_5e

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_5f
        :pswitch_63
        :pswitch_67
    .end packed-switch
.end method
