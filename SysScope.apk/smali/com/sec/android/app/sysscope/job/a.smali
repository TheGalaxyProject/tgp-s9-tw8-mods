.class public Lcom/sec/android/app/sysscope/job/a;
.super Lcom/sec/android/app/sysscope/engine/m;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/sec/android/app/sysscope/service/g;
    .registers 5

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    const-string v1, "1"

    const-string v2, "ro.secure"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, "1"

    const-string v2, "ro.debuggable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->b:Lcom/sec/android/app/sysscope/service/g;

    :cond_20
    return-object v0
.end method

.method public d()V
    .registers 1

    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const-string v0, "ADB Properties Scanner"

    return-object v0
.end method

.method public g()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
