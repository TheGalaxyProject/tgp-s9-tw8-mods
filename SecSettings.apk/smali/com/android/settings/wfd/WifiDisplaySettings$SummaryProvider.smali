.class Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method static synthetic -wrap0(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->updateSummary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    return-void
.end method

.method private updateSummary()V
    .registers 7

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f120880

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v2, :cond_36

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v0}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f12203a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_36
    iget-object v4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v4, p0, v3}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    return-void

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method


# virtual methods
.method public setListening(Z)V
    .registers 5

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->updateSummary()V

    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    goto :goto_d
.end method
