.class public Landroid/support/v7/media/MediaRouter$RouteInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RouteInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouter$RouteInfo$ConnectionState;,
        Landroid/support/v7/media/MediaRouter$RouteInfo$DeviceType;,
        Landroid/support/v7/media/MediaRouter$RouteInfo$PlaybackType;,
        Landroid/support/v7/media/MediaRouter$RouteInfo$PlaybackVolume;
    }
.end annotation


# instance fields
.field private mCanDisconnect:Z

.field private mConnecting:Z

.field private mConnectionState:I

.field private final mControlFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;

.field mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

.field private final mDescriptorId:Ljava/lang/String;

.field private mDeviceType:I

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mIconUri:Landroid/net/Uri;

.field private mName:Ljava/lang/String;

.field private mPlaybackStream:I

.field private mPlaybackType:I

.field private mPresentationDisplay:Landroid/view/Display;

.field private mPresentationDisplayId:I

.field private final mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

.field private mSettingsIntent:Landroid/content/IntentSender;

.field private final mUniqueId:Ljava/lang/String;

.field private mVolume:I

.field private mVolumeHandling:I

.field private mVolumeMax:I


# direct methods
.method static synthetic -get0(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method static synthetic -get2(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method constructor <init>(Landroid/support/v7/media/MediaRouter$ProviderInfo;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    iput-object p2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-void
.end method

.method private static isSystemMediaRouteProvider(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public canDisconnect()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    return v0
.end method

.method public getConnectionState()I
    .registers 2

    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnectionState:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method getDescriptorId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptorId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .registers 2

    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDeviceType:I

    return v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackStream()I
    .registers 2

    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    return v0
.end method

.method public getPlaybackType()I
    .registers 2

    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    return v0
.end method

.method public getPresentationDisplayId()I
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    return v0
.end method

.method public getProvider()Landroid/support/v7/media/MediaRouter$ProviderInfo;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    return-object v0
.end method

.method public getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getProviderInstance()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()I
    .registers 2

    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    return v0
.end method

.method public getVolumeHandling()I
    .registers 2

    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    return v0
.end method

.method public getVolumeMax()I
    .registers 2

    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    return v0
.end method

.method public isConnecting()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    return v0
.end method

.method public isDefault()Z
    .registers 2

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getDefaultRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public isDefaultOrBluetooth()Z
    .registers 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDeviceType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-static {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->isSystemMediaRouteProvider(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string/jumbo v0, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->supportsControlCategory(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    if-ne v0, p0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public matchesSelector(Landroid/support/v7/media/MediaRouteSelector;)Z
    .registers 4
    .param p1    # Landroid/support/v7/media/MediaRouteSelector;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouteSelector;->matchesControlFilters(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method maybeUpdateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    if-eq v1, p1, :cond_9

    invoke-virtual {p0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->updateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I

    move-result v0

    :cond_9
    return v0
.end method

.method public requestSetVolume(I)V
    .registers 5

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->requestSetVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    return-void
.end method

.method public requestUpdateVolume(I)V
    .registers 3

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    if-eqz p1, :cond_a

    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->requestUpdateVolume(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    :cond_a
    return-void
.end method

.method public select()V
    .registers 2

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    sget-object v0, Landroid/support/v7/media/MediaRouter;->sGlobal:Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0, p0}, Landroid/support/v7/media/MediaRouter$GlobalMediaRouter;->selectRoute(Landroid/support/v7/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public supportsControlCategory(Ljava/lang/String;)Z
    .registers 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "category must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->checkCallingThread()V

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_15
    if-ge v1, v0, :cond_2a

    iget-object v2, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    return v2

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_2a
    const/4 v2, 0x0

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaRouter.RouteInfo{ uniqueId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iconUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connecting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", connectionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnectionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", canDisconnect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playbackType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playbackStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volumeHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", volumeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", presentationDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", settingsIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", providerPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mProvider:Landroid/support/v7/media/MediaRouter$ProviderInfo;

    invoke-virtual {v1}, Landroid/support/v7/media/MediaRouter$ProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDescriptor(Landroid/support/v7/media/MediaRouteDescriptor;)I
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescriptor:Landroid/support/v7/media/MediaRouteDescriptor;

    if-eqz p1, :cond_137

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mName:Ljava/lang/String;

    const/4 v0, 0x1

    :cond_19
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDescription:Ljava/lang/String;

    or-int/lit8 v0, v0, 0x1

    :cond_2d
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mIconUri:Landroid/net/Uri;

    or-int/lit8 v0, v0, 0x1

    :cond_41
    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v2

    if-eq v1, v2, :cond_51

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mEnabled:Z

    or-int/lit8 v0, v0, 0x1

    :cond_51
    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isConnecting()Z

    move-result v2

    if-eq v1, v2, :cond_61

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->isConnecting()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnecting:Z

    or-int/lit8 v0, v0, 0x1

    :cond_61
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnectionState:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getConnectionState()I

    move-result v2

    if-eq v1, v2, :cond_71

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getConnectionState()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mConnectionState:I

    or-int/lit8 v0, v0, 0x1

    :cond_71
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mControlFilters:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getControlFilters()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    or-int/lit8 v0, v0, 0x1

    :cond_8d
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v2

    if-eq v1, v2, :cond_9d

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackType()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackType:I

    or-int/lit8 v0, v0, 0x1

    :cond_9d
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v2

    if-eq v1, v2, :cond_ad

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPlaybackStream()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPlaybackStream:I

    or-int/lit8 v0, v0, 0x1

    :cond_ad
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDeviceType:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getDeviceType()I

    move-result v2

    if-eq v1, v2, :cond_bd

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getDeviceType()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mDeviceType:I

    or-int/lit8 v0, v0, 0x1

    :cond_bd
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v2

    if-eq v1, v2, :cond_cd

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeHandling()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeHandling:I

    or-int/lit8 v0, v0, 0x3

    :cond_cd
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolume()I

    move-result v2

    if-eq v1, v2, :cond_dd

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolume()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolume:I

    or-int/lit8 v0, v0, 0x3

    :cond_dd
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v2

    if-eq v1, v2, :cond_ed

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getVolumeMax()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mVolumeMax:I

    or-int/lit8 v0, v0, 0x3

    :cond_ed
    iget v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v2

    if-eq v1, v2, :cond_ff

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getPresentationDisplayId()I

    move-result v1

    iput v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplayId:I

    iput-object v3, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mPresentationDisplay:Landroid/view/Display;

    or-int/lit8 v0, v0, 0x5

    :cond_ff
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_113

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mExtras:Landroid/os/Bundle;

    or-int/lit8 v0, v0, 0x1

    :cond_113
    iget-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getSettingsActivity()Landroid/content/IntentSender;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v7/media/MediaRouter;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_127

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->getSettingsActivity()Landroid/content/IntentSender;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mSettingsIntent:Landroid/content/IntentSender;

    or-int/lit8 v0, v0, 0x1

    :cond_127
    iget-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->canDisconnectAndKeepPlaying()Z

    move-result v2

    if-eq v1, v2, :cond_137

    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteDescriptor;->canDisconnectAndKeepPlaying()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->mCanDisconnect:Z

    or-int/lit8 v0, v0, 0x5

    :cond_137
    return v0
.end method
