.class Lorg/apache/http/pool/AbstractConnPool$3;
.super Ljava/lang/Object;
.source "AbstractConnPool.java"

# interfaces
.implements Lorg/apache/http/pool/PoolEntryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/pool/AbstractConnPool;->closeIdle(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/pool/PoolEntryCallback",
        "<TT;TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/http/pool/AbstractConnPool;

.field final synthetic val$deadline:J


# direct methods
.method constructor <init>(Lorg/apache/http/pool/AbstractConnPool;J)V
    .registers 4

    iput-object p1, p0, Lorg/apache/http/pool/AbstractConnPool$3;->this$0:Lorg/apache/http/pool/AbstractConnPool;

    iput-wide p2, p0, Lorg/apache/http/pool/AbstractConnPool$3;->val$deadline:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/pool/PoolEntry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/PoolEntry",
            "<TT;TC;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolEntry;->getUpdated()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/http/pool/AbstractConnPool$3;->val$deadline:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_10

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolEntry;->close()V

    :cond_10
    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_b
.end method
