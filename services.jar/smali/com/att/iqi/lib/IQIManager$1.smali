.class Lcom/att/iqi/lib/IQIManager$1;
.super Lcom/att/iqi/IMetricQueryCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/lib/IQIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/att/iqi/lib/IQIManager;


# direct methods
.method constructor <init>(Lcom/att/iqi/lib/IQIManager;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/lib/IQIManager$1;->a:Lcom/att/iqi/lib/IQIManager;

    invoke-direct {p0}, Lcom/att/iqi/IMetricQueryCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetricQueried(Lcom/att/iqi/lib/Metric$ID;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_15

    iget-object v2, p0, Lcom/att/iqi/lib/IQIManager$1;->a:Lcom/att/iqi/lib/IQIManager;

    invoke-static {v2}, Lcom/att/iqi/lib/IQIManager;->a(Lcom/att/iqi/lib/IQIManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {p1}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;

    if-nez v0, :cond_16

    :goto_14
    return-void

    :cond_15
    return-void

    :cond_16
    if-nez p2, :cond_1b

    const/4 v2, 0x0

    new-array p2, v2, [B

    :cond_1b
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/att/iqi/lib/IQIManager$MetricQueryCallback;->onMetricQueried(Lcom/att/iqi/lib/Metric$ID;Ljava/nio/ByteBuffer;)V

    goto :goto_14
.end method
