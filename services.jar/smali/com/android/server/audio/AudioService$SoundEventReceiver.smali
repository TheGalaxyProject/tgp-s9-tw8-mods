.class Lcom/android/server/audio/AudioService$SoundEventReceiver;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundEventReceiver"
.end annotation


# instance fields
.field mEventReceiver:Landroid/content/ComponentName;

.field mEventType:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventType:I

    iput-object p2, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x0

    if-eqz p1, :cond_16

    :try_start_3
    move-object v0, p1

    check-cast v0, Lcom/android/server/audio/AudioService$SoundEventReceiver;

    move-object v2, v0

    iget-object v3, v2, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    if-nez v3, :cond_c

    return v5

    :cond_c
    iget-object v3, v2, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_13} :catch_15

    move-result v3

    return v3

    :catch_15
    move-exception v1

    :cond_16
    return v5
.end method

.method public hasEventType(I)Z
    .registers 3

    iget v0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventType:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public samePackageName(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
