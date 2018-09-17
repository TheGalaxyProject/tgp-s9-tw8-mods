.class public interface abstract Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.super Ljava/lang/Object;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# virtual methods
.method public addQsTile(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

.method public animateCollapsePanels(I)V
    .registers 2

    return-void
.end method

.method public animateExpandLockedShadePanel(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .registers 1

    return-void
.end method

.method public animateExpandSettingsPanel(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public appTransitionCancelled()V
    .registers 1

    return-void
.end method

.method public appTransitionFinished()V
    .registers 1

    return-void
.end method

.method public appTransitionPending(Z)V
    .registers 2

    return-void
.end method

.method public appTransitionStarting(JJZ)V
    .registers 6

    return-void
.end method

.method public cancelPreloadRecentApps()V
    .registers 1

    return-void
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

.method public disable(IIZ)V
    .registers 4

    return-void
.end method

.method public dismissKeyboardShortcutsMenu()V
    .registers 1

    return-void
.end method

.method public handleShowGlobalActionsMenu()V
    .registers 1

    return-void
.end method

.method public handleSystemNavigationKey(I)V
    .registers 2

    return-void
.end method

.method public hideRecentApps(ZZ)V
    .registers 3

    return-void
.end method

.method public onCameraLaunchGestureDetected(I)V
    .registers 2

    return-void
.end method

.method public preloadRecentApps()V
    .registers 1

    return-void
.end method

.method public prepareKnoxDesktopTaskBar(Z)V
    .registers 2

    return-void
.end method

.method public remQsTile(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

.method public removeIcon(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public sendKeyEventToKnoxDesktopTaskbar(Landroid/view/KeyEvent;)V
    .registers 2

    return-void
.end method

.method public setForceImmersiveBtnVisibility(Z)V
    .registers 2

    return-void
.end method

.method public setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .registers 3

    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .registers 5

    return-void
.end method

.method public setIndicatorBgColor(I)V
    .registers 2

    return-void
.end method

.method public setKnoxDesktopTaskBar(ZZ)V
    .registers 3

    return-void
.end method

.method public setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;I)V
    .registers 4

    return-void
.end method

.method public setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    return-void
.end method

.method public setWindowState(II)V
    .registers 3

    return-void
.end method

.method public showAssistDisclosure()V
    .registers 1

    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 1

    return-void
.end method

.method public showRecentApps(ZZ)V
    .registers 3

    return-void
.end method

.method public showScreenPinningRequest(I)V
    .registers 2

    return-void
.end method

.method public showServiceBox(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public showSnapWindowGuideView(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public startAssist(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public toggleKeyboardShortcutsMenu(I)V
    .registers 2

    return-void
.end method

.method public toggleNotificationPanel()V
    .registers 1

    return-void
.end method

.method public toggleRecentApps()V
    .registers 1

    return-void
.end method

.method public toggleSplitScreen()V
    .registers 1

    return-void
.end method

.method public topAppWindowChanged(Z)V
    .registers 2

    return-void
.end method
