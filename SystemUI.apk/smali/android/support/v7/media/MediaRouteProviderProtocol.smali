.class abstract Landroid/support/v7/media/MediaRouteProviderProtocol;
.super Ljava/lang/Object;
.source "MediaRouteProviderProtocol.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isValidRemoteMessenger(Landroid/os/Messenger;)Z
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    :try_start_3
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_6} :catch_b

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    :cond_a
    return v1

    :catch_b
    move-exception v0

    return v1
.end method
