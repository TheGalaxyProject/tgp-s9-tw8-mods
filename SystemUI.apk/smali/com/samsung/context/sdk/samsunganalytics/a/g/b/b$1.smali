.class Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b$1;
.super Lcom/samsung/context/sdk/samsunganalytics/a/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;


# virtual methods
.method public b(ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b$1;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;->a(Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;)Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v1, ""

    invoke-virtual {v0, v2, v3, v1, p3}, Lcom/samsung/context/sdk/samsunganalytics/a/g/c/a;->a(JLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b$1;->b:Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;->b(Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/b/b$1;->a:I

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    mul-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/a/e/d;->b(Landroid/content/Context;II)V

    return-void
.end method
