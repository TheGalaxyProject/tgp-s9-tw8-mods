.class Lcom/android/server/desktopmode/DockManager$6;
.super Ljava/lang/Object;
.source "DockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DockManager;->createDockFotaLib()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DockManager;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DockManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get7(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    move-result-object v0

    if-nez v0, :cond_5b

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/android/server/desktopmode/DockManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "createDockFotaLib"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get14(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    move-result-object v0

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    invoke-direct {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->-set9(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    :cond_29
    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    new-instance v1, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;

    invoke-direct {v1}, Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManager;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/DockManager;->-set5(Lcom/android/server/desktopmode/DockManager;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get13(Lcom/android/server/desktopmode/DockManager;)Lcom/android/server/desktopmode/DockManager$DockMsgState;

    move-result-object v0

    const/16 v1, 0x64

    const/16 v2, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/desktopmode/DockManager$DockMsgState;->setLast(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/DockManager;->-get7(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/DockManager;->-get2(Lcom/android/server/desktopmode/DockManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v2}, Lcom/android/server/desktopmode/DockManager;->-get14(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/desktopmode/DockManager$6;->this$0:Lcom/android/server/desktopmode/DockManager;

    invoke-static {v3}, Lcom/android/server/desktopmode/DockManager;->-get8(Lcom/android/server/desktopmode/DockManager;)Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManager;->requestCreate(Landroid/content/Context;Lcom/samsung/android/lib/dexcontrol/fota/manager/SDCFotaManagerEventHandler;Lcom/samsung/android/lib/dexcontrol/fota/manager/ISDCFotaManagerListener;)V

    :cond_5b
    return-void
.end method
