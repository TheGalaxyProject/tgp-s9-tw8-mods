.class Lcom/android/settings/dashboard/SummaryLoader$Worker;
.super Landroid/os/Handler;
.source "SummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SummaryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1e

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v2, v1}, Lcom/android/settings/dashboard/SummaryLoader;->-wrap1(Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_5

    :pswitch_10
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1b

    const/4 v0, 0x1

    :goto_15
    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v2, v0}, Lcom/android/settings/dashboard/SummaryLoader;->-wrap2(Lcom/android/settings/dashboard/SummaryLoader;Z)V

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    goto :goto_15

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method
