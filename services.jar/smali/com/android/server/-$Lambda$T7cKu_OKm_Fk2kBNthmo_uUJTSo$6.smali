.class final synthetic Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$6;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/SystemServer;->lambda$-com_android_server_SystemServer_64851(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$6;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/-$Lambda$T7cKu_OKm_Fk2kBNthmo_uUJTSo$6;->$m$0()V

    return-void
.end method
