.class Lcom/android/systemui/volume/SecVolumeDialogImpl$2;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
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

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .registers 5

    if-nez p1, :cond_14

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set22(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap2(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap27(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    return-void

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3
.end method

.method public onConfigurationChanged()V
    .registers 10

    const/4 v5, 0x0

    const v8, 0x7f070674

    const v7, 0x7f070668

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set10(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set23(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get39(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get36(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v4

    if-eq v3, v4, :cond_3a

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set18(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get45(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v4

    if-eqz v4, :cond_3a

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    :cond_3a
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v4

    if-eq v0, v4, :cond_81

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DENSITY CHANGED from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get14(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set7(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get40(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap10(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_81
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get59()Z

    move-result v4

    if-eqz v4, :cond_8c

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap18(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_8c
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_da

    const-string/jumbo v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tablet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_da

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get39(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get39(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_d0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_da
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get39(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get39(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_d0
.end method

.method public onDismissRequested(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get17(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get31(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method public onPlaySound()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap14(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onScreenOff()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onShowRequested(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap20(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap21(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSilentHint()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get46(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_13
    return-void
.end method

.method public onShowVibrateHint()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get46(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_12
    return-void
.end method

.method public onShowVolumeLimiterToast()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap23(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap13(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method public onStopSound()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap24(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onThemeChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap25(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onZenModeChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap28(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method
