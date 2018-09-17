.class public abstract Lcom/samsung/context/sdk/samsunganalytics/a/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/a/f/b;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field protected c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

.field protected d:Lcom/samsung/context/sdk/samsunganalytics/a/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/context/sdk/samsunganalytics/a/h/b",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

.field protected f:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/a/d/d;->a()Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->f:Lcom/samsung/context/sdk/samsunganalytics/a/d/c;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/h/b;

    invoke-direct {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/h/b;-><init>()V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/h/b;

    invoke-static {p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    return-void
.end method


# virtual methods
.method protected a(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v1, "v"

    const-string/jumbo v2, "1.8.15"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tid"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->d()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "la"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b2

    :goto_2d
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c0

    :goto_39
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->g()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dm"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auid"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isUseAnonymizeIp()Z

    move-result v1

    if-nez v1, :cond_ce

    :cond_59
    :goto_59
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e7

    :goto_65
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "do"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "av"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uv"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->i()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tz"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getAuidType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "at"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->j()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fv"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_b2
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mcc"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2d

    :cond_c0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->c:Lcom/samsung/context/sdk/samsunganalytics/a/b/a;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mnc"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_39

    :cond_ce
    const-string/jumbo v1, "aip"

    const-string/jumbo v2, "1"

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getOverrideIp()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_59

    const-string/jumbo v1, "oip"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_59

    :cond_e7
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getUserId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_65
.end method

.method protected b(Ljava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->d:Lcom/samsung/context/sdk/samsunganalytics/a/h/b;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;->a:Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/b;->a(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/a/h/b$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->e:Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;

    const-string/jumbo v0, "ts"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/samsung/context/sdk/samsunganalytics/a/f/c/a;->a(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/util/Map;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/f/a;->b:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    :cond_e
    const-string/jumbo v0, "Log Sender"

    const-string/jumbo v1, "Device id is empty"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/h/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x5

    return v0
.end method
