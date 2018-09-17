.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
.super Landroid/os/Handler;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCSMHandler"
.end annotation


# static fields
.field public static final MSG_CLEAN_INFO:I = 0x3

.field public static final MSG_CLEAN_USER_INFO:I = 0x1

.field public static final MSG_CONTAINER_LOCK_STATUS_UPDATE:I = 0x9

.field public static final MSG_LOAD_ADMINS:I = 0x2

.field public static final MSG_LOAD_PLUGINS:I = 0x4

.field public static final MSG_LOAD_WHITELIST_AND_EXEMPT_APPS:I = 0x5

.field public static final MSG_LOCK_STATUS_UPDATE:I = 0x7

.field public static final MSG_PRE_ADMIN_REMOVED:I = 0xa

.field public static final MSG_REINSTALL_CA_CERT:I = 0x8

.field public static final MSG_SYNC_UP_DATA:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 72

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v63, v0

    packed-switch v63, :pswitch_data_10b8

    :cond_9
    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    const/16 v45, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    const-string/jumbo v63, "adminUid"

    const/16 v64, 0x0

    aput-object v63, v46, v64

    const/16 v63, 0x1

    move/from16 v0, v63

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v47, v0

    const/16 v63, 0x0

    aput-object v5, v47, v63

    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get6(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v63

    const-string/jumbo v64, "UniversalCredentialEnforcedLockTypeTable"

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v46

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_47} :catch_68

    move-result v45

    :cond_48
    :goto_48
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "performPreAdminCleanup - Enforce Lock Type status- "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :catch_68
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get0()Z

    move-result v63

    if-eqz v63, :cond_48

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "performPreAdminCleanup - Exception delete"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    :pswitch_8f
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_CLEAN_USER_INFO block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v54, v0

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "userId - "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v50

    if-eqz v50, :cond_f5

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "notifyChangeToPlugin is called for user removed..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_ce
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v63, "userId"

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v63, 0x0

    const/16 v64, 0xb

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-object/from16 v0, v50

    move/from16 v1, v54

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->removeEnforcedLockTypeNotification(I)V
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_f5} :catch_10e

    :cond_f5
    :goto_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v54

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap10(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_CLEAN_USER_INFO block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :catch_10e
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    :pswitch_12f
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_ADMINS block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    if-eqz v63, :cond_199

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_199

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "adminIds size- "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v65, v0

    invoke-static/range {v65 .. v65}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v65

    invoke-interface/range {v65 .. v65}, Ljava/util/List;->size()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_199} :catch_1c6

    :cond_199
    :goto_199
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_ADMINS block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    const/16 v64, 0x4

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    :catch_1c6
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_199

    :pswitch_1cb
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_CLEAN_INFO block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1d5
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, [I

    if-eqz v13, :cond_5b2

    array-length v0, v13

    move/from16 v63, v0

    if-lez v63, :cond_5b2

    const/16 v63, 0x0

    array-length v0, v13

    move/from16 v65, v0

    move/from16 v64, v63

    :goto_1e9
    move/from16 v0, v64

    move/from16 v1, v65

    if-ge v0, v1, :cond_5b2

    aget v63, v13, v64

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v63

    invoke-static/range {v63 .. v63}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v54

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "uid - "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string/jumbo v67, ", userId-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_284

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v66, "UCS admin uninstall. Start cleaning...."

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v66

    move-object/from16 v0, v63

    move/from16 v1, v66

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap6(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v66

    move-object/from16 v0, v63

    move/from16 v1, v66

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_44f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "Active plugin is removed. Perform clean up for uid-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string/jumbo v67, ", pluginPkg-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_423

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_423

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2f8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_431

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "notifyLicenseStatus expire - adminUid-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v63

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v66

    move-object/from16 v0, v63

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    if-eqz v42, :cond_2f8

    const/16 v63, 0x0

    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v66, v0

    :goto_344
    move/from16 v0, v63

    move/from16 v1, v66

    if-ge v0, v1, :cond_2f8

    aget-object v41, v42, v63

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "Sending event update to package "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v39, Landroid/content/Intent;

    const-string/jumbo v67, "com.samsung.android.knox.intent.action.UCM_NOTIFY_EVENT"

    move-object/from16 v0, v39

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v67, "event_id"

    const/16 v68, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v67, "package_name"

    move-object/from16 v0, v19

    move-object/from16 v1, v67

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_3a4
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_3a4} :catch_41d

    :try_start_3a4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v67

    const-string/jumbo v68, "Sending intent with UCSM Other permission..."

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v67

    new-instance v68, Landroid/os/UserHandle;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v69

    invoke-static/range {v69 .. v69}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v69

    invoke-direct/range {v68 .. v69}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v69, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    move-object/from16 v0, v67

    move-object/from16 v1, v39

    move-object/from16 v2, v68

    move-object/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v67, v0

    invoke-static/range {v67 .. v67}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v67

    new-instance v68, Landroid/os/UserHandle;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v69

    invoke-static/range {v69 .. v69}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v69

    invoke-direct/range {v68 .. v69}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v69, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    move-object/from16 v0, v67

    move-object/from16 v1, v39

    move-object/from16 v2, v68

    move-object/from16 v3, v69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f8
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_3f8} :catch_3fc

    :goto_3f8
    add-int/lit8 v63, v63, 0x1

    goto/16 :goto_344

    :catch_3fc
    move-exception v48

    :try_start_3fd
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v67

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v69, "  Exception se-"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41c
    .catch Ljava/lang/Exception; {:try_start_3fd .. :try_end_41c} :catch_41d

    goto :goto_3f8

    :catch_41d
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    :cond_423
    :try_start_423
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v66, "No admin found related to package..."

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V

    :cond_44f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_4c9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "Calling performWhitelistAppCleanup for userId-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string/jumbo v67, ", packageName-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v54

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap11(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_543

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "Calling performExemptedAppCleanup for userId-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v66

    const-string/jumbo v67, ", packageName-"

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    move-object/from16 v0, v63

    move/from16 v1, v54

    move-object/from16 v2, v40

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_543
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v50

    if-eqz v50, :cond_587

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v66, "notifyChangeToPlugin is called for package uninstalled..."

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_557
    .catch Ljava/lang/Exception; {:try_start_423 .. :try_end_557} :catch_41d

    :try_start_557
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v63, "userId"

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v63, "packageUid"

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Integer;->intValue()I

    move-result v66

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v63, 0x0

    const/16 v66, 0xc

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v66

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_587
    .catch Ljava/lang/Exception; {:try_start_557 .. :try_end_587} :catch_58d

    :cond_587
    :goto_587
    add-int/lit8 v63, v64, 0x1

    move/from16 v64, v63

    goto/16 :goto_1e9

    :catch_58d
    move-exception v20

    :try_start_58e
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v66, Ljava/lang/StringBuilder;

    invoke-direct/range {v66 .. v66}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v67, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v66 .. v67}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v66

    move-object/from16 v0, v66

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v66

    invoke-virtual/range {v66 .. v66}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, v63

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_587

    :cond_5b2
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_CLEAN_INFO block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5bc
    .catch Ljava/lang/Exception; {:try_start_58e .. :try_end_5bc} :catch_41d

    goto/16 :goto_9

    :pswitch_5be
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_PLUGINS block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap0(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_73f

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v63

    if-lez v63, :cond_73f

    const/16 v40, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :cond_5e1
    :goto_5e1
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_6e6

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/content/ContentValues;

    const-string/jumbo v63, "storagePackageName"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v63, "appUid"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    if-eqz v40, :cond_607

    if-nez v32, :cond_65f

    :cond_607
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "parsing error, continue..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_611
    .catch Ljava/lang/Exception; {:try_start_5c8 .. :try_end_611} :catch_612

    goto :goto_5e1

    :catch_612
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_632
    :goto_632
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_PLUGINS block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    const/16 v64, 0x5

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    move-object/from16 v0, v63

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9

    :cond_65f
    :try_start_65f
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I
    :try_end_662
    .catch Ljava/lang/Exception; {:try_start_65f .. :try_end_662} :catch_612

    move-result v12

    const/16 v63, 0x3e8

    move/from16 v0, v63

    if-eq v12, v0, :cond_5e1

    if-eqz v12, :cond_5e1

    :try_start_66b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_5e1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Caching plugin app id-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", packageName-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c2
    .catch Ljava/lang/Exception; {:try_start_66b .. :try_end_6c2} :catch_6c4

    goto/16 :goto_5e1

    :catch_6c4
    move-exception v20

    :try_start_6c5
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e1

    :cond_6e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_6f8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_632

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Plugin ID = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", Plugin package = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f8

    :cond_73f
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "No active plugin found"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_749
    .catch Ljava/lang/Exception; {:try_start_6c5 .. :try_end_749} :catch_612

    goto/16 :goto_632

    :pswitch_74b
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_8d7

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v63

    if-lez v63, :cond_8d7

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "getAllWhitelistedApps - Size-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :cond_78d
    :goto_78d
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_87e

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/content/ContentValues;

    const-string/jumbo v63, "appPackage"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v63, "appUid"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    if-eqz v40, :cond_7b3

    if-nez v32, :cond_7ea

    :cond_7b3
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "parsing error, continue..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7bd
    .catch Ljava/lang/Exception; {:try_start_755 .. :try_end_7bd} :catch_7be

    goto :goto_78d

    :catch_7be
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception -"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7de
    :goto_7de
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_7ea
    :try_start_7ea
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I
    :try_end_7ed
    .catch Ljava/lang/Exception; {:try_start_7ea .. :try_end_7ed} :catch_7be

    move-result v12

    :try_start_7ee
    const-string/jumbo v63, "*"

    move-object/from16 v0, v40

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_78d

    const/16 v63, 0x3e8

    move/from16 v0, v63

    if-eq v12, v0, :cond_78d

    if-eqz v12, :cond_78d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_78d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Caching WhiteList app id-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", packageName-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85a
    .catch Ljava/lang/Exception; {:try_start_7ee .. :try_end_85a} :catch_85c

    goto/16 :goto_78d

    :catch_85c
    move-exception v20

    :try_start_85d
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_78d

    :cond_87e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_890
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_8e1

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "WHITELIST App UID = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", App package = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_890

    :cond_8d7
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "getAllWhitelistedApps DB is empty..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap1(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_a44

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v63

    if-lez v63, :cond_a44

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "getAllExemptedApps - Size-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x0

    const/4 v12, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v62

    :cond_919
    :goto_919
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_9eb

    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Landroid/content/ContentValues;

    if-nez v60, :cond_932

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "value is null, continue..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_919

    :cond_932
    const-string/jumbo v63, "appPackage"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v63, "appUid"

    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v32

    if-eqz v40, :cond_94c

    if-nez v32, :cond_957

    :cond_94c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "parsing error, continue..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_919

    :cond_957
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I
    :try_end_95a
    .catch Ljava/lang/Exception; {:try_start_85d .. :try_end_95a} :catch_7be

    move-result v12

    :try_start_95b
    const-string/jumbo v63, "com.samsung.knox.virtual.wifi"

    move-object/from16 v0, v40

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_919

    const/16 v63, 0x3e8

    move/from16 v0, v63

    if-eq v12, v0, :cond_919

    if-eqz v12, :cond_919

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_919

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v64

    move-object/from16 v0, v63

    move-object/from16 v1, v64

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Caching Exempted app id-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", packageName-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c7
    .catch Ljava/lang/Exception; {:try_start_95b .. :try_end_9c7} :catch_9c9

    goto/16 :goto_919

    :catch_9c9
    move-exception v20

    :try_start_9ca
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_919

    :cond_9eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_9fd
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_7de

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "EXEPMT-> App UID = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", App package = "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9fd

    :cond_a44
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "getAllExemptedApps DB is empty..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4e
    .catch Ljava/lang/Exception; {:try_start_9ca .. :try_end_a4e} :catch_7be

    goto/16 :goto_7de

    :pswitch_a50
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_SYNC_UP_DATA block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_a5a
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v50

    if-eqz v50, :cond_b27

    const/16 v63, 0x0

    const/16 v64, 0x11

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_b27

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_b27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v63

    const-string/jumbo v64, "user"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserManager;

    invoke-virtual/range {v36 .. v36}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v59

    invoke-interface/range {v59 .. v59}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v58

    :cond_aa1
    :goto_aa1
    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_e11

    invoke-interface/range {v58 .. v58}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v57

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v54, v0

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Valid userid-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-eqz v63, :cond_aa1

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Found userid on cache-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-interface {v11, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_b06
    .catch Ljava/lang/Exception; {:try_start_a5a .. :try_end_b06} :catch_b07

    goto :goto_aa1

    :catch_b07
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b27
    new-instance v53, Ljava/util/ArrayList;

    invoke-direct/range {v53 .. v53}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v44

    :try_start_b30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get3(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b3e
    :goto_b3e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_bc6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA adminId-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v63

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    if-nez v42, :cond_e68

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_b3e

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA remove adminid : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v53

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ba5
    .catch Ljava/lang/Exception; {:try_start_b30 .. :try_end_ba5} :catch_ba6

    goto :goto_b3e

    :catch_ba6
    move-exception v21

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc6
    :try_start_bc6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get2(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_bd8
    :goto_bd8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_c94

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Ljava/lang/String;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA plugin id -"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA plugin package -"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v63

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    if-nez v42, :cond_ed9

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_bd8

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA remove plugin : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c72
    .catch Ljava/lang/Exception; {:try_start_bc6 .. :try_end_c72} :catch_c74

    goto/16 :goto_bd8

    :catch_c74
    move-exception v22

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c94
    :try_start_c94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get4(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_ca6
    :goto_ca6
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_d3c

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA exempt app id -"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v63

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    if-nez v42, :cond_ca6

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_ca6

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA remove exempt app : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d1b
    .catch Ljava/lang/Exception; {:try_start_c94 .. :try_end_d1b} :catch_d1c

    goto :goto_ca6

    :catch_d1c
    move-exception v23

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d3c
    :try_start_d3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get9(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v63

    invoke-virtual/range {v63 .. v63}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v63

    invoke-interface/range {v63 .. v63}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_d4e
    :goto_d4e
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_de4

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA Whitelist app id -"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get7(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v63

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v64

    invoke-virtual/range {v63 .. v64}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    if-nez v42, :cond_d4e

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v63

    if-nez v63, :cond_d4e

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "MSG_SYNC_UP_DATA remove Whitelist app : "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_dc3
    .catch Ljava/lang/Exception; {:try_start_d3c .. :try_end_dc3} :catch_dc4

    goto :goto_d4e

    :catch_dc4
    move-exception v24

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "Exception-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de4
    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v63

    if-lez v63, :cond_f7c

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v63

    move/from16 v0, v63

    new-array v15, v0, [I

    const/16 v29, 0x0

    invoke-interface/range {v53 .. v53}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_df8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_f51

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    if-nez v30, :cond_f28

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "id is null, continue..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_df8

    :cond_e11
    :try_start_e11
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v56

    :goto_e15
    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->hasNext()Z

    move-result v63

    if-eqz v63, :cond_b27

    invoke-interface/range {v56 .. v56}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/Integer;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "InValid userid-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    const/16 v64, 0x1

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Integer;->intValue()I

    move-result v63

    move/from16 v0, v63

    iput v0, v14, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_e67
    .catch Ljava/lang/Exception; {:try_start_e11 .. :try_end_e67} :catch_b07

    goto :goto_e15

    :cond_e68
    :try_start_e68
    const-string/jumbo v63, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-eqz v63, :cond_e8e

    const-string/jumbo v63, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-nez v63, :cond_e9a

    :cond_e8e
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "  Admin has valid permission. Processing further..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b3e

    :cond_e9a
    const-string/jumbo v63, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-eqz v63, :cond_e8e

    const-string/jumbo v63, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-eqz v63, :cond_e8e

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "  Admin don\'t has UCS permission..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v64

    invoke-static/range {v63 .. v64}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-wrap12(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    :try_end_ed7
    .catch Ljava/lang/Exception; {:try_start_e68 .. :try_end_ed7} :catch_ba6

    goto/16 :goto_b3e

    :cond_ed9
    :try_start_ed9
    const-string/jumbo v63, "com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-eqz v63, :cond_eff

    const-string/jumbo v63, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v64

    move-object/from16 v0, v44

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v63

    if-nez v63, :cond_f0b

    :cond_eff
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bd8

    :cond_f0b
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "  Agent don\'t has UCS PLUGIN permission. Notifying admin.."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    const/16 v64, 0x2

    move-object/from16 v0, v63

    move/from16 v1, v64

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyLicenseStatus(ILjava/lang/String;)Z
    :try_end_f26
    .catch Ljava/lang/Exception; {:try_start_ed9 .. :try_end_f26} :catch_c74

    goto/16 :goto_bd8

    :cond_f28
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "adding clean app id-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v63

    aput v63, v15, v29

    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_df8

    :cond_f51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    const/16 v64, 0x3

    invoke-virtual/range {v63 .. v64}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    iput-object v15, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "MSG_SYNC_UP_DATA calling MSG_CLEAN_INFO..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get8(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v63

    move-object/from16 v0, v63

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_f7c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_SYNC_UP_DATA block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_f88
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOCK_STATUS_UPDATE block started****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v50

    if-eqz v50, :cond_fdd

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "notifyChangeToPlugin is called for Lock status update..."

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v63, v0

    invoke-static/range {v63 .. v63}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get5(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v63

    const-string/jumbo v64, "keyguard"

    invoke-virtual/range {v63 .. v64}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/KeyguardManager;

    invoke-virtual/range {v35 .. v35}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v33

    :try_start_fb9
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v63, "userId"

    const/16 v64, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    move/from16 v2, v64

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v33, :cond_fe9

    const/16 v63, 0x0

    const/16 v64, 0xf

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_fdd
    .catch Ljava/lang/Exception; {:try_start_fb9 .. :try_end_fdd} :catch_ff9

    :cond_fdd
    :goto_fdd
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    const-string/jumbo v64, "****MSG_LOCK_STATUS_UPDATE block ended****"

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_fe9
    const/16 v63, 0x0

    const/16 v64, 0x10

    :try_start_fed
    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_ff8
    .catch Ljava/lang/Exception; {:try_start_fed .. :try_end_ff8} :catch_ff9

    goto :goto_fdd

    :catch_ff9
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fdd

    :pswitch_101a
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v50

    if-eqz v50, :cond_9

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v49, v0

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "notifyChangeToPlugin is called for container Lock status update containerId-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    const-string/jumbo v65, ", status-"

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_105a
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v63, "userId"

    move-object/from16 v0, v19

    move-object/from16 v1, v63

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v63, 0x1

    move/from16 v0, v49

    move/from16 v1, v63

    if-eq v0, v1, :cond_10a6

    const/16 v63, 0x0

    const/16 v64, 0x14

    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1082
    .catch Ljava/lang/Exception; {:try_start_105a .. :try_end_1082} :catch_1084

    goto/16 :goto_9

    :catch_1084
    move-exception v20

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-get1()Ljava/lang/String;

    move-result-object v63

    new-instance v64, Ljava/lang/StringBuilder;

    invoke-direct/range {v64 .. v64}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v65, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v64 .. v65}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v64

    move-object/from16 v0, v64

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v64

    invoke-virtual/range {v64 .. v64}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    invoke-static/range {v63 .. v64}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_10a6
    const/16 v63, 0x0

    const/16 v64, 0x15

    :try_start_10aa
    move-object/from16 v0, v50

    move-object/from16 v1, v63

    move/from16 v2, v64

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_10b5
    .catch Ljava/lang/Exception; {:try_start_10aa .. :try_end_10b5} :catch_1084

    goto/16 :goto_9

    nop

    :pswitch_data_10b8
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_12f
        :pswitch_1cb
        :pswitch_5be
        :pswitch_74b
        :pswitch_a50
        :pswitch_f88
        :pswitch_9
        :pswitch_101a
        :pswitch_a
    .end packed-switch
.end method
