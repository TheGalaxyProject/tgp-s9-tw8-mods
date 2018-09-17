.class Lcom/android/server/enterprise/dex/DexPolicy$3;
.super Ljava/lang/Object;
.source "DexPolicy.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/dex/DexPolicy;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/dex/DexPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .registers 6

    const/4 v3, 0x1

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_c8

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_72

    const-string/jumbo v0, "DexPolicyService"

    const-string/jumbo v1, "listner - Dex Enabling"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexDisabled()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->-wrap3(Lcom/android/server/enterprise/dex/DexPolicy;)V

    :cond_22
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyEnforced()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyApplied()Z

    move-result v0

    if-nez v0, :cond_c9

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dex/DexPolicy;->getAdminUidForEthernetOnly()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->-set1(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->-get1(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/server/enterprise/dex/DexPolicy;->-wrap0(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;Z)V

    :cond_4d
    :goto_4d
    const-string/jumbo v0, "DexPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "is Dex Actived : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->-wrap1(Lcom/android/server/enterprise/dex/DexPolicy;)V

    :cond_72
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, v3, :cond_c8

    const-string/jumbo v0, "DexPolicyService"

    const-string/jumbo v1, "listner - Dex Disabling"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->isEthernetOnlyEnforced()Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dex/DexPolicy;->getAdminUidForEthernetOnly()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/server/enterprise/dex/DexPolicy;->-set1(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    iget-object v1, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/dex/DexPolicy;->-get1(Lcom/android/server/enterprise/dex/DexPolicy;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/dex/DexPolicy;->-wrap0(Lcom/android/server/enterprise/dex/DexPolicy;Lcom/samsung/android/knox/ContextInfo;Z)V

    :cond_a3
    const-string/jumbo v0, "DexPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "is Dex Actived : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/dex/DexPolicy;->isDexActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->-wrap2(Lcom/android/server/enterprise/dex/DexPolicy;)V

    :cond_c8
    return-void

    :cond_c9
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$3;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-static {v0, v3}, Lcom/android/server/enterprise/dex/DexPolicy;->-wrap4(Lcom/android/server/enterprise/dex/DexPolicy;Z)V

    goto/16 :goto_4d
.end method
