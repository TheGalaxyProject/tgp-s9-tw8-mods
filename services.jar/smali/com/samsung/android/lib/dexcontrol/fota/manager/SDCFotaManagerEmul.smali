.class public Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEmul;
.super Ljava/lang/Object;
.source "SDCFotaManagerEmul.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    return-void
.end method

.method public requestCheckFotaUpdateAvailable()V
    .registers 1

    return-void
.end method

.method public requestCreate(Landroid/content/Context;Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V
    .registers 4

    return-void
.end method

.method public startFotaUpdate()V
    .registers 1

    return-void
.end method
