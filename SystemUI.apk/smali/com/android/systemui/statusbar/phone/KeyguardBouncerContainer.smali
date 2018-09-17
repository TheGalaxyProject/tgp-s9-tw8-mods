.class public Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardBouncerContainer.java"


# instance fields
.field private mService:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_18

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_42

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3d

    return v2

    :cond_18
    const/4 v0, 0x0

    goto :goto_8

    :sswitch_1a
    if-nez v0, :cond_21

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    :cond_21
    return v2

    :sswitch_22
    if-nez v0, :cond_2b

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result v1

    return v1

    :cond_2b
    :sswitch_2b
    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result v1

    return v1

    :sswitch_34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncerContainer;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v1

    if-eqz v1, :cond_f

    return v2

    :cond_3d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_data_42
    .sparse-switch
        0x4 -> :sswitch_1a
        0x18 -> :sswitch_34
        0x19 -> :sswitch_34
        0x3e -> :sswitch_2b
        0x52 -> :sswitch_22
    .end sparse-switch
.end method
