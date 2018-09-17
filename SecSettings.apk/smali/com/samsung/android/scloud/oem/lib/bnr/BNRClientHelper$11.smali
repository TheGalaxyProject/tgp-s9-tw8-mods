.class Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;
.super Ljava/lang/Object;
.source "BNRClientHelper.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$SyncServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->setServiceHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 29

    const-string/jumbo v21, "is_success"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", i = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "BNRClientHelper"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/16 v17, 0x0

    const/16 v6, 0x64

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x0

    if-nez v10, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearPrerestoredData(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$4(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V

    :cond_54
    :goto_54
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", o = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "BNRClientHelper"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$5(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v21

    const-string/jumbo v22, "is_success"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$5(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v21

    return-object v21

    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v21

    const/16 v22, 0x64

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getFileMeta(Landroid/content/Context;II)Ljava/util/ArrayList;

    move-result-object v18

    if-nez v18, :cond_179

    :cond_b8
    if-nez v18, :cond_19c

    :cond_ba
    if-nez v18, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_1f9

    :goto_c8
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", ProcessedFileList size : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "BNRClientHelper"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_166

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "_scloud_origin"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    # invokes: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->fileCopy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v9, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$11(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_208

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "_scloud_dwnload"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    # invokes: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->fileCopy(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2, v9}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$11(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_10d

    const/4 v11, 0x0

    :cond_166
    :goto_166
    if-nez v11, :cond_20b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearPrerestoredData(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$4(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_54

    :cond_179
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-nez v21, :cond_b8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$5(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v21

    const-string/jumbo v22, "is_success"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mResult:Landroid/os/Bundle;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$5(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Landroid/os/Bundle;

    move-result-object v21

    return-object v21

    :cond_19c
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    add-int v17, v17, v21

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1a6
    :goto_1a6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_ba

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v21

    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v8}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->getisExternal()Z

    move-result v23

    const-string/jumbo v24, "restore"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->getFilePath(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1a6

    const-string/jumbo v21, "_scloud_dwnload"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1a6

    const-string/jumbo v21, "_scloud_origin"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1a6

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a6

    :cond_1f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/scloud/oem/lib/FileSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/FileSavedList;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$10(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)V

    goto/16 :goto_c8

    :cond_208
    const/4 v11, 0x0

    goto/16 :goto_166

    :cond_20b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v21

    if-eqz v21, :cond_2c8

    :goto_217
    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", ProcessedKeyList size : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v22, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v22 .. v22}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "BNRClientHelper"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-gez v21, :cond_2d7

    :cond_25e
    :goto_25e
    if-eqz v11, :cond_54

    if-eqz v12, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_270
    :goto_270
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3a4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    new-instance v14, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v22, "_scloud_origin"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v22, "_scloud_dwnload"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v14, :cond_326

    :cond_2b4
    :goto_2b4
    if-nez v7, :cond_365

    :cond_2b6
    :goto_2b6
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_270

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_270

    :cond_2c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/scloud/oem/lib/ItemSavedList;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/scloud/oem/lib/ItemSavedList;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$13(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Ljava/util/List;)V

    goto/16 :goto_217

    :cond_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mClient:Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$1(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v23, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v23 .. v23}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v11}, Lcom/samsung/android/scloud/oem/lib/bnr/ISCloudBNRClient;->restoreComplete(Landroid/content/Context;[Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_25e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    # invokes: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->clearPrerestoredData(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$4(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_25e

    :cond_326
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2b4

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", delete :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_scloud_origin"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "BNRClientHelper"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b4

    :cond_365
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_2b6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", delete :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "_scloud_dwnload"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "BNRClientHelper"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2b6

    :cond_3a4
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3a8
    :goto_3a8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3f0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v13, :cond_3a8

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3a8

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    new-instance v21, Ljava/lang/StringBuilder;

    const-string/jumbo v22, "303, "

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ", delete :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "BNRClientHelper"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a8

    :cond_3f0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BackupMetaManager;->setFirstBackup(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedKeyList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$12(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper$11;->this$0:Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;

    move-object/from16 v21, v0

    # getter for: Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->mProcessedFileList:Ljava/util/List;
    invoke-static/range {v21 .. v21}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;->access$9(Lcom/samsung/android/scloud/oem/lib/bnr/BNRClientHelper;)Ljava/util/List;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    goto/16 :goto_54
.end method
