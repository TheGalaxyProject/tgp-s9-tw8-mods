.class public abstract Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;
.super Ljava/lang/Object;
.source "PluginSystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TaskStackListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .registers 1

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .registers 4

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .registers 1

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onActivityUnpinned()V
    .registers 1

    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .registers 2

    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .registers 1

    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .registers 1

    return-void
.end method

.method public onTaskProfileLocked(II)V
    .registers 3

    return-void
.end method

.method public onTaskSnapshotChanged(ILcom/samsung/systemui/splugins/recents/external/PluginThumbnailData;)V
    .registers 3

    return-void
.end method

.method public onTaskStackChanged()V
    .registers 1

    return-void
.end method

.method public onTaskStackChangedBackground()V
    .registers 1

    return-void
.end method
