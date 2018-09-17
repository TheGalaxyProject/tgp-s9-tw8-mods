.class Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService$SoundKitchen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundKitchenItem"
.end annotation


# instance fields
.field private mDevice:I

.field private mMaxLimitSpkGameVolume:Z

.field private mRatio:I

.field private mUid:I

.field final synthetic this$1:Lcom/android/server/audio/AudioService$SoundKitchen;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$SoundKitchen;IIIZ)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->this$1:Lcom/android/server/audio/AudioService$SoundKitchen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mUid:I

    iput p3, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mDevice:I

    iput p4, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mRatio:I

    iput-boolean p5, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mMaxLimitSpkGameVolume:Z

    return-void
.end method


# virtual methods
.method public getAppDevice(Z)I
    .registers 4

    if-nez p1, :cond_e

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->this$1:Lcom/android/server/audio/AudioService$SoundKitchen;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$SoundKitchen;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mDevice:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->-wrap1(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_e
    iget v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mDevice:I

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method public getAppVolume()I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mRatio:I

    return v0
.end method

.method public getMaxLimitSpkVolume()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mMaxLimitSpkGameVolume:Z

    return v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mUid:I

    return v0
.end method

.method public setAppDevice(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mDevice:I

    return-void
.end method

.method public setAppVolume(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mRatio:I

    return-void
.end method

.method public setMaxLimitedSpkVolume(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$SoundKitchen$SoundKitchenItem;->mMaxLimitSpkGameVolume:Z

    return-void
.end method
