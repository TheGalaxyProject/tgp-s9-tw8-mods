.class Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KNOXReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "KNOXReceiver : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap0(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string/jumbo v4, "ClipboardExService"

    const-string/jumbo v5, "null"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3a
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get8(Lcom/android/server/clipboardex/ClipboardExService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_50

    const-string/jumbo v4, "ClipboardExService"

    const-string/jumbo v5, "size is null"

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_50
    const/4 v0, 0x0

    :goto_51
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7b

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap4(Lcom/android/server/clipboardex/ClipboardExService;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    :cond_69
    const-string/jumbo v4, "enterprise.container.remove.progress"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    const-string/jumbo v4, "enterprise.container.uninstalled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    const-string/jumbo v4, "com.samsung.knox.clipboard.sync"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v4}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v4

    if-eqz v4, :cond_ed

    const-string/jumbo v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Receive intent from KNOX-clipboard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    if-eqz v4, :cond_b8

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_b8
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    if-eqz v4, :cond_ed

    const-string/jumbo v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " isKnoxTwoEnabled mDataList.size()  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_ed
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap1(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v4

    if-eqz v4, :cond_7b

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap0(Lcom/android/server/clipboardex/ClipboardExService;)Z

    move-result v4

    if-eqz v4, :cond_7b

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get8(Lcom/android/server/clipboardex/ClipboardExService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_144

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_144

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v6, "SWITCHED"

    invoke-virtual {v5, v4, v6}, Lcom/android/server/clipboardex/ClipboardExService;->multiUserMode(ILjava/lang/String;)V

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v4, :cond_144

    const-string/jumbo v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "kiosk container id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    if-eqz v4, :cond_177

    const-string/jumbo v4, "resetOnReoot"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_16e

    const/4 v0, 0x0

    :goto_156
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    if-ge v0, v4, :cond_16e

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_156

    :cond_16e
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    :cond_177
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    if-eqz v4, :cond_7b

    const-string/jumbo v4, "ClipboardExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " isKioskEnabled mDataList.size()  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "resetOnReoot"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1c5

    const/4 v0, 0x0

    :goto_1ad
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v4

    if-ge v0, v4, :cond_1c5

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1ad

    :cond_1c5
    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$KNOXReceiver;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v4}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    goto/16 :goto_7b
.end method
