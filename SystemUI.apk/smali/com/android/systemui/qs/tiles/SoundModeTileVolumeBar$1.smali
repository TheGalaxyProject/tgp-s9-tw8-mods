.class Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeBar.java"

# interfaces
.implements Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$VolumeBarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentUserContextForSample()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar$1;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeBar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isEnableZenMode()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isSettingAllSoundMute()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceCalling()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onMuted(IZZ)V
    .registers 4

    return-void
.end method

.method public onProgressChanged(ILandroid/widget/SeekBar;IZ)V
    .registers 5

    return-void
.end method

.method public onSampleStarting(ILandroid/preference/SeekBarVolumizer;)V
    .registers 3

    return-void
.end method
