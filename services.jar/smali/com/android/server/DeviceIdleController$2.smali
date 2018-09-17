.class Lcom/android/server/DeviceIdleController$2;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final SIM_STATE_ABSENT:Ljava/lang/String; = "ABSENT"

.field private static final SIM_STATE_EXTRA:Ljava/lang/String; = "ss"

.field private static final SIM_STATE_LOADED:Ljava/lang/String; = "LOADED"


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const-string/jumbo v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4e

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v7

    :try_start_18
    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v6}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const v8, 0xa200

    invoke-virtual {v6, v3, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_49

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    invoke-static {v6, v8, v9}, Lcom/android/server/DeviceIdleController;->-wrap0(Lcom/android/server/DeviceIdleController;Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_49

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-wrap4(Lcom/android/server/DeviceIdleController;)V

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-wrap5(Lcom/android/server/DeviceIdleController;)V
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_49} :catch_cd
    .catchall {:try_start_18 .. :try_end_49} :catchall_4b

    :cond_49
    :goto_49
    monitor-exit v7

    :cond_4a
    return-void

    :catchall_4b
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_4e
    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    iget-object v7, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v7

    :try_start_5e
    const-string/jumbo v6, "ss"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "DeviceIdleController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SIM_STATE_CHANGED ss ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-get4(Lcom/android/server/DeviceIdleController;)Z

    move-result v6

    if-eqz v6, :cond_49

    const-string/jumbo v6, "LOADED"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_99

    const-string/jumbo v6, "ABSENT"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    :cond_99
    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-wrap1(Lcom/android/server/DeviceIdleController;)Z

    move-result v1

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Z

    move-result v6

    if-eq v6, v1, :cond_49

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6, v1}, Lcom/android/server/DeviceIdleController;->-set0(Lcom/android/server/DeviceIdleController;Z)Z

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-get2(Lcom/android/server/DeviceIdleController;)Z

    move-result v6

    if-eqz v6, :cond_c7

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-wrap3(Lcom/android/server/DeviceIdleController;)V

    :goto_b9
    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-wrap4(Lcom/android/server/DeviceIdleController;)V

    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-wrap5(Lcom/android/server/DeviceIdleController;)V
    :try_end_c3
    .catchall {:try_start_5e .. :try_end_c3} :catchall_c4

    goto :goto_49

    :catchall_c4
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_c7
    :try_start_c7
    iget-object v6, p0, Lcom/android/server/DeviceIdleController$2;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v6}, Lcom/android/server/DeviceIdleController;->-wrap2(Lcom/android/server/DeviceIdleController;)Z
    :try_end_cc
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_c4

    goto :goto_b9

    :catch_cd
    move-exception v2

    goto/16 :goto_49
.end method
