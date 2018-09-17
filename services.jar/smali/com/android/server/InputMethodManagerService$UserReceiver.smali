.class Lcom/android/server/InputMethodManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 v10, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v8}, Lcom/android/server/InputMethodManagerService;->-wrap7(Lcom/android/server/InputMethodManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    if-eqz v8, :cond_48

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v9}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/InputMethodManagerService;->-wrap6(Lcom/android/server/InputMethodManagerService;I)Z

    move-result v8

    if-eqz v8, :cond_49

    const-string/jumbo v8, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ACTION_USER_PRESENT : current user : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    :goto_48
    return-void

    :cond_49
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v8}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v8

    if-nez v8, :cond_48

    const/4 v3, 0x0

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v8}, Lcom/android/server/InputMethodManagerService;->-wrap7(Lcom/android/server/InputMethodManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    if-eqz v8, :cond_8b

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v8}, Lcom/android/server/InputMethodManagerService;->-wrap7(Lcom/android/server/InputMethodManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    const/4 v2, 0x0

    :goto_69
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_8b

    iget-object v9, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v9, v8}, Lcom/android/server/InputMethodManagerService;->-wrap6(Lcom/android/server/InputMethodManagerService;I)Z

    move-result v8

    if-eqz v8, :cond_96

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_8b
    if-eq v7, v10, :cond_95

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v8}, Lcom/android/server/InputMethodManagerService;->-get1(Lcom/android/server/InputMethodManagerService;)I

    move-result v8

    if-eq v8, v10, :cond_99

    :cond_95
    return-void

    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_99
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_95

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v8, v7}, Lcom/android/server/InputMethodManagerService;->-wrap5(Lcom/android/server/InputMethodManagerService;I)Z

    move-result v6

    const-string/jumbo v8, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ACTION_USER_PRESENT : current user : 0 / Samsung workspace : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / isKnoxProcessRunning : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-nez v6, :cond_e5

    :try_start_d4
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v9, v8, Lcom/android/server/InputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_d9} :catch_ed
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_f6

    :try_start_d9
    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    const/4 v10, 0x0

    invoke-static {v8, v7, v10}, Lcom/android/server/InputMethodManagerService;->-wrap1(Lcom/android/server/InputMethodManagerService;II)Z

    iget-object v8, p0, Lcom/android/server/InputMethodManagerService$UserReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v8, v7}, Lcom/android/server/InputMethodManagerService;->-set1(Lcom/android/server/InputMethodManagerService;I)I
    :try_end_e4
    .catchall {:try_start_d9 .. :try_end_e4} :catchall_ea

    :try_start_e4
    monitor-exit v9
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e5} :catch_ed
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_f6

    :cond_e5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_48

    :catchall_ea
    move-exception v8

    :try_start_eb
    monitor-exit v9

    throw v8
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ed} :catch_ed
    .catchall {:try_start_eb .. :try_end_ed} :catchall_f6

    :catch_ed
    move-exception v1

    :try_start_ee
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_48

    :catchall_f6
    move-exception v8

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method
