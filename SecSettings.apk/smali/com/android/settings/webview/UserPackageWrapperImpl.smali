.class Lcom/android/settings/webview/UserPackageWrapperImpl;
.super Ljava/lang/Object;
.source "UserPackageWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/webview/UserPackageWrapper;


# instance fields
.field private final mUserPackage:Landroid/webkit/UserPackage;


# direct methods
.method constructor <init>(Landroid/webkit/UserPackage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/webview/UserPackageWrapperImpl;->mUserPackage:Landroid/webkit/UserPackage;

    return-void
.end method


# virtual methods
.method public getUserInfo()Landroid/content/pm/UserInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/webview/UserPackageWrapperImpl;->mUserPackage:Landroid/webkit/UserPackage;

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public isEnabledPackage()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/webview/UserPackageWrapperImpl;->mUserPackage:Landroid/webkit/UserPackage;

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v0

    return v0
.end method

.method public isInstalledPackage()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/webview/UserPackageWrapperImpl;->mUserPackage:Landroid/webkit/UserPackage;

    invoke-virtual {v0}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v0

    return v0
.end method
