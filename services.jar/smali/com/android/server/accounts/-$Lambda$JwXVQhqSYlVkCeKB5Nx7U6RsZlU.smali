.class final synthetic Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->lambda$-com_android_server_accounts_AccountManagerService_16238(I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPermissionsChanged(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accounts/-$Lambda$JwXVQhqSYlVkCeKB5Nx7U6RsZlU;->$m$0(I)V

    return-void
.end method
