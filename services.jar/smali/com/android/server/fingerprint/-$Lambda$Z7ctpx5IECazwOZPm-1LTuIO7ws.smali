.class final synthetic Lcom/android/server/fingerprint/-$Lambda$Z7ctpx5IECazwOZPm-1LTuIO7ws;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/-$Lambda$Z7ctpx5IECazwOZPm-1LTuIO7ws;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->lambda$-com_android_server_fingerprint_AuthenticationClient_8982()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$Lambda$Z7ctpx5IECazwOZPm-1LTuIO7ws;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/-$Lambda$Z7ctpx5IECazwOZPm-1LTuIO7ws;->$m$0()V

    return-void
.end method