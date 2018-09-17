.class public Lcom/android/settings/notification/AudioHelper;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public createPackageContextAsUser(I)Landroid/content/Context;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getManagedProfileId(Landroid/os/UserManager;)I
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    return v0
.end method

.method public isSingleVolume()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/notification/AudioHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isUserUnlocked(Landroid/os/UserManager;I)Z
    .registers 4

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method
