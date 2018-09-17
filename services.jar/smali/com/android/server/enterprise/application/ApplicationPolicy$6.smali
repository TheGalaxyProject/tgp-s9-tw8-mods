.class Lcom/android/server/enterprise/application/ApplicationPolicy$6;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerPackageChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap5(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->getSendingUserId()I

    move-result v9

    if-eqz v4, :cond_94

    :try_start_10
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_94

    if-eqz v3, :cond_94

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_94

    const-string/jumbo v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c6

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get1(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v7

    const-string/jumbo v10, "android.intent.extra.REPLACING"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_45
    :goto_45
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_95

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v4, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Lcom/samsung/android/knox/application/ManagedAppInfo;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v10

    if-eqz v10, :cond_45

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string/jumbo v11, "applicationUninstallationCount"

    invoke-static {v10, v5, v4, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap20(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_45

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap1(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_45

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v10, v4, v5, v11, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap2(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/high16 v11, 0x1000000

    const/4 v12, 0x0

    invoke-static {v10, v4, v5, v11, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap2(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z

    const-string/jumbo v10, "ApplicationPolicy"

    const-string/jumbo v11, "App removed, clear masks"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_8f} :catch_90

    goto :goto_45

    :catch_90
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_94
    :goto_94
    return-void

    :cond_95
    if-nez v2, :cond_aa

    :try_start_97
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap0(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_aa

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap16(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V

    :cond_aa
    if-nez v2, :cond_b1

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10, v4, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap12(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    :cond_b1
    :goto_b1
    const-string/jumbo v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_94

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v11, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v11, v4, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap6(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap18(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;I)V

    goto :goto_94

    :cond_c6
    const-string/jumbo v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e1

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap0(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v10

    if-nez v10, :cond_b1

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10, v4, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap15(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    goto :goto_b1

    :cond_e1
    const-string/jumbo v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14d

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get1(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_f8
    :goto_f8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_128

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v4, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Lcom/samsung/android/knox/application/ManagedAppInfo;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v10

    if-eqz v10, :cond_f8

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string/jumbo v11, "applicationInstallationCount"

    invoke-static {v10, v5, v4, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap20(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "ApplicationPolicy"

    const-string/jumbo v11, "App install count incremented"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f8

    :cond_128
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap1(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_135

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap21(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V

    :cond_135
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap0(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v10

    if-nez v10, :cond_146

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10, v4, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap15(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    :cond_146
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10, v4, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap11(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    goto/16 :goto_b1

    :cond_14d
    const-string/jumbo v10, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b1

    const-string/jumbo v10, "com.sec.enterprise.knox.express"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b1

    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$6;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap7(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    :try_end_164
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_164} :catch_90

    goto/16 :goto_b1
.end method
