.class Lcom/android/server/DualAppManagerService$InternalHandler;
.super Landroid/os/Handler;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# static fields
.field static final MSG_NOTIFY_BADGE_ADD:I = 0x2

.field static final MSG_NOTIFY_BADGE_REMOVE:I = 0x3

.field static final MSG_NOTIFY_LAUNCHER_CHANGE:I = 0x1

.field static final MSG_UPDATE_WHITELIST_INFO:I = 0x4


# instance fields
.field final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DualAppManagerService;Lcom/android/server/DualAppManagerService$InternalHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DualAppManagerService$InternalHandler;-><init>(Lcom/android/server/DualAppManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    const-string/jumbo v3, "DualAppManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage() START "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1a
    iget v3, p1, Landroid/os/Message;->what:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1c} :catch_5c

    packed-switch v3, :pswitch_data_76

    :goto_1f
    const-string/jumbo v3, "DualAppManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleMessage() END"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_3a
    :try_start_3a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.da.daagent"

    const-string/jumbo v4, "com.samsung.android.da.daagent.service.SwitchLauncherService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "defaultLauncher"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/DualAppManagerService;->-get0()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5b} :catch_5c

    goto :goto_1f

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f

    :pswitch_61
    :try_start_61
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/DualAppManagerService;->-wrap0(I)V

    goto :goto_1f

    :pswitch_67
    invoke-static {}, Lcom/android/server/DualAppManagerService;->-wrap2()V

    goto :goto_1f

    :pswitch_6b
    iget-object v3, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v3}, Lcom/android/server/DualAppManagerService;->updateWhitelistPackages()V

    iget-object v3, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v3}, Lcom/android/server/DualAppManagerService;->updateInstalledWhitelistPackages()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_75} :catch_5c

    goto :goto_1f

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_61
        :pswitch_67
        :pswitch_6b
    .end packed-switch
.end method
