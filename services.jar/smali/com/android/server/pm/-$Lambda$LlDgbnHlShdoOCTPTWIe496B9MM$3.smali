.class final synthetic Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$-com_android_server_pm_PackageManagerServiceUtils_7044(Landroid/content/pm/PackageParser$Package;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$3;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
