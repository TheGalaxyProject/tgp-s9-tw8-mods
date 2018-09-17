.class Lcom/android/server/SdpManagerService$SdpHandler;
.super Landroid/os/Handler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "SdpManagerService.Handler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v0, "SdpHandler"

    invoke-static {p1, v0}, Lcom/android/server/SdpManagerService;->-wrap10(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    const/4 v13, -0x1

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const-string/jumbo v12, "SdpHandler"

    invoke-static {v11, v12}, Lcom/android/server/SdpManagerService;->-wrap10(Lcom/android/server/SdpManagerService;Ljava/lang/String;)I

    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_136

    :cond_e
    :goto_e
    return-void

    :pswitch_f
    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->-wrap4(Lcom/android/server/SdpManagerService;)Z

    move-result v11

    if-nez v11, :cond_18

    return-void

    :cond_18
    const-string/jumbo v11, "SdpManagerService.Handler"

    const-string/jumbo v12, "received MSG_SYSTEM_READY. "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->-wrap31(Lcom/android/server/SdpManagerService;)V

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->-wrap33(Lcom/android/server/SdpManagerService;)V

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->-get8(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap1(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->-get8(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap0(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    move-result v11

    if-eqz v11, :cond_49

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->-get8(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->-wrap3(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    :cond_49
    const/4 v3, 0x0

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v5

    :goto_54
    if-ge v3, v5, :cond_73

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->-get7(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11, v2}, Lcom/android/server/SdpManagerService;->-wrap15(Lcom/android/server/SdpManagerService;I)V

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v11, v2}, Lcom/android/server/SdpManagerService;->boot(I)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_54

    :cond_73
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->isSkmmSupported()Z

    move-result v11

    if-eqz v11, :cond_8b

    const-string/jumbo v11, "SdpManagerService.Handler"

    const-string/jumbo v12, "Init SKMM library beforehand for better performance."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->-get2(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/knox/container/util/KeyManagementUtil;->initSkmmLibrary()Z

    :cond_8b
    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/SdpManagerService;->-set0(Lcom/android/server/SdpManagerService;Z)Z

    goto/16 :goto_e

    :pswitch_93
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v11, v10}, Lcom/android/server/SdpManagerService;->onMasterKeyEvictionRequired(I)V

    goto/16 :goto_e

    :pswitch_9c
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v11, v10, v7}, Lcom/android/server/SdpManagerService;->onMasterKeyDerivationRequired(II)V

    goto/16 :goto_e

    :pswitch_a7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string/jumbo v11, "userId"

    invoke-virtual {v1, v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "pkgName"

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get0()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11, v8, v10}, Lcom/android/server/SdpManagerService;->-wrap19(Lcom/android/server/SdpManagerService;Ljava/lang/String;I)V

    goto/16 :goto_e

    :pswitch_c6
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11, v10}, Lcom/android/server/SdpManagerService;->-wrap21(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_e

    :pswitch_cf
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11, v10}, Lcom/android/server/SdpManagerService;->-wrap22(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_e

    :pswitch_d8
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11, v10}, Lcom/android/server/SdpManagerService;->-wrap20(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_e

    :pswitch_e1
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11, v10}, Lcom/android/server/SdpManagerService;->-wrap20(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_e

    :pswitch_ea
    iget v10, p1, Landroid/os/Message;->arg1:I

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11, v10}, Lcom/android/server/SdpManagerService;->-wrap16(Lcom/android/server/SdpManagerService;I)V

    goto/16 :goto_e

    :pswitch_f3
    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {v11}, Lcom/android/server/SdpManagerService;->-wrap17(Lcom/android/server/SdpManagerService;)V

    goto/16 :goto_e

    :pswitch_fa
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_e

    const-string/jumbo v11, "credential"

    invoke-static {}, Lcom/android/server/SdpManagerService;->-get0()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "type"

    invoke-virtual {v1, v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v11, "userId"

    invoke-virtual {v1, v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v11, v0, v9, v10}, Lcom/android/server/SdpManagerService;->doSyntheticPasswordFullMigration(Ljava/lang/String;II)Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_e

    :pswitch_120
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_e

    instance-of v11, v6, Ljava/lang/Integer;

    if-eqz v11, :cond_e

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v11, v10}, Lcom/android/server/SdpManagerService;->clearLegacyResetStatus(I)V

    goto/16 :goto_e

    nop

    :pswitch_data_136
    .packed-switch 0x1
        :pswitch_f
        :pswitch_93
        :pswitch_9c
        :pswitch_a7
        :pswitch_c6
        :pswitch_cf
        :pswitch_d8
        :pswitch_e1
        :pswitch_ea
        :pswitch_f3
        :pswitch_fa
        :pswitch_120
    .end packed-switch
.end method
