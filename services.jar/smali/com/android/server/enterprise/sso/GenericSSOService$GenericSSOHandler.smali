.class final Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;
.super Landroid/os/Handler;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GenericSSOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/sso/GenericSSOService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/sso/GenericSSOService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 38

    if-eqz p1, :cond_14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v12

    const/4 v10, 0x0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_25c

    :cond_14
    :goto_14
    :pswitch_14
    return-void

    :pswitch_15
    :try_start_15
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    move/from16 v0, v31

    invoke-static {v2, v0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService;ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/TokenInfo;

    move-result-object v27

    if-eqz v10, :cond_14

    if-eqz v27, :cond_45

    move-object/from16 v0, v27

    invoke-interface {v10, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->tokenInfoSuccess(Lcom/samsung/android/knox/sso/common/TokenInfo;)V

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Getting a token successfully"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_39} :catch_3a

    goto :goto_14

    :catch_3a
    move-exception v15

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: RemoteException"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_45
    const/4 v2, -0x1

    :try_start_46
    invoke-interface {v10, v2}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Failed to get a token"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_52} :catch_3a

    goto :goto_14

    :pswitch_53
    :try_start_53
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    move/from16 v0, v31

    invoke-virtual {v2, v0, v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->acquireUserInfo(ILandroid/os/Bundle;)Lcom/samsung/android/knox/sso/common/UserInfo;

    move-result-object v33

    if-eqz v10, :cond_14

    if-eqz v33, :cond_7a

    move-object/from16 v0, v33

    invoke-interface {v10, v0}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->userInfoSuccess(Lcom/samsung/android/knox/sso/common/UserInfo;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_6e} :catch_6f

    goto :goto_14

    :catch_6f
    move-exception v15

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: RemoteException"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_7a
    const/4 v2, -0x1

    :try_start_7b
    invoke-interface {v10, v2}, Lcom/samsung/android/knox/sso/authrequest/IGenericSSOCallback;->onFail(I)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_7b .. :try_end_7e} :catch_6f

    goto :goto_14

    :pswitch_7f
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    const/16 v26, -0x1

    const/16 v24, 0x0

    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, v8, v7}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v11}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v2

    if-eqz v2, :cond_fd

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_a9

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Calling configureSSOByFile2"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v11}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getSSOConfigFile()[B

    move-result-object v4

    invoke-static {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap2(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;[BI)I

    move-result v26

    const/16 v24, 0x1

    :goto_b7
    if-gez v26, :cond_c2

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Enrollment is failed."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c2
    if-nez v24, :cond_14

    if-nez v26, :cond_14

    invoke-virtual {v11}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_14

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_d9

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: getWhiteListPackages is not null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v11}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getWhiteListPackages()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->addWhiteListPackages2(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)I

    move-result v26

    if-gez v26, :cond_14

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Add whitelist failed. Unenrolling."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v11}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->unenrollSSOVendor2(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)I

    goto/16 :goto_14

    :cond_fd
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_10a

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Calling enrollSSOVendor2"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-virtual {v11}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorPkgSignature()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/samsung/android/knox/sso/config/GenericSSOConfig;->getAuthenticatorConfig()Landroid/os/Bundle;

    move-result-object v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap3(Lcom/android/server/enterprise/sso/GenericSSOService;Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v26

    goto :goto_b7

    :pswitch_11f
    const/16 v22, 0x0

    :try_start_121
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get3(Lcom/android/server/enterprise/sso/GenericSSOService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/UserManager;

    if-eqz v30, :cond_140

    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v35

    :cond_140
    if-eqz v35, :cond_194

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_194

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_14c
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_194

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v32

    iget v14, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v0, v31

    if-eq v14, v0, :cond_14c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2, v14}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap0(Lcom/android/server/enterprise/sso/GenericSSOService;I)Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;

    move-result-object v13

    const/16 v21, 0x0

    const/16 v25, 0x0

    if-eqz v13, :cond_14c

    invoke-static {v13}, Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;->-wrap1(Lcom/android/server/enterprise/sso/GenericSSOService$RequestConfigDocument;)Lorg/w3c/dom/Node;

    move-result-object v21

    if-eqz v21, :cond_14c

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_192

    const-string/jumbo v2, "GenericSSOService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In handleMessage: Enrolled vendor exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_192
    const/16 v22, 0x1

    :cond_194
    if-nez v22, :cond_14

    const/16 v23, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/sso/GenericSSOService$GenericSSOHandler;->this$0:Lcom/android/server/enterprise/sso/GenericSSOService;

    invoke-static {v2}, Lcom/android/server/enterprise/sso/GenericSSOService;->-wrap4(Lcom/android/server/enterprise/sso/GenericSSOService;)V

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get4()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "timakeystore"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e4

    const-string/jumbo v9, "GenericSSOService"

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get4()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get4()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: SecretKey is deleted from TIMAKeystore"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d1
    :goto_1d1
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1d4
    .catch Ljava/lang/SecurityException; {:try_start_121 .. :try_end_1d4} :catch_1d6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_121 .. :try_end_1d4} :catch_224
    .catch Ljava/security/KeyStoreException; {:try_start_121 .. :try_end_1d4} :catch_24e
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_1d4} :catch_240
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_1d4} :catch_232

    goto/16 :goto_14

    :catch_1d6
    move-exception v18

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: SecurityException"

    move-object/from16 v0, v18

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    :cond_1e4
    :try_start_1e4
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get4()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "androidkeystore"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    const-string/jumbo v9, "KnoxSSOKey"

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get4()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d1

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get4()Ljava/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    new-instance v23, Ljava/io/File;

    const-string/jumbo v2, "/data/system/KnoxSSO_SCKF"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z

    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_1d1

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: KeyPair is deleted from AndroidKeyStore, and SecretKey file is deleted"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_223
    .catch Ljava/lang/SecurityException; {:try_start_1e4 .. :try_end_223} :catch_1d6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e4 .. :try_end_223} :catch_224
    .catch Ljava/security/KeyStoreException; {:try_start_1e4 .. :try_end_223} :catch_24e
    .catch Ljava/io/IOException; {:try_start_1e4 .. :try_end_223} :catch_240
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_223} :catch_232

    goto :goto_1d1

    :catch_224
    move-exception v20

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: NoSuchAlgorithmException"

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    :catch_232
    move-exception v17

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: Exception"

    move-object/from16 v0, v17

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    :catch_240
    move-exception v16

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: IOException"

    move-object/from16 v0, v16

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    :catch_24e
    move-exception v19

    const-string/jumbo v2, "GenericSSOService"

    const-string/jumbo v4, "In handleMessage: KeyStoreException"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    :pswitch_data_25c
    .packed-switch 0x2
        :pswitch_15
        :pswitch_53
        :pswitch_14
        :pswitch_7f
        :pswitch_11f
    .end packed-switch
.end method
