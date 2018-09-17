.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v0, "PersonaHandler"

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-wrap2(Ljava/lang/String;)I

    return-void
.end method

.method private parseEnterprisedataXml()V
    .registers 10

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->-get16(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    if-eqz v6, :cond_5f

    const/4 v3, 0x0

    :try_start_9
    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-get0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_60

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3a} :catch_6a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_92

    :try_start_3a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->-set3(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->-set5(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_59} :catch_9e
    .catchall {:try_start_3a .. :try_end_59} :catchall_9b

    move-object v3, v4

    :goto_5a
    if-eqz v3, :cond_5f

    :try_start_5c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_90

    :cond_5f
    :goto_5f
    return-void

    :cond_60
    :try_start_60
    const-string/jumbo v6, "PersonaManagerService"

    const-string/jumbo v7, "Failed to find enterprisedata.xml in system container"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_69} :catch_6a
    .catchall {:try_start_60 .. :try_end_69} :catchall_92

    goto :goto_5a

    :catch_6a
    move-exception v0

    :goto_6b
    :try_start_6b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catchall {:try_start_6b .. :try_end_88} :catchall_92

    if-eqz v3, :cond_5f

    :try_start_8a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_8e

    goto :goto_5f

    :catch_8e
    move-exception v0

    goto :goto_5f

    :catch_90
    move-exception v0

    goto :goto_5f

    :catchall_92
    move-exception v6

    :goto_93
    if-eqz v3, :cond_98

    :try_start_95
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99

    :cond_98
    :goto_98
    throw v6

    :catch_99
    move-exception v0

    goto :goto_98

    :catchall_9b
    move-exception v6

    move-object v3, v4

    goto :goto_93

    :catch_9e
    move-exception v0

    move-object v3, v4

    goto :goto_6b
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 59

    const-string/jumbo v53, "PersonaHandler"

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap2(Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v53, v0

    sparse-switch v53, :sswitch_data_a14

    const-string/jumbo v53, "PersonaManagerService"

    const-string/jumbo v54, "msg : ignore unknown message"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    :goto_18
    return-void

    :sswitch_19
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/Bundle;

    const-string/jumbo v53, "type"

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    const-string/jumbo v53, "flag"

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v53, "uid"

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v48

    const-string/jumbo v53, "pid"

    const/16 v54, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v36

    invoke-static/range {v48 .. v48}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v43

    move/from16 v2, v19

    move/from16 v3, v48

    move/from16 v4, v51

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->-wrap12(Lcom/android/server/pm/PersonaManagerService;ZIII)V

    goto :goto_18

    :sswitch_6b
    const-string/jumbo v53, "PersonaManagerService"

    const-string/jumbo v54, "MSG_BOOT_LOAD_PERSONA_SYSTEMREADY is called..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-set2(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    new-instance v54, Lcom/android/server/pm/PersonaLegacyStateMonitor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v55, v0

    invoke-static/range {v55 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v55

    invoke-direct/range {v54 .. v55}, Lcom/android/server/pm/PersonaLegacyStateMonitor;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v54

    move-object/from16 v1, v53

    iput-object v0, v1, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    const/16 v54, 0x1

    invoke-static/range {v53 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-wrap5(Lcom/android/server/pm/PersonaManagerService;Z)Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_b1
    :goto_b1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_315

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/samsung/android/knox/SemPersonaInfo;

    if-eqz v34, :cond_b1

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    move/from16 v53, v0

    if-nez v53, :cond_b1

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    move/from16 v53, v0

    if-nez v53, :cond_b1

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->setupComplete:Z

    move/from16 v53, v0

    if-eqz v53, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v53

    if-eqz v53, :cond_28e

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v53, v0

    if-eqz v53, :cond_f7

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->isEmpty()Z

    move-result v53

    if-eqz v53, :cond_106

    :cond_f7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v54, v0

    invoke-static/range {v53 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-wrap15(Lcom/android/server/pm/PersonaManagerService;I)V

    :cond_106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_28e

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Startiing FOTA for persona "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v34

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v55, v0

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get7(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v54

    monitor-enter v54

    const/16 v53, 0x1

    :try_start_149
    move/from16 v0, v53

    move-object/from16 v1, v34

    iput-boolean v0, v1, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    const-string/jumbo v53, "PersonaManagerService"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v56, "PMS systemReady: setting upgradeInProgress for ContainerId = "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v34

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string/jumbo v56, "; pi.upgradeInProgress = "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->upgradeInProgress:Z

    move/from16 v56, v0

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get9(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v53

    move-object/from16 v0, v34

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v55, v0

    move-object/from16 v0, v53

    move/from16 v1, v55

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_19d
    .catchall {:try_start_149 .. :try_end_19d} :catchall_2cc

    monitor-exit v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get16(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v53

    if-eqz v53, :cond_21f

    const/16 v23, 0x0

    :try_start_1ac
    const-string/jumbo v53, "PersonaManagerService"

    const-string/jumbo v54, "reading from xml resource for fota"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Ljava/io/File;

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->-get0()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, "enterprisedata.xml"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v18

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v53

    if-eqz v53, :cond_2cf

    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e5
    .catch Ljava/lang/Exception; {:try_start_1ac .. :try_end_1e5} :catch_2da
    .catchall {:try_start_1ac .. :try_end_1e5} :catchall_307

    :try_start_1e5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v28

    const/16 v53, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    move-object/from16 v2, v53

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v16, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-set3(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-static/range {v53 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-set5(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_218} :catch_a0e
    .catchall {:try_start_1e5 .. :try_end_218} :catchall_a09

    move-object/from16 v23, v24

    :goto_21a
    if-eqz v23, :cond_21f

    :try_start_21c
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_21f} :catch_304

    :cond_21f
    :goto_21f
    const/16 v17, 0x1

    :try_start_221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get10(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v53

    const-string/jumbo v54, "com.google.android.webview"

    move-object/from16 v0, v34

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v55, v0

    const/16 v56, 0x0

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v56

    move/from16 v3, v55

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-nez v6, :cond_246

    const/16 v17, 0x0

    :cond_246
    const-string/jumbo v53, "PersonaManagerService"

    const-string/jumbo v54, "Webview package is in Knox container"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24f
    .catch Ljava/lang/Exception; {:try_start_221 .. :try_end_24f} :catch_310

    :goto_24f
    if-nez v17, :cond_26c

    const-string/jumbo v53, "PersonaManagerService"

    const-string/jumbo v54, "Webview package is not in Knox container, hence install that package"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    move/from16 v54, v0

    const-string/jumbo v55, "com.google.android.webview"

    invoke-static/range {v53 .. v55}, Lcom/android/server/pm/PersonaManagerService;->-wrap3(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I

    :cond_26c
    move-object/from16 v0, v34

    iget-boolean v0, v0, Lcom/samsung/android/knox/SemPersonaInfo;->isBBCContainer:Z

    move/from16 v53, v0

    if-eqz v53, :cond_281

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap13(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V

    :cond_281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-static {v0, v1, v9}, Lcom/android/server/pm/PersonaManagerService;->-wrap11(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;Ljava/util/List;)V

    :cond_28e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v53

    if-eqz v53, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v54

    const-string/jumbo v55, "fwversion"

    invoke-virtual/range {v54 .. v55}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    if-eqz v53, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap20(Lcom/android/server/pm/PersonaManagerService;Lcom/samsung/android/knox/SemPersonaInfo;)V

    goto/16 :goto_b1

    :catchall_2cc
    move-exception v53

    monitor-exit v54

    throw v53

    :cond_2cf
    :try_start_2cf
    const-string/jumbo v53, "PersonaManagerService"

    const-string/jumbo v54, "Failed to find enterprisedata.xml in system container"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d8
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_2d8} :catch_2da
    .catchall {:try_start_2cf .. :try_end_2d8} :catchall_307

    goto/16 :goto_21a

    :catch_2da
    move-exception v15

    :goto_2db
    :try_start_2db
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v53, "PersonaManagerService"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Failed to parse enterprisedata - Exception: "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fa
    .catchall {:try_start_2db .. :try_end_2fa} :catchall_307

    if-eqz v23, :cond_21f

    :try_start_2fc
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_2ff
    .catch Ljava/lang/Exception; {:try_start_2fc .. :try_end_2ff} :catch_301

    goto/16 :goto_21f

    :catch_301
    move-exception v15

    goto/16 :goto_21f

    :catch_304
    move-exception v15

    goto/16 :goto_21f

    :catchall_307
    move-exception v53

    :goto_308
    if-eqz v23, :cond_30d

    :try_start_30a
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_30d
    .catch Ljava/lang/Exception; {:try_start_30a .. :try_end_30d} :catch_30e

    :cond_30d
    :goto_30d
    throw v53

    :catch_30e
    move-exception v15

    goto :goto_30d

    :catch_310
    move-exception v15

    const/16 v17, 0x0

    goto/16 :goto_24f

    :cond_315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v53

    if-eqz v53, :cond_35f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v54

    const-string/jumbo v55, "fwversion"

    invoke-virtual/range {v54 .. v55}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    if-eqz v53, :cond_35f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap10(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap9(Lcom/android/server/pm/PersonaManagerService;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap0(Lcom/android/server/pm/PersonaManagerService;)Z

    :cond_35f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_573

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "cleanPersonaInfo size - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_387
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_573

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "clean up started for persona id - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v50, Ljava/io/File;

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    sget-object v54, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v55

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string/jumbo v55, ".xml"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v50

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v50, :cond_568

    invoke-virtual/range {v50 .. v50}, Ljava/io/File;->exists()Z

    move-result v53

    if-eqz v53, :cond_568

    invoke-virtual/range {v50 .. v50}, Ljava/io/File;->delete()Z

    move-result v41

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "persona xml delete status "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_42b
    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    sget-object v54, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    new-instance v25, Ljava/io/File;

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v54, Lcom/samsung/android/knox/SemPersonaManager$AppType;->INSTALLER_WHITELIST:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual/range {v54 .. v54}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, ".xml"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->exists()Z

    move-result v53

    if-eqz v53, :cond_4a1

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->delete()Z

    move-result v41

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "installer whitelist xml delete status "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a1
    new-instance v13, Ljava/io/File;

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v54, Lcom/samsung/android/knox/SemPersonaManager$AppType;->COM_DISABLED_OWNER_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual/range {v54 .. v54}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, ".xml"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v29

    move-object/from16 v1, v53

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v53

    if-eqz v53, :cond_4ec

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v41

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Diabled COM launcher xml delete status "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4ec
    new-instance v14, Ljava/io/File;

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v54, Lcom/samsung/android/knox/SemPersonaManager$AppType;->DISABLED_LAUNCHERS:Lcom/samsung/android/knox/SemPersonaManager$AppType;

    invoke-virtual/range {v54 .. v54}, Lcom/samsung/android/knox/SemPersonaManager$AppType;->getName()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    const-string/jumbo v54, ".xml"

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v29

    move-object/from16 v1, v53

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v53

    if-eqz v53, :cond_537

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v41

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "Diabled launcher xml delete status "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get9(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v53

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/util/SparseArray;->remove(I)V

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "clean up ended for persona id - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_387

    :cond_568
    const-string/jumbo v53, "PersonaManagerService:FOTA"

    const-string/jumbo v54, "persona file don\'t exist"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42b

    :cond_573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v53

    if-eqz v53, :cond_67a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v53

    if-lez v53, :cond_67a

    const/16 v26, 0x0

    :goto_591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->size()I

    move-result v53

    move/from16 v0, v26

    move/from16 v1, v53

    if-ge v0, v1, :cond_664

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v53

    move-object/from16 v0, v53

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/Integer;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I

    move-result v51

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "clean up started for persona list xml - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v33, Ljava/io/File;

    new-instance v53, Ljava/lang/StringBuilder;

    invoke-direct/range {v53 .. v53}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v54, v0

    invoke-static/range {v54 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v53

    sget-object v54, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    const-string/jumbo v54, "personalist.xml"

    move-object/from16 v0, v33

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v33, :cond_65a

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->exists()Z

    move-result v53

    if-eqz v53, :cond_65a

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->delete()Z

    move-result v41

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "persona list xml delete status "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_638
    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "clean up ended for persona list xml - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_591

    :cond_65a
    const-string/jumbo v53, "PersonaManagerService:FOTA"

    const-string/jumbo v54, "persona list file don\'t exist"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_638

    :cond_664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get15(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    const-string/jumbo v54, "clearing user with persona list cache"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v53

    if-eqz v53, :cond_6c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/io/File;->exists()Z

    move-result v53

    if-eqz v53, :cond_6c2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get12(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/io/File;->delete()Z

    move-result v41

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "user list file delete status - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c2
    new-instance v52, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get14(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v53

    const-string/jumbo v54, "userwithpersonalist.xml.crt"

    invoke-direct/range {v52 .. v54}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v52, :cond_6fe

    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->exists()Z

    move-result v53

    if-eqz v53, :cond_6fe

    invoke-virtual/range {v52 .. v52}, Ljava/io/File;->delete()Z

    move-result v41

    const-string/jumbo v53, "PersonaManagerService:FOTA"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, "user list backup file delete status - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v54

    monitor-enter v54

    :try_start_709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v53

    const-string/jumbo v55, "fwversion"

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v12

    if-eqz v8, :cond_736

    if-eqz v12, :cond_7a5

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    if-eqz v53, :cond_7a5

    :cond_736
    const-string/jumbo v53, "PersonaManagerService"

    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v56, "Storing fw version - "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    move-object/from16 v0, v55

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const-string/jumbo v56, ", fota version - "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x9

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v53

    const-string/jumbo v55, "fwversion"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v56, v0

    invoke-static/range {v56 .. v56}, Lcom/android/server/pm/PersonaManagerService;->-wrap4(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get6(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v53

    const-string/jumbo v55, "fotaversion"

    const-string/jumbo v56, "9"

    move-object/from16 v0, v53

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap21(Lcom/android/server/pm/PersonaManagerService;)V
    :try_end_7a5
    .catchall {:try_start_709 .. :try_end_7a5} :catchall_7a8

    :cond_7a5
    monitor-exit v54

    goto/16 :goto_18

    :catchall_7a8
    move-exception v53

    monitor-exit v54

    throw v53

    :sswitch_7ab
    :try_start_7ab
    const-string/jumbo v53, "PersonaManagerServiceHandler"

    const-string/jumbo v54, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v53

    const-string/jumbo v54, "user"

    invoke-virtual/range {v53 .. v54}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/os/UserManager;

    const/16 v53, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v31

    const/16 v20, 0x0

    :goto_7d3
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v53

    move/from16 v0, v20

    move/from16 v1, v53

    if-ge v0, v1, :cond_80e

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/pm/UserInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaServiceHelper;->isTimaAvailable(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_80b

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v53, v0

    const/16 v54, 0x4

    invoke-static/range {v53 .. v54}, Lcom/samsung/android/knox/SemPersonaManager;->clearAttributes(II)Z

    const-string/jumbo v53, "PersonaManagerService"

    const-string/jumbo v54, "Clear Device compromised"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_80b
    add-int/lit8 v20, v20, 0x1

    goto :goto_7d3

    :cond_80e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    const-string/jumbo v54, "knoxid.reset_on_reboot"

    invoke-virtual/range {v53 .. v54}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    if-nez v53, :cond_860

    const/4 v10, -0x1

    :goto_81e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_18

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v53

    if-eqz v53, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap16(Lcom/android/server/pm/PersonaManagerService;)V
    :try_end_83d
    .catch Ljava/lang/Exception; {:try_start_7ab .. :try_end_83d} :catch_83f

    goto/16 :goto_18

    :catch_83f
    move-exception v15

    const-string/jumbo v53, "PersonaManagerService"

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v55, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :cond_860
    :try_start_860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    const-string/jumbo v54, "knoxid.reset_on_reboot"

    invoke-virtual/range {v53 .. v54}, Lcom/android/server/pm/PersonaManagerService;->getPersonaCacheValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I
    :try_end_874
    .catch Ljava/lang/Exception; {:try_start_860 .. :try_end_874} :catch_83f

    move-result v10

    goto :goto_81e

    :sswitch_876
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap18(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_18

    :sswitch_88b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v53, v0

    if-lez v53, :cond_8b2

    const/16 v39, 0x1

    :goto_89b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v30

    move/from16 v2, v39

    invoke-static {v0, v1, v11, v2}, Lcom/android/server/pm/PersonaManagerService;->-wrap8(Lcom/android/server/pm/PersonaManagerService;ILandroid/content/ComponentName;Z)V

    goto/16 :goto_18

    :cond_8b2
    const/16 v39, 0x0

    goto :goto_89b

    :sswitch_8b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    const/16 v54, 0x0

    invoke-static/range {v53 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-wrap17(Lcom/android/server/pm/PersonaManagerService;Z)V

    goto/16 :goto_18

    :sswitch_8c2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-wrap7(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_18

    :sswitch_8cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    const/16 v54, 0x1

    invoke-static/range {v53 .. v54}, Lcom/android/server/pm/PersonaManagerService;->-wrap17(Lcom/android/server/pm/PersonaManagerService;Z)V

    goto/16 :goto_18

    :sswitch_8da
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v53

    move/from16 v0, v53

    move/from16 v1, v30

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-wrap19(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_18

    :sswitch_8ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get13(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/UserManager;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v47

    :cond_911
    :goto_911
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_18

    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v46 .. v46}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v53

    if-eqz v53, :cond_911

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v53

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    if-nez v53, :cond_911

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v53

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v53

    if-nez v53, :cond_911

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v53

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v53

    if-eqz v53, :cond_911

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/app/KeyguardManager;

    move-result-object v53

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v53

    xor-int/lit8 v53, v53, 0x1

    if-eqz v53, :cond_911

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get11(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxTimeoutHandler;

    move-result-object v53

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v54, v0

    invoke-virtual/range {v53 .. v54}, Lcom/android/server/pm/KnoxTimeoutHandler;->getScreenOffTimeoutLocked(I)I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string/jumbo v53, "knox.power_button_instantly_locks"

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v54, v0

    const/16 v55, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v53

    move/from16 v2, v55

    move/from16 v3, v54

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v27

    if-eqz v42, :cond_9c2

    const/16 v53, -0x2

    move/from16 v0, v42

    move/from16 v1, v53

    if-ne v0, v1, :cond_9e8

    :cond_9c2
    :goto_9c2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v53, "android.intent.extra.user_handle"

    move-object/from16 v0, v46

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v54, v0

    move-object/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v44

    const-string/jumbo v53, "knox.container.proxy.EVENT_LOCK_TIMEOUT"

    move-object/from16 v0, v53

    invoke-static {v0, v7}, Lcom/samsung/android/knox/ContainerProxy;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-static/range {v44 .. v45}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_911

    :cond_9e8
    if-lez v27, :cond_911

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v53, v0

    invoke-static/range {v53 .. v53}, Lcom/android/server/pm/PersonaManagerService;->-get1(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v53

    invoke-static/range {v53 .. v53}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v53

    if-eqz v53, :cond_911

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    const/16 v54, 0x2

    move/from16 v0, v53

    move/from16 v1, v54

    if-ne v0, v1, :cond_911

    goto :goto_9c2

    :catchall_a09
    move-exception v53

    move-object/from16 v23, v24

    goto/16 :goto_308

    :catch_a0e
    move-exception v15

    move-object/from16 v23, v24

    goto/16 :goto_2db

    nop

    :sswitch_data_a14
    .sparse-switch
        0x6 -> :sswitch_88b
        0x7 -> :sswitch_8b5
        0x8 -> :sswitch_8da
        0xa -> :sswitch_19
        0xb -> :sswitch_8ff
        0xd -> :sswitch_7ab
        0xf -> :sswitch_6b
        0x32 -> :sswitch_876
        0x33 -> :sswitch_8c2
        0x34 -> :sswitch_8cd
    .end sparse-switch
.end method
