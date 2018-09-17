.class public Lcom/android/server/enterprise/nap/DataDeliveryHelper;
.super Ljava/lang/Object;
.source "DataDeliveryHelper.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkAnalytics:DataDeliveryHelper"


# instance fields
.field private identifier:Ljava/lang/String;

.field private operationUserId:I

.field private profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

.field private serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    iput-object p2, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    iput p3, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getProfileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->getTransformedVendorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    :cond_15
    return-void
.end method

.method private blockDnsFlow(Lorg/json/JSONObject;II)I
    .registers 11

    const/4 v3, 0x1

    :try_start_1
    const-string/jumbo v5, "dport"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "53"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    const-string/jumbo v5, "dnsuid"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_32

    move-result v1

    if-nez p3, :cond_2a

    if-nez p2, :cond_2a

    if-eqz v1, :cond_2a

    const/4 v3, 0x3

    :goto_29
    return v3

    :cond_2a
    if-eq v1, p2, :cond_2e

    const/4 v3, 0x2

    goto :goto_29

    :cond_2e
    const/4 v3, 0x0

    goto :goto_29

    :cond_30
    const/4 v3, 0x1

    goto :goto_29

    :catch_32
    move-exception v4

    goto :goto_29
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationUserId()I
    .registers 2

    iget v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    return v0
.end method

.method public getProfile()Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    return-object v0
.end method

.method public getServiceBinder()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    invoke-virtual {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->getBinderObject()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method public getServiceConnection()Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    return-object v0
.end method

.method public processData(Ljava/lang/String;)Ljava/lang/String;
    .registers 27

    const/16 v19, 0x0

    :try_start_2
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-nez v17, :cond_1b

    sget-boolean v23, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->DBG:Z

    if-eqz v23, :cond_1a

    const-string/jumbo v23, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v24, "Json data/format obtained from Kernel is null."

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-object v19

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->profile:Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore$NAPConfigProfile;->getFlags()I

    move-result v6

    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    const/4 v9, 0x0

    const-string/jumbo v23, "uid"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_39} :catch_3ae
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3e6

    move-result-object v9

    if-eqz v9, :cond_89

    :try_start_3c
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    if-nez v21, :cond_76

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->blockDnsFlow(Lorg/json/JSONObject;II)I

    move-result v7

    if-lez v7, :cond_89

    const/16 v23, 0x3

    move/from16 v0, v23

    if-ne v7, v0, :cond_67

    const/16 v23, 0x0

    return-object v23

    :cond_67
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_89

    const/16 v23, 0x0

    return-object v23

    :cond_76
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->operationUserId:I

    move/from16 v23, v0
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_7c} :catch_85
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_7c} :catch_3ae
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_7c} :catch_3e6

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_89

    const/16 v23, 0x0

    return-object v23

    :catch_85
    move-exception v10

    const/16 v23, 0x0

    return-object v23

    :cond_89
    const v23, 0x8000

    and-int v23, v23, v6

    if-nez v23, :cond_92

    if-nez v6, :cond_9c

    :cond_92
    :try_start_92
    const-string/jumbo v23, "uid"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9c
    and-int/lit16 v0, v6, 0x100

    move/from16 v23, v0

    if-nez v23, :cond_a4

    if-nez v6, :cond_bd

    :cond_a4
    const-string/jumbo v23, "pid"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "pid"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_bd
    and-int/lit16 v0, v6, 0x1000

    move/from16 v23, v0

    if-nez v23, :cond_c5

    if-nez v6, :cond_de

    :cond_c5
    const-string/jumbo v23, "puid"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "puid"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_de
    and-int/lit16 v0, v6, 0x2000

    move/from16 v23, v0

    if-nez v23, :cond_e6

    if-nez v6, :cond_ff

    :cond_e6
    const-string/jumbo v23, "src"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "src"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ff
    and-int/lit8 v23, v6, 0x8

    if-nez v23, :cond_105

    if-nez v6, :cond_11e

    :cond_105
    const-string/jumbo v23, "dst"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "dst"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_11e
    and-int/lit16 v0, v6, 0x4000

    move/from16 v23, v0

    if-nez v23, :cond_126

    if-nez v6, :cond_13f

    :cond_126
    const-string/jumbo v23, "sport"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "sport"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_13f
    and-int/lit8 v23, v6, 0x10

    if-nez v23, :cond_145

    if-nez v6, :cond_15e

    :cond_145
    const-string/jumbo v23, "dport"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "dport"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_15e
    and-int/lit16 v0, v6, 0x800

    move/from16 v23, v0

    if-nez v23, :cond_166

    if-nez v6, :cond_17f

    :cond_166
    const-string/jumbo v23, "protocol"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "protocol"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_17f
    and-int/lit16 v0, v6, 0x400

    move/from16 v23, v0

    if-nez v23, :cond_187

    if-nez v6, :cond_1a0

    :cond_187
    const-string/jumbo v23, "procname"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "procname"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a0
    .catch Lorg/json/JSONException; {:try_start_92 .. :try_end_1a0} :catch_3ae
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_1a0} :catch_3e6

    :cond_1a0
    and-int/lit16 v0, v6, 0x200

    move/from16 v23, v0

    if-nez v23, :cond_1a8

    if-nez v6, :cond_204

    :cond_1a8
    :try_start_1a8
    const-string/jumbo v23, "uid"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v23, "procname"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v23, "pid"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v20, :cond_204

    if-eqz v15, :cond_204

    const-string/jumbo v23, "0"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1f6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_387

    :cond_1f6
    const-string/jumbo v23, "prochash"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1a8 .. :try_end_204} :catch_39d
    .catch Lorg/json/JSONException; {:try_start_1a8 .. :try_end_204} :catch_3ae

    :cond_204
    :goto_204
    and-int/lit16 v0, v6, 0x80

    move/from16 v23, v0

    if-nez v23, :cond_20c

    if-nez v6, :cond_225

    :cond_20c
    :try_start_20c
    const-string/jumbo v23, "parentprocname"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "parentprocname"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_225
    .catch Lorg/json/JSONException; {:try_start_20c .. :try_end_225} :catch_3ae
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_225} :catch_3e6

    :cond_225
    const/high16 v23, 0x40000

    and-int v23, v23, v6

    if-nez v23, :cond_22d

    if-nez v6, :cond_289

    :cond_22d
    :try_start_22d
    const-string/jumbo v23, "puid"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v23, "parentprocname"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v23, "ppid"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v16, :cond_289

    if-eqz v12, :cond_289

    const-string/jumbo v23, "0"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_27b

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3bf

    :cond_27b
    const-string/jumbo v23, "parentprochash"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_22d .. :try_end_289} :catch_3d5
    .catch Lorg/json/JSONException; {:try_start_22d .. :try_end_289} :catch_3ae

    :cond_289
    :goto_289
    and-int/lit8 v23, v6, 0x2

    if-nez v23, :cond_28f

    if-nez v6, :cond_2a8

    :cond_28f
    :try_start_28f
    const-string/jumbo v23, "bsent"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "bsent"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2a8
    and-int/lit8 v23, v6, 0x40

    if-nez v23, :cond_2ae

    if-nez v6, :cond_2c7

    :cond_2ae
    const-string/jumbo v23, "start"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "start"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2c7
    and-int/lit8 v23, v6, 0x4

    if-nez v23, :cond_2cd

    if-nez v6, :cond_2e6

    :cond_2cd
    const-string/jumbo v23, "end"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "end"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2e6
    and-int/lit8 v23, v6, 0x1

    if-nez v23, :cond_2ec

    if-nez v6, :cond_305

    :cond_2ec
    const-string/jumbo v23, "brecv"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "brecv"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_305
    and-int/lit8 v23, v6, 0x20

    if-nez v23, :cond_30b

    if-nez v6, :cond_324

    :cond_30b
    const-string/jumbo v23, "hostname"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "hostname"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_324
    .catch Lorg/json/JSONException; {:try_start_28f .. :try_end_324} :catch_3ae
    .catch Ljava/lang/Exception; {:try_start_28f .. :try_end_324} :catch_3e6

    :cond_324
    const/high16 v23, 0x10000

    and-int v23, v23, v6

    if-nez v23, :cond_32c

    if-nez v6, :cond_361

    :cond_32c
    :try_start_32c
    const-string/jumbo v23, "dport"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_361

    const-string/jumbo v23, "53"

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3f7

    const-string/jumbo v23, "dnsuid"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "dnsuid"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_361
    .catch Ljava/lang/Exception; {:try_start_32c .. :try_end_361} :catch_407
    .catch Lorg/json/JSONException; {:try_start_32c .. :try_end_361} :catch_3ae

    :cond_361
    :goto_361
    const/high16 v23, 0x20000

    and-int v23, v23, v6

    if-nez v23, :cond_369

    if-nez v6, :cond_382

    :cond_369
    :try_start_369
    const-string/jumbo v23, "ppid"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v23, "ppid"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_382
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_385
    .catch Lorg/json/JSONException; {:try_start_369 .. :try_end_385} :catch_3ae
    .catch Ljava/lang/Exception; {:try_start_369 .. :try_end_385} :catch_3e6

    move-result-object v19

    :goto_386
    return-object v19

    :cond_387
    :try_start_387
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v0, v15}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v23, "prochash"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39b
    .catch Ljava/lang/Exception; {:try_start_387 .. :try_end_39b} :catch_39d
    .catch Lorg/json/JSONException; {:try_start_387 .. :try_end_39b} :catch_3ae

    goto/16 :goto_204

    :catch_39d
    move-exception v5

    :try_start_39e
    const-string/jumbo v23, "prochash"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3ac
    .catch Lorg/json/JSONException; {:try_start_39e .. :try_end_3ac} :catch_3ae
    .catch Ljava/lang/Exception; {:try_start_39e .. :try_end_3ac} :catch_3e6

    goto/16 :goto_204

    :catch_3ae
    move-exception v8

    const-string/jumbo v23, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v24, "processData: JSONException"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v19, 0x0

    goto :goto_386

    :cond_3bf
    :try_start_3bf
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-static {v0, v12}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->getPackageHash(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v23, "parentprochash"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3d3
    .catch Ljava/lang/Exception; {:try_start_3bf .. :try_end_3d3} :catch_3d5
    .catch Lorg/json/JSONException; {:try_start_3bf .. :try_end_3d3} :catch_3ae

    goto/16 :goto_289

    :catch_3d5
    move-exception v5

    :try_start_3d6
    const-string/jumbo v23, "parentprochash"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e4
    .catch Lorg/json/JSONException; {:try_start_3d6 .. :try_end_3e4} :catch_3ae
    .catch Ljava/lang/Exception; {:try_start_3d6 .. :try_end_3e4} :catch_3e6

    goto/16 :goto_289

    :catch_3e6
    move-exception v5

    const-string/jumbo v23, "NetworkAnalytics:DataDeliveryHelper"

    const-string/jumbo v24, "processData: Exception"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v19, 0x0

    goto :goto_386

    :cond_3f7
    :try_start_3f7
    const-string/jumbo v23, "dnsuid"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_405
    .catch Ljava/lang/Exception; {:try_start_3f7 .. :try_end_405} :catch_407
    .catch Lorg/json/JSONException; {:try_start_3f7 .. :try_end_405} :catch_3ae

    goto/16 :goto_361

    :catch_407
    move-exception v5

    :try_start_408
    const-string/jumbo v23, "dnsuid"

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_416
    .catch Lorg/json/JSONException; {:try_start_408 .. :try_end_416} :catch_3ae
    .catch Ljava/lang/Exception; {:try_start_408 .. :try_end_416} :catch_3e6

    goto/16 :goto_361
.end method

.method public setServiceConnection(Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/nap/DataDeliveryHelper;->serviceConnection:Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    return-void
.end method
