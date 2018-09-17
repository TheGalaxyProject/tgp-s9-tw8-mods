.class public interface abstract Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
.super Ljava/lang/Object;
.source "ZenModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ZenModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onConditionsChanged([Landroid/service/notification/Condition;)V
    .registers 2

    return-void
.end method

.method public onConfigChanged(Landroid/service/notification/ZenModeConfig;)V
    .registers 2

    return-void
.end method

.method public onEffectsSupressorChanged()V
    .registers 1

    return-void
.end method

.method public onManualRuleChanged(Landroid/service/notification/ZenModeConfig$ZenRule;)V
    .registers 2

    return-void
.end method

.method public onNextAlarmChanged()V
    .registers 1

    return-void
.end method

.method public onZenAvailableChanged(Z)V
    .registers 2

    return-void
.end method

.method public onZenChanged(I)V
    .registers 2

    return-void
.end method
