.class final synthetic Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    check-cast p2, Landroid/content/pm/PackageParser$Package;

    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->lambda$-com_android_server_pm_PackageManagerServiceUtils_2703(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/-$Lambda$LlDgbnHlShdoOCTPTWIe496B9MM$1;->$m$0(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
