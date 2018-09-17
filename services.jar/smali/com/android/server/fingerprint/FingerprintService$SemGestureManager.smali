.class Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;
.super Landroid/database/ContentObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemGestureManager"
.end annotation


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field mIsEnabledFpMotion:Z

.field mIsEnabledGestureForSpay:Z

.field mIsEnabledGestureForStatusBar:Z

.field mStatusBarManager:Landroid/app/SemStatusBarManager;

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Handler;)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    return-void
.end method

.method private controlStatusBar(Z)V
    .registers 10

    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v2}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v1

    if-eqz p1, :cond_43

    if-eqz v1, :cond_21

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v2}, Landroid/app/SemStatusBarManager;->expandQuickSettingsPanel()V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "FPGT"

    const-string/jumbo v4, "ExpandQuickSettingsPanel"

    const-wide/16 v6, -0x1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_20
    :goto_20
    return-void

    :cond_21
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v2}, Landroid/app/SemStatusBarManager;->expandNotificationsPanel()V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "FPGT"

    const-string/jumbo v4, "ExpandNotificationPanel"

    const-wide/16 v6, -0x1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_20

    :catch_38
    move-exception v0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "semControlStatusBar : failed "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20

    :cond_43
    if-eqz v1, :cond_20

    :try_start_45
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v2}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "FPGT"

    const-string/jumbo v4, "CollapseNotificationPanel"

    const-wide/16 v6, -0x1

    invoke-static {v2, v3, v4, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5b} :catch_38

    goto :goto_20
.end method

.method private launchSamsungPay()V
    .registers 7

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Launch SamsungPay"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.spay.gesture.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "com.samsung.android.spay.permission.SIMPLE_PAY"

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "FPGT"

    const-string/jumbo v3, "SimpleSamsungPay"

    const-wide/16 v4, -0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method handleGestureEvent(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap1(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "handleGestureEvent : skip action because of DeX"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-wrap19(Lcom/android/server/fingerprint/FingerprintService;)V

    const/16 v1, 0x4e21

    if-ne p1, v1, :cond_52

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_3f

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleAcquired : QuickPanel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    if-eqz v0, :cond_4a

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-eqz v1, :cond_49

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->controlStatusBar(Z)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForSpay:Z

    if-eqz v1, :cond_49

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->launchSamsungPay()V

    goto :goto_49

    :cond_52
    const/16 v1, 0x4e22

    if-ne p1, v1, :cond_49

    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    if-eqz v1, :cond_49

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->controlStatusBar(Z)V

    goto :goto_49
.end method

.method synthetic lambda$-com_android_server_fingerprint_FingerprintService$SemGestureManager_140972(ILjava/util/ArrayList;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, p1}, Lcom/android/server/fingerprint/FingerprintService;->-set4(Lcom/android/server/fingerprint/FingerprintService;I)I

    return-void
.end method

.method public observe(Z)V
    .registers 7

    if-eqz p1, :cond_54

    :try_start_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "fingerprint_gesture_quick"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "fingerprint_gesture_spay"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :goto_28
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemGestureManager.observe["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    return-void

    :cond_54
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_59} :catch_5a

    goto :goto_28

    :catch_5a
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "SemGestureManager.observe : failed : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method

.method public onChange(Z)V
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SemGestureManager.onChange : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->readValue()V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    if-eqz v0, :cond_3b

    const/16 v0, 0xf

    invoke-virtual {p0, v0, v3}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    :goto_3a
    return-void

    :cond_3b
    const/16 v0, 0x10

    invoke-virtual {p0, v0, v3}, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->setGestureMode(II)V

    goto :goto_3a
.end method

.method public readValue()V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "fingerprint_gesture_quick"

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_6a

    move v3, v1

    :goto_15
    iput-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "fingerprint_gesture_spay"

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v5}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_6c

    :goto_29
    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForSpay:Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_6e

    :goto_2b
    iget-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    iput-boolean v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledFpMotion:Z

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SemGestureManager.readValue : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForSpay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6a
    move v3, v2

    goto :goto_15

    :cond_6c
    move v1, v2

    goto :goto_29

    :catch_6e
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v3, "readValue : failure to read value"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForSpay:Z

    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->mIsEnabledGestureForStatusBar:Z

    goto :goto_2b
.end method

.method setGestureMode(II)V
    .registers 15

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "setGestureMode: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    :try_start_12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v5, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg$6;

    invoke-direct {v5, p0}, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg$6;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    move v1, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semManageNavigationMode : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]  request FP_FINISH ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms) RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->-get18(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xf

    if-ne p1, v1, :cond_7b

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get20(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->add(I)V

    :cond_7a
    :goto_7a
    return-void

    :cond_7b
    const/16 v1, 0x10

    if-ne p1, v1, :cond_7a

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$SemGestureManager;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get20(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/fingerprint/FingerprintService$SemBroadcastManager;->remove(I)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_89} :catch_8a

    goto :goto_7a

    :catch_8a
    move-exception v8

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "setGestureMode : failed"

    invoke-static {v1, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7a
.end method
