.class final synthetic Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$14;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    check-cast p1, Lcom/android/server/wm/WindowToken;

    check-cast p2, Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->lambda$-com_android_server_wm_DisplayContent$NonAppWindowContainers_193669(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$14;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/-$Lambda$OzPvdnGprtQoLZLCvw2GU8IaGyI$14;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
