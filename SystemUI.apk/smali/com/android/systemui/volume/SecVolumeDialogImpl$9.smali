.class Lcom/android/systemui/volume/SecVolumeDialogImpl$9;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(IIIZ)V
    .registers 9

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get33(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v1

    if-eq v1, p1, :cond_79

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->semSetMin(I)V

    :cond_16
    :goto_16
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get48(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v1

    if-eq v1, p4, :cond_69

    if-eqz p4, :cond_8f

    const v0, 0x7f0807c1

    :goto_23
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get2(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)I

    move-result v1

    if-eq v0, v1, :cond_45

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-set2(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;I)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_45
    if-nez p4, :cond_49

    if-nez p3, :cond_99

    :cond_49
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get23(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_69
    :goto_69
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set17(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, p2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set16(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, p4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set24(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    return-void

    :cond_79
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get32(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v1

    if-eq v1, p2, :cond_16

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/SeekBar;->setMax(I)V

    goto :goto_16

    :cond_8f
    if-nez p3, :cond_95

    const v0, 0x7f0807c1

    goto :goto_23

    :cond_95
    const v0, 0x7f0807bf

    goto :goto_23

    :cond_99
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get22(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get47(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_69
.end method
