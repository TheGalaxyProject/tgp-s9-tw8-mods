.class Lcom/android/settings/deviceinfo/Status$MyHandler;
.super Landroid/os/Handler;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private mStatus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/Status;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_20

    :goto_10
    return-void

    :sswitch_11
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/Status;->updateTimes()V

    const-wide/16 v2, 0x3e8

    const/16 v1, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/deviceinfo/Status$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_10

    :sswitch_1c
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/Status;->updateConnectivity()V

    goto :goto_10

    :sswitch_data_20
    .sparse-switch
        0x1f4 -> :sswitch_11
        0x258 -> :sswitch_1c
    .end sparse-switch
.end method
