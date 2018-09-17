.class public Lcom/android/server/net/IpConfigStore;
.super Ljava/lang/Object;
.source "IpConfigStore.java"


# static fields
.field private static final synthetic -android-net-IpConfiguration$IpAssignmentSwitchesValues:[I = null

.field private static final synthetic -android-net-IpConfiguration$ProxySettingsSwitchesValues:[I = null

.field private static final DBG:Z = false

.field protected static final DNS_KEY:Ljava/lang/String; = "dns"

.field protected static final EOS:Ljava/lang/String; = "eos"

.field protected static final EXCLUSION_LIST_KEY:Ljava/lang/String; = "exclusionList"

.field protected static final GATEWAY_KEY:Ljava/lang/String; = "gateway"

.field protected static final ID_KEY:Ljava/lang/String; = "id"

.field protected static final IPCONFIG_FILE_VERSION:I = 0x2

.field protected static final IP_ASSIGNMENT_KEY:Ljava/lang/String; = "ipAssignment"

.field protected static final LINK_ADDRESS_KEY:Ljava/lang/String; = "linkAddress"

.field protected static final PROXY_HOST_KEY:Ljava/lang/String; = "proxyHost"

.field protected static final PROXY_PAC_FILE:Ljava/lang/String; = "proxyPac"

.field protected static final PROXY_PORT_KEY:Ljava/lang/String; = "proxyPort"

.field protected static final PROXY_SETTINGS_KEY:Ljava/lang/String; = "proxySettings"

.field private static final TAG:Ljava/lang/String; = "IpConfigStore"


# instance fields
.field protected final mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method private static synthetic -getandroid-net-IpConfiguration$IpAssignmentSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/net/IpConfiguration$IpAssignment;->values()[Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method private static synthetic -getandroid-net-IpConfiguration$ProxySettingsSwitchesValues()[I
    .registers 3

    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/net/IpConfiguration$ProxySettings;->values()[Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lcom/android/server/net/IpConfigStore;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>()V
    .registers 2

    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/DelayedDiskWrite;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static loge(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "IpConfigStore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    const/4 v12, 0x0

    :try_start_6
    new-instance v13, Ljava/io/DataInputStream;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_d} :catch_309
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_30c
    .catchall {:try_start_6 .. :try_end_d} :catchall_306

    :try_start_d
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_44

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_44

    const-string/jumbo v27, "Bad version on IP configuration file, ignore read"

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/io/EOFException; {:try_start_d .. :try_end_27} :catch_d5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_27} :catch_fa
    .catchall {:try_start_d .. :try_end_27} :catchall_148

    const/16 v27, 0x0

    if-eqz v13, :cond_2e

    :try_start_2b
    invoke-virtual {v13}, Ljava/io/DataInputStream;->close()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-object v27

    :catch_2f
    move-exception v6

    goto :goto_2e

    :pswitch_31
    :try_start_31
    new-instance v20, Landroid/net/ProxyInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v8}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v23

    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v20

    iput-object v0, v3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    :cond_44
    :goto_44
    const/4 v10, -0x1

    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v23, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    new-instance v25, Landroid/net/StaticIpConfiguration;

    invoke-direct/range {v25 .. v25}, Landroid/net/StaticIpConfiguration;-><init>()V

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v22, -0x1

    const/4 v8, 0x0

    :goto_55
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;
    :try_end_58
    .catch Ljava/io/EOFException; {:try_start_31 .. :try_end_58} :catch_d5
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_58} :catch_fa
    .catchall {:try_start_31 .. :try_end_58} :catchall_148

    move-result-object v15

    :try_start_59
    const-string/jumbo v27, "id"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_69

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    goto :goto_55

    :cond_69
    const-string/jumbo v27, "ipAssignment"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7d

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/IpConfiguration$IpAssignment;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v14

    goto :goto_55

    :cond_7d
    const-string/jumbo v27, "linkAddress"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_11d

    new-instance v16, Landroid/net/LinkAddress;

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v27

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v28

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v27

    move-object/from16 v0, v27

    instance-of v0, v0, Ljava/net/Inet4Address;

    move/from16 v27, v0

    if-eqz v27, :cond_dd

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v27, v0

    if-nez v27, :cond_dd

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_b9} :catch_ba
    .catch Ljava/io/EOFException; {:try_start_59 .. :try_end_b9} :catch_d5
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_b9} :catch_fa
    .catchall {:try_start_59 .. :try_end_b9} :catchall_148

    goto :goto_55

    :catch_ba
    move-exception v7

    :try_start_bb
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Ignore invalid address while reading"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/io/EOFException; {:try_start_bb .. :try_end_d4} :catch_d5
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_d4} :catch_fa
    .catchall {:try_start_bb .. :try_end_d4} :catchall_148

    goto :goto_55

    :catch_d5
    move-exception v11

    move-object v12, v13

    :goto_d7
    if-eqz v12, :cond_dc

    :try_start_d9
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_dc} :catch_300

    :cond_dc
    :goto_dc
    return-object v17

    :cond_dd
    :try_start_dd
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Non-IPv4 or duplicate address: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_f8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dd .. :try_end_f8} :catch_ba
    .catch Ljava/io/EOFException; {:try_start_dd .. :try_end_f8} :catch_d5
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_f8} :catch_fa
    .catchall {:try_start_dd .. :try_end_f8} :catchall_148

    goto/16 :goto_55

    :catch_fa
    move-exception v5

    move-object v12, v13

    :goto_fc
    :try_start_fc
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Error parsing configuration: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_115
    .catchall {:try_start_fc .. :try_end_115} :catchall_306

    if-eqz v12, :cond_dc

    :try_start_117
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_11a} :catch_11b

    goto :goto_dc

    :catch_11b
    move-exception v6

    goto :goto_dc

    :cond_11d
    :try_start_11d
    const-string/jumbo v27, "gateway"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1da

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_16d

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v27, v0

    if-nez v27, :cond_150

    move-object/from16 v0, v25

    iput-object v9, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;
    :try_end_146
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11d .. :try_end_146} :catch_ba
    .catch Ljava/io/EOFException; {:try_start_11d .. :try_end_146} :catch_d5
    .catch Ljava/io/IOException; {:try_start_11d .. :try_end_146} :catch_fa
    .catchall {:try_start_11d .. :try_end_146} :catchall_148

    goto/16 :goto_55

    :catchall_148
    move-exception v27

    move-object v12, v13

    :goto_14a
    if-eqz v12, :cond_14f

    :try_start_14c
    invoke-virtual {v12}, Ljava/io/DataInputStream;->close()V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_14f} :catch_303

    :cond_14f
    :goto_14f
    throw v27

    :cond_150
    :try_start_150
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Duplicate gateway: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_55

    :cond_16d
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_18e

    new-instance v4, Landroid/net/LinkAddress;

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v27

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-direct {v4, v0, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    :cond_18e
    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1a2

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    :cond_1a2
    new-instance v24, Landroid/net/RouteInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    invoke-virtual/range {v24 .. v24}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v27

    if-eqz v27, :cond_1bd

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    move-object/from16 v27, v0

    if-nez v27, :cond_1bd

    move-object/from16 v0, v25

    iput-object v9, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    goto/16 :goto_55

    :cond_1bd
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Non-IPv4 default or duplicate route: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_55

    :cond_1da
    const-string/jumbo v27, "dns"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1f8

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55

    :cond_1f8
    const-string/jumbo v27, "proxySettings"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_20d

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/net/IpConfiguration$ProxySettings;->valueOf(Ljava/lang/String;)Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v23

    goto/16 :goto_55

    :cond_20d
    const-string/jumbo v27, "proxyHost"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_21e

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_55

    :cond_21e
    const-string/jumbo v27, "proxyPort"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_22f

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    goto/16 :goto_55

    :cond_22f
    const-string/jumbo v27, "proxyPac"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_240

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_55

    :cond_240
    const-string/jumbo v27, "exclusionList"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_251

    invoke-virtual {v13}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_55

    :cond_251
    const-string/jumbo v27, "eos"

    move-object/from16 v0, v27

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_259
    .catch Ljava/lang/IllegalArgumentException; {:try_start_150 .. :try_end_259} :catch_ba
    .catch Ljava/io/EOFException; {:try_start_150 .. :try_end_259} :catch_d5
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_259} :catch_fa
    .catchall {:try_start_150 .. :try_end_259} :catchall_148

    move-result v27

    if-eqz v27, :cond_2a0

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v10, v0, :cond_44

    :try_start_262
    new-instance v3, Landroid/net/IpConfiguration;

    invoke-direct {v3}, Landroid/net/IpConfiguration;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid-net-IpConfiguration$IpAssignmentSwitchesValues()[I

    move-result-object v27

    invoke-virtual {v14}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_310

    const-string/jumbo v27, "Ignore invalid ip assignment while reading."

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    sget-object v27, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v27

    iput-object v0, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    :goto_285
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid-net-IpConfiguration$ProxySettingsSwitchesValues()[I

    move-result-object v27

    invoke-virtual/range {v23 .. v23}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v28

    aget v27, v27, v28

    packed-switch v27, :pswitch_data_31a

    const-string/jumbo v27, "Ignore invalid proxy settings while reading"

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    sget-object v27, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v27

    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;
    :try_end_29e
    .catch Ljava/io/EOFException; {:try_start_262 .. :try_end_29e} :catch_d5
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_29e} :catch_fa
    .catchall {:try_start_262 .. :try_end_29e} :catchall_148

    goto/16 :goto_44

    :cond_2a0
    :try_start_2a0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Ignore unknown key "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "while reading"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V
    :try_end_2c0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a0 .. :try_end_2c0} :catch_ba
    .catch Ljava/io/EOFException; {:try_start_2a0 .. :try_end_2c0} :catch_d5
    .catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2c0} :catch_fa
    .catchall {:try_start_2a0 .. :try_end_2c0} :catchall_148

    goto/16 :goto_55

    :pswitch_2c2
    :try_start_2c2
    move-object/from16 v0, v25

    iput-object v0, v3, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iput-object v14, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_285

    :pswitch_2c9
    iput-object v14, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_285

    :pswitch_2cc
    const-string/jumbo v27, "BUG: Found UNASSIGNED IP on file, use DHCP"

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    sget-object v27, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v27

    iput-object v0, v3, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_285

    :pswitch_2d9
    new-instance v21, Landroid/net/ProxyInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v21

    iput-object v0, v3, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    goto/16 :goto_44

    :pswitch_2ec
    move-object/from16 v0, v23

    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    goto/16 :goto_44

    :pswitch_2f2
    const-string/jumbo v27, "BUG: Found UNASSIGNED proxy on file, use NONE"

    invoke-static/range {v27 .. v27}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    sget-object v27, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v27

    iput-object v0, v3, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;
    :try_end_2fe
    .catch Ljava/io/EOFException; {:try_start_2c2 .. :try_end_2fe} :catch_d5
    .catch Ljava/io/IOException; {:try_start_2c2 .. :try_end_2fe} :catch_fa
    .catchall {:try_start_2c2 .. :try_end_2fe} :catchall_148

    goto/16 :goto_44

    :catch_300
    move-exception v6

    goto/16 :goto_dc

    :catch_303
    move-exception v6

    goto/16 :goto_14f

    :catchall_306
    move-exception v27

    goto/16 :goto_14a

    :catch_309
    move-exception v11

    goto/16 :goto_d7

    :catch_30c
    move-exception v5

    goto/16 :goto_fc

    nop

    :pswitch_data_310
    .packed-switch 0x1
        :pswitch_2c9
        :pswitch_2c2
        :pswitch_2cc
    .end packed-switch

    :pswitch_data_31a
    .packed-switch 0x1
        :pswitch_2ec
        :pswitch_2d9
        :pswitch_31
        :pswitch_2f2
    .end packed-switch
.end method

.method public static readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a} :catch_f

    invoke-static {v0}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/io/InputStream;)Landroid/util/SparseArray;

    move-result-object v2

    return-object v2

    :catch_f
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error opening configuration file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    return-object v2
.end method

.method public static writeConfig(Ljava/io/DataOutputStream;ILandroid/net/IpConfiguration;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid-net-IpConfiguration$IpAssignmentSwitchesValues()[I

    move-result-object v9

    iget-object v10, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v10}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_150

    const-string/jumbo v9, "Ignore invalid ip assignment while writing"

    invoke-static {v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    :goto_16
    :pswitch_16
    invoke-static {}, Lcom/android/server/net/IpConfigStore;->-getandroid-net-IpConfiguration$ProxySettingsSwitchesValues()[I

    move-result-object v9

    iget-object v10, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v10}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_15a

    const-string/jumbo v9, "Ignore invalid proxy settings while writing"

    invoke-static {v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    :goto_2b
    :pswitch_2b
    if-eqz v8, :cond_36

    const-string/jumbo v9, "id"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_36} :catch_a9

    :cond_36
    :goto_36
    const-string/jumbo v9, "eos"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return v8

    :pswitch_3d
    :try_start_3d
    const-string/jumbo v9, "ipAssignment"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v9, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v7, p2, Landroid/net/IpConfiguration;->staticIpConfiguration:Landroid/net/StaticIpConfiguration;

    if-eqz v7, :cond_c7

    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v9, :cond_6e

    iget-object v4, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    const-string/jumbo v9, "linkAddress"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_6e
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v9, :cond_89

    const-string/jumbo v9, "gateway"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_89
    iget-object v9, v7, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    const-string/jumbo v9, "dns"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_a8} :catch_a9

    goto :goto_8f

    :catch_a9
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failure in writing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/net/IpConfigStore;->loge(Ljava/lang/String;)V

    goto/16 :goto_36

    :cond_c7
    const/4 v8, 0x1

    goto/16 :goto_16

    :pswitch_ca
    :try_start_ca
    const-string/jumbo v9, "ipAssignment"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v9, p2, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$IpAssignment;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto/16 :goto_16

    :pswitch_dc
    iget-object v6, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v9, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo v9, "proxyHost"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo v9, "proxyPort"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/net/ProxyInfo;->getPort()I

    move-result v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz v1, :cond_116

    const-string/jumbo v9, "exclusionList"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_116
    const/4 v8, 0x1

    goto/16 :goto_2b

    :pswitch_119
    iget-object v5, p2, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v9, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const-string/jumbo v9, "proxyPac"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    const/4 v8, 0x1

    goto/16 :goto_2b

    :pswitch_13e
    const-string/jumbo v9, "proxySettings"

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v9, p2, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v9}, Landroid/net/IpConfiguration$ProxySettings;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_14d
    .catch Ljava/lang/NullPointerException; {:try_start_ca .. :try_end_14d} :catch_a9

    const/4 v8, 0x1

    goto/16 :goto_2b

    :pswitch_data_150
    .packed-switch 0x1
        :pswitch_ca
        :pswitch_3d
        :pswitch_16
    .end packed-switch

    :pswitch_data_15a
    .packed-switch 0x1
        :pswitch_13e
        :pswitch_119
        :pswitch_dc
        :pswitch_2b
    .end packed-switch
.end method


# virtual methods
.method public writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/IpConfiguration;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/net/IpConfigStore;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    new-instance v1, Lcom/android/server/net/IpConfigStore$1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/net/IpConfigStore$1;-><init>(Lcom/android/server/net/IpConfigStore;Landroid/util/SparseArray;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;)V

    return-void
.end method
