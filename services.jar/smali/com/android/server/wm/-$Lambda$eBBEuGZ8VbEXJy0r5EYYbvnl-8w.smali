.class final synthetic Lcom/android/server/wm/-$Lambda$eBBEuGZ8VbEXJy0r5EYYbvnl-8w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->lambda$-com_android_server_wm_WindowManagerService_128631(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$eBBEuGZ8VbEXJy0r5EYYbvnl-8w;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
