.class Lcom/android/server/enterprise/firewall/Firewall$2;
.super Ljava/lang/Object;
.source "Firewall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/Firewall;->initializeIpTables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-get3(Lcom/android/server/enterprise/firewall/Firewall;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-get1(Lcom/android/server/enterprise/firewall/Firewall;)Z

    move-result v1

    if-nez v1, :cond_5e

    const/4 v0, 0x0

    :goto_10
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-get4(Lcom/android/server/enterprise/firewall/Firewall;)Z
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_65

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d

    monitor-exit v2

    return-void

    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap2(Lcom/android/server/enterprise/firewall/Firewall;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_25
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-get2(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->flushAllChains()Z

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-get2(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->setRulesStatusAfterReboot()V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap0(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-get2(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->reloadIptablesRules()V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/enterprise/firewall/Firewall;->-set0(Lcom/android/server/enterprise/firewall/Firewall;Z)Z

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v1, v3, v4}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap0(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "IP Tables initialization was done"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/Firewall$2;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->-wrap1(Lcom/android/server/enterprise/firewall/Firewall;)V
    :try_end_63
    .catchall {:try_start_1d .. :try_end_63} :catchall_65

    monitor-exit v2

    return-void

    :catchall_65
    move-exception v1

    monitor-exit v2

    throw v1
.end method
