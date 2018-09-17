.class Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .registers 4

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v1

    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    :goto_22
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_27
    return-void

    :cond_28
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public onScreenTurnedOff()V
    .registers 3

    sget-boolean v0, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_16
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    if-gtz v1, :cond_4f

    :cond_15
    :goto_15
    const-string/jumbo v1, "KeyguardClockPage"

    const-string/jumbo v2, "onScreenTurnedOn() Do considerChangeClockView() because we lost the clock view"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v1, v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-wrap0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Z)V

    :cond_23
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYWI_USE_EXTERNAL_CLOCK_PACKAGE:Z

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get2(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/samsung/android/clockpack/plugins/clock/ClockView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v2}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get3(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get3(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isOccluded()Z

    move-result v0

    :cond_4b
    invoke-virtual {v1, v0}, Lcom/samsung/android/clockpack/plugins/clock/ClockView;->suspend(Z)V

    :cond_4e
    return-void

    :cond_4f
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-get0(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    if-gtz v1, :cond_23

    goto :goto_15
.end method

.method public onUpdateAdaptiveColor(Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V
    .registers 4

    const-string/jumbo v0, "KeyguardClockPage"

    const-string/jumbo v1, "onUpdateAdaptiveColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;

    invoke-static {v0, p1}, Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;->-wrap1(Lcom/android/systemui/servicebox/pages/clock/KeyguardClockPage;Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;)V

    return-void
.end method
