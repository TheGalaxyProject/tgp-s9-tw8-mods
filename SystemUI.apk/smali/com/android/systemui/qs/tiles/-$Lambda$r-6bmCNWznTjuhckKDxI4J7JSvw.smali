.class final synthetic Lcom/android/systemui/qs/tiles/-$Lambda$r-6bmCNWznTjuhckKDxI4J7JSvw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$Lambda$r-6bmCNWznTjuhckKDxI4J7JSvw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->lambda$-com_android_systemui_qs_tiles_WifiTile$WifiDetailAdapter_21046()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$Lambda$r-6bmCNWznTjuhckKDxI4J7JSvw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/-$Lambda$r-6bmCNWznTjuhckKDxI4J7JSvw;->$m$0()V

    return-void
.end method
