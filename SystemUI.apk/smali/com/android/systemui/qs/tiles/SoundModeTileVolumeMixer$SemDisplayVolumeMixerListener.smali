.class final Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeMixer.java"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SemDisplayVolumeMixerListener"
.end annotation


# instance fields
.field private mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(IIIZ)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-wrap1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I

    move-result v0

    if-eq v0, p1, :cond_45

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->semSetMin(I)V

    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get5(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)Z

    move-result v0

    if-eq v0, p4, :cond_35

    if-nez p4, :cond_2c

    if-nez p3, :cond_57

    :cond_2c
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_35
    :goto_35
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-set1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-set0(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0, p4}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-set2(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;Z)Z

    return-void

    :cond_45
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->this$0:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer;)I

    move-result v0

    if-eq v0, p2, :cond_20

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_20

    :cond_57
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$SemDisplayVolumeMixerListener;->mSmartViewRow:Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;->-get1(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeMixer$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_35
.end method
