.class Lcom/android/server/enterprise/application/ApplicationPolicy$9;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerUserSwitchedReceiver()V
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

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const-string/jumbo v6, "ApplicationPolicy"

    const-string/jumbo v7, "User switched"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_19

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    :cond_19
    return-void

    :cond_1a
    const-string/jumbo v6, "android.intent.extra.user_handle"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidFromLUID(J)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v5, v6, :cond_2e

    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get5(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;->isPersonaEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_69

    const-string/jumbo v6, "ApplicationPolicy"

    const-string/jumbo v7, "Persona no longer valid removing from cache"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-get0()Ljava/util/Map;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_69
    iget-object v6, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$9;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v6, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-wrap19(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    goto :goto_2e

    :cond_6f
    return-void
.end method
