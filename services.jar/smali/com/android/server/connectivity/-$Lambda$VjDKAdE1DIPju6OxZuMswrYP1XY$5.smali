.class final synthetic Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Landroid/net/metrics/DnsEvent;

    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->-com_android_server_connectivity_NetdEventListenerService-mthref-3(Landroid/net/metrics/DnsEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/-$Lambda$VjDKAdE1DIPju6OxZuMswrYP1XY$5;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
