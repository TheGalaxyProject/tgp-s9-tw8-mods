.class final synthetic Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/server/companion/CompanionDeviceManagerService$Association;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->lambda$-com_android_server_companion_CompanionDeviceManagerService$CompanionDeviceManagerImpl_9764(Lcom/android/server/companion/CompanionDeviceManagerService$Association;)Ljava/lang/String;

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

    invoke-direct {p0, p1}, Lcom/android/server/companion/-$Lambda$AGIrYO-M2umJsGqqjbn8lgb57iM;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
