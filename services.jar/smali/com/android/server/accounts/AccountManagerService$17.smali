.class Lcom/android/server/accounts/AccountManagerService$17;
.super Landroid/accounts/IAccountAuthenticatorResponse$Stub;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$callback:Landroid/os/RemoteCallback;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILjava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$17;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iput-object p2, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$account:Landroid/accounts/Account;

    iput p3, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$uid:I

    iput-object p4, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$packageName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$callback:Landroid/os/RemoteCallback;

    invoke-direct {p0}, Landroid/accounts/IAccountAuthenticatorResponse$Stub;-><init>()V

    return-void
.end method

.method private handleAuthenticatorResponse(Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$17;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$17;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$account:Landroid/accounts/Account;

    const-string/jumbo v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget v5, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$uid:I

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->-wrap8(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/accounts/AccountManagerService;->-wrap14(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$callback:Landroid/os/RemoteCallback;

    if-eqz v1, :cond_2e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "booleanResult"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$17;->val$callback:Landroid/os/RemoteCallback;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    :cond_2e
    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$17;->handleAuthenticatorResponse(Z)V

    return-void
.end method

.method public onRequestContinued()V
    .registers 1

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/accounts/AccountManagerService$17;->handleAuthenticatorResponse(Z)V

    return-void
.end method
