.class Lcom/android/systemui/volume/VolumeDialogImpl$4;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->initDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/16 v1, 0x9

    if-eq v0, v1, :cond_18

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1a

    move v1, v2

    :goto_f
    invoke-static {v3, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set2(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return v2

    :cond_18
    move v1, v2

    goto :goto_f

    :cond_1a
    const/4 v1, 0x0

    goto :goto_f
.end method
