.class Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;
.super Landroid/os/Handler;
.source "NetworkAnalyticsDataDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataDeliveryHandler"
.end annotation


# static fields
.field private static final ACTION_ACCUMULATE_DATA:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_54

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-get1(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    :cond_35
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->deliverData(Ljava/util/List;)I

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-set0(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;J)J

    goto :goto_5

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
