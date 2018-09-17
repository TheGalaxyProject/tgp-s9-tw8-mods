.class Lcom/android/systemui/keyguard/KeyguardViewMediator$9;
.super Ljava/lang/Thread;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;->startSetBendedPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field final synthetic val$fIntent:Landroid/content/Intent;

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$pIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/app/PendingIntent;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 5

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$pIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$notificationKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$fIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$pIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_38

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->resumeAppSwitches()V

    :cond_13
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$notificationKey:Ljava/lang/String;

    if-nez v4, :cond_6b

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$pIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$fIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    :goto_23
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$pIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v4}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->-get21(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/view/IWindowManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_38} :catch_74
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_90

    :cond_38
    :goto_38
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$notificationKey:Ljava/lang/String;

    if-eqz v4, :cond_6a

    const-string/jumbo v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notificationKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_9b

    :try_start_65
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$notificationKey:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClick(Ljava/lang/String;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6a} :catch_a5

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    :try_start_6b
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$9;->val$pIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_73} :catch_74
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_73} :catch_90

    goto :goto_23

    :catch_74
    move-exception v1

    const-string/jumbo v4, "KeyguardViewMediator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error onDismiss(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :catch_90
    move-exception v2

    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "Cannot send pending intent due to : "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_38

    :cond_9b
    :try_start_9b
    const-string/jumbo v4, "KeyguardViewMediator"

    const-string/jumbo v5, "can\'t get STATUS_BAR_SERVICE"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_9b .. :try_end_a4} :catch_a5

    goto :goto_6a

    :catch_a5
    move-exception v3

    goto :goto_6a
.end method
