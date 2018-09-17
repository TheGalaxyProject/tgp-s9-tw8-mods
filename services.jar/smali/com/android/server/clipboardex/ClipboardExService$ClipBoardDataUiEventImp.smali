.class Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;
.super Ljava/lang/Object;
.source "ClipboardExService.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataUiEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClipBoardDataUiEventImp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;
    }
.end annotation


# instance fields
.field private final mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

.field final synthetic this$0:Lcom/android/server/clipboardex/ClipboardExService;


# direct methods
.method private constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;

    invoke-direct {v0, p0}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp$1;-><init>(Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;)V

    iput-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/clipboardex/ClipboardExService;Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;-><init>(Lcom/android/server/clipboardex/ClipboardExService;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->mBind:Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;

    return-object v0
.end method

.method public removeAll()Z
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string/jumbo v1, "ClipboardExService"

    const-string/jumbo v2, "Remove All"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v1}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v1

    if-lez v1, :cond_33

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v1}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeAll()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_33
    if-eqz v0, :cond_42

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap2(Lcom/android/server/clipboardex/ClipboardExService;I)V

    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap5(Lcom/android/server/clipboardex/ClipboardExService;ILcom/samsung/android/content/clipboard/data/SemClipData;)V

    :cond_42
    iget-object v1, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/clipboardex/ClipboardExService;->-set0(Lcom/android/server/clipboardex/ClipboardExService;Z)Z
    :try_end_48
    .catchall {:try_start_1 .. :try_end_48} :catchall_4a

    monitor-exit p0

    return v0

    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeItem(I)V
    .registers 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_3
    const-string/jumbo v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeItem index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v6}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v6

    if-eqz v6, :cond_a6

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v2

    if-ge p1, v2, :cond_68

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    :goto_47
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v7}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v7

    if-gtz v7, :cond_a4

    :goto_55
    invoke-static {v6, v4}, Lcom/android/server/clipboardex/ClipboardExService;->-set0(Lcom/android/server/clipboardex/ClipboardExService;Z)Z

    :goto_58
    if-eqz v0, :cond_66

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap2(Lcom/android/server/clipboardex/ClipboardExService;I)V

    iget-object v4, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    const/4 v5, 0x2

    invoke-static {v4, v5, v1}, Lcom/android/server/clipboardex/ClipboardExService;->-wrap5(Lcom/android/server/clipboardex/ClipboardExService;ILcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_cc

    :cond_66
    monitor-exit p0

    return-void

    :cond_68
    sub-int v3, p1, v2

    :try_start_6a
    const-string/jumbo v6, "ClipboardExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "data list size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " shared index : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    goto :goto_47

    :cond_a4
    move v4, v5

    goto :goto_55

    :cond_a6
    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v6}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    move-result v0

    iget-object v6, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    iget-object v7, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v7}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v7

    if-lez v7, :cond_cf

    :goto_c8
    invoke-static {v6, v4}, Lcom/android/server/clipboardex/ClipboardExService;->-set0(Lcom/android/server/clipboardex/ClipboardExService;Z)Z
    :try_end_cb
    .catchall {:try_start_6a .. :try_end_cb} :catchall_cc

    goto :goto_58

    :catchall_cc
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_cf
    move v4, v5

    goto :goto_c8
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_e

    :try_start_3
    const-string/jumbo v5, "ClipboardExService"

    const-string/jumbo v6, "ClipboardDataPasteEvent is null."

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_8e

    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    const-string/jumbo v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "selectItem index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_8e

    const/4 v4, 0x0

    :try_start_29
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-virtual {v5}, Lcom/android/server/clipboardex/ClipboardExService;->isKnoxTwoEnabled()Z

    move-result v5

    if-eqz v5, :cond_7e

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    if-ge p1, v0, :cond_4c

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    :goto_47
    invoke-interface {p2, v4}, Landroid/sec/clipboard/IClipboardDataPasteEvent;->onPaste(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_4a} :catch_91
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_4a} :catch_89
    .catchall {:try_start_29 .. :try_end_4a} :catchall_8e

    :goto_4a
    monitor-exit p0

    return-void

    :cond_4c
    sub-int v3, p1, v0

    :try_start_4e
    const-string/jumbo v5, "ClipboardExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "data list size : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " shared index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get9(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v4

    goto :goto_47

    :cond_7e
    iget-object v5, p0, Lcom/android/server/clipboardex/ClipboardExService$ClipBoardDataUiEventImp;->this$0:Lcom/android/server/clipboardex/ClipboardExService;

    invoke-static {v5}, Lcom/android/server/clipboardex/ClipboardExService;->-get3(Lcom/android/server/clipboardex/ClipboardExService;)Landroid/sec/clipboard/data/ClipboardDataMgr;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_87} :catch_91
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_87} :catch_89
    .catchall {:try_start_4e .. :try_end_87} :catchall_8e

    move-result-object v4

    goto :goto_47

    :catch_89
    move-exception v2

    :try_start_8a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_4a

    :catchall_8e
    move-exception v5

    monitor-exit p0

    throw v5

    :catch_91
    move-exception v1

    :try_start_92
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_95
    .catchall {:try_start_92 .. :try_end_95} :catchall_8e

    goto :goto_4a
.end method
