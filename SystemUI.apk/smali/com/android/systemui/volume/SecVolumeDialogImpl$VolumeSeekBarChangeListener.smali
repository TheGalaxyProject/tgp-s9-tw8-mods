.class final Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private final mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 12

    const/4 v7, 0x2

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " onProgressChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " fromUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    if-nez p3, :cond_46

    return-void

    :cond_46
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    if-lez v2, :cond_77

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 v0, v2, 0x64

    if-ge p2, v0, :cond_77

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    return-void

    :cond_77
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8a

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_10b

    :cond_8a
    invoke-static {p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap5(I)I

    move-result v1

    :cond_8e
    :goto_8e
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    if-ne v2, v1, :cond_a4

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->muted:Z

    if-eqz v2, :cond_10a

    if-lez v1, :cond_10a

    :cond_a4
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set19(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;J)J

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get13(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-eq v2, v1, :cond_10a

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setStreamVolume(II)V

    if-nez p2, :cond_e5

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/plugins/VolumeDialogController;->hasVibrator()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e5

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-ne v2, v7, :cond_124

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get5(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_e5
    :goto_e5
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set13(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/16 v4, 0x9

    invoke-static {v2, v4, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    :cond_10a
    return-void

    :cond_10b
    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap4(Landroid/widget/SeekBar;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    if-eqz v2, :cond_120

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_8e

    :cond_120
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_8e

    :cond_124
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get54(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v2

    if-nez v2, :cond_e5

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_e5

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get5(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_e5
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 6

    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartTrackingTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setActiveStream(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set18(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set15(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .registers 8

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get16(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    move-result-object v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_30

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStopTrackingTouch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set18(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set15(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set19(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;J)J

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-eq v1, v5, :cond_55

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_96

    :cond_55
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap5(I)I

    move-result v0

    :cond_5d
    :goto_5d
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get8(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/16 v3, 0x10

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get21(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get21(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$H;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_96
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap4(Landroid/widget/SeekBar;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-eqz v1, :cond_af

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5d

    :cond_af
    add-int/lit8 v0, v0, -0x1

    goto :goto_5d
.end method
