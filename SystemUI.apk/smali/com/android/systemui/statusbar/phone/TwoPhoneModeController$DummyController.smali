.class final Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$DummyController;
.super Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.source "TwoPhoneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DummyController"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;)V

    return-void
.end method


# virtual methods
.method public dismissUserSwitchingDialog(Landroid/os/Handler;)V
    .registers 2

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .registers 4

    return-void
.end method

.method public registerTwoPhoneHelpers(Landroid/os/Handler;)V
    .registers 2

    return-void
.end method

.method public setCallback(Lcom/android/systemui/statusbar/phone/TwoPhoneModeController$TwoPhoneCallback;)V
    .registers 2

    return-void
.end method

.method public showDoneToast(Landroid/os/Handler;I)V
    .registers 3

    return-void
.end method

.method public updateTwoPhoneIcons()V
    .registers 1

    return-void
.end method

.method public userSwitched()V
    .registers 1

    return-void
.end method
