.class Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;
.super Landroid/view/Window;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-direct {p0, p2}, Landroid/view/Window;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    return-void
.end method

.method public alwaysReadCloseOnTouchAttr()V
    .registers 1

    return-void
.end method

.method public clearContentView()V
    .registers 1

    return-void
.end method

.method public closeAllPanels()V
    .registers 1

    return-void
.end method

.method public closePanel(I)V
    .registers 2

    return-void
.end method

.method public getCurrentFocus()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecorView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationBarColor()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarColor()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVolumeControlStream()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public invalidatePanelMenu(I)V
    .registers 2

    return-void
.end method

.method public isFloating()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected onActive()V
    .registers 1

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onMultiWindowModeChanged()V
    .registers 1

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public openPanel(ILandroid/view/KeyEvent;)V
    .registers 3

    return-void
.end method

.method public peekDecorView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public performContextMenuIdentifierAction(II)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public performPanelIdentifierAction(III)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public performPanelShortcut(IILandroid/view/KeyEvent;I)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public reportActivityRelaunched()V
    .registers 1

    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public saveHierarchyState()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 3

    return-void
.end method

.method public setChildInt(II)V
    .registers 3

    return-void
.end method

.method public setContentView(I)V
    .registers 2

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    return-void
.end method

.method public setDecorCaptionShade(I)V
    .registers 2

    return-void
.end method

.method public setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .registers 3

    return-void
.end method

.method public setFeatureDrawableAlpha(II)V
    .registers 3

    return-void
.end method

.method public setFeatureDrawableResource(II)V
    .registers 3

    return-void
.end method

.method public setFeatureDrawableUri(ILandroid/net/Uri;)V
    .registers 3

    return-void
.end method

.method public setFeatureInt(II)V
    .registers 3

    return-void
.end method

.method public setNavigationBarColor(I)V
    .registers 2

    return-void
.end method

.method public setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    return-void
.end method

.method public setStatusBarColor(I)V
    .registers 2

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method public setTitleColor(I)V
    .registers 2

    return-void
.end method

.method public setVolumeControlStream(I)V
    .registers 2

    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public takeInputQueue(Landroid/view/InputQueue$Callback;)V
    .registers 2

    return-void
.end method

.method public takeKeyEvents(Z)V
    .registers 2

    return-void
.end method

.method public takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
    .registers 2

    return-void
.end method

.method public togglePanel(ILandroid/view/KeyEvent;)V
    .registers 3

    return-void
.end method
