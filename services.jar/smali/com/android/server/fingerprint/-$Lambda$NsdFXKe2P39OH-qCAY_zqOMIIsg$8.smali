.class final synthetic Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg$8;
.super Ljava/lang/Object;

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(ILjava/util/ArrayList;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg$8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->lambda$-com_android_server_fingerprint_FingerprintService_110283(ILjava/util/ArrayList;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg$8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onValues(ILjava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg$8;->$m$0(ILjava/util/ArrayList;)V

    return-void
.end method
