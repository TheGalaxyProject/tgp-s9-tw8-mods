.class Lcom/sec/android/app/sysscope/service/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sec/android/app/sysscope/engine/o;


# instance fields
.field final synthetic a:Lcom/sec/android/app/sysscope/service/j;


# direct methods
.method constructor <init>(Lcom/sec/android/app/sysscope/service/j;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 6

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/j;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/j;->a(Lcom/sec/android/app/sysscope/service/j;)V

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnJobProgressListener.onStart: total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/j;

    iget-object v2, v2, Lcom/sec/android/app/sysscope/service/j;->a:Lcom/sec/android/app/sysscope/service/SysScopeService;

    invoke-static {v2}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/j;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/j;->b(Lcom/sec/android/app/sysscope/service/j;)Ljava/util/Iterator;

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/b;

    :try_start_45
    invoke-interface {v0, p1}, Lcom/sec/android/app/sysscope/service/b;->a(I)V
    :try_end_48
    .catch Landroid/os/DeadObjectException; {:try_start_45 .. :try_end_48} :catch_49
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_48} :catch_52

    goto :goto_39

    :catch_49
    move-exception v0

    const-string v0, "SysScopeService"

    const-string v2, "DeadObjectException: ISYDSCOPEListener.onStart"

    invoke-static {v0, v2}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    :catch_52
    move-exception v0

    const-string v2, "SysScopeService"

    const-string v3, "RemoteException: ISYDSCOPEListener.onStart"

    invoke-static {v2, v3}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_39

    :cond_5e
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/j;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/j;->b(Lcom/sec/android/app/sysscope/service/j;)Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/b;

    :try_start_12
    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sysscope/service/b;->a(ILjava/lang/String;)V
    :try_end_15
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_15} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_1f

    goto :goto_6

    :catch_16
    move-exception v0

    const-string v0, "SysScopeService"

    const-string v2, "RemoteException: ISYDSCOPEListener.onProgress"

    invoke-static {v0, v2}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_1f
    move-exception v0

    const-string v2, "SysScopeService"

    const-string v3, "RemoteException: ISYDSCOPEListener.onProgress"

    invoke-static {v2, v3}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :cond_2b
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .registers 7

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnJobProgressListener.onFinish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/j;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/j;->b(Lcom/sec/android/app/sysscope/service/j;)Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/b;

    :try_start_34
    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sysscope/service/b;->a(ZLjava/lang/String;)V
    :try_end_37
    .catch Landroid/os/DeadObjectException; {:try_start_34 .. :try_end_37} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_3a

    goto :goto_28

    :catch_38
    move-exception v0

    goto :goto_28

    :catch_3a
    move-exception v0

    const-string v2, "SysScopeService"

    const-string v3, "RemoteException: ISYDSCOPEListener.onComplete"

    invoke-static {v2, v3}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_28

    :cond_46
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/k;->a:Lcom/sec/android/app/sysscope/service/j;

    invoke-static {v0}, Lcom/sec/android/app/sysscope/service/j;->b(Lcom/sec/android/app/sysscope/service/j;)Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/b;

    :try_start_12
    invoke-interface {v0, p1}, Lcom/sec/android/app/sysscope/service/b;->b(I)V
    :try_end_15
    .catch Landroid/os/DeadObjectException; {:try_start_12 .. :try_end_15} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_18

    goto :goto_6

    :catch_16
    move-exception v0

    goto :goto_6

    :catch_18
    move-exception v0

    const-string v2, "SysScopeService"

    const-string v3, "RemoteException: ISYDSCOPEListener.onError"

    invoke-static {v2, v3}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :cond_24
    return-void
.end method
