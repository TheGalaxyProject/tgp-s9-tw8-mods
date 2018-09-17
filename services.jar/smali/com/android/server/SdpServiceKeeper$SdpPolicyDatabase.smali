.class Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;
.super Ljava/lang/Object;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpServiceKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpPolicyDatabase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;
    }
.end annotation


# static fields
.field private static final ATTR_ALIAS:Ljava/lang/String; = "alias"

.field private static final ATTR_PKG:Ljava/lang/String; = "pkg_name"

.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final DEBUG:Z = true

.field private static final ELEMENT_OWNER:Ljava/lang/String; = "owner"

.field private static final ELEMENT_PRIVILEGED_APP:Ljava/lang/String; = "privileged_app"

.field private static final ELEMENT_ROOT:Ljava/lang/String; = "engine_policy"

.field private static final MAX_SALT_LENGTH:I = 0x20


# instance fields
.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field final synthetic this$0:Lcom/android/server/SdpServiceKeeper;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->putPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->removePolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/SdpServiceKeeper;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->this$0:Lcom/android/server/SdpServiceKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpServiceKeeper;Landroid/content/Context;Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;-><init>(Lcom/android/server/SdpServiceKeeper;Landroid/content/Context;)V

    return-void
.end method

.method private byteToHex([B)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v4, p1

    move v2, v3

    :goto_8
    if-ge v2, v4, :cond_22

    aget-byte v0, p1, v2

    const-string/jumbo v5, "%02X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateHash([BLjava/io/File;)[B
    .registers 16

    const-string/jumbo v0, "SHA-256"

    const/4 v5, 0x0

    :try_start_4
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_d} :catch_8f
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_d} :catch_6c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_5d
    .catchall {:try_start_4 .. :try_end_d} :catchall_80

    const/16 v10, 0x400

    :try_start_f
    new-array v1, v10, [B

    const/4 v8, 0x0

    :goto_12
    invoke-virtual {v6, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    const/4 v10, -0x1

    if-eq v8, v10, :cond_41

    const/4 v10, 0x0

    invoke-virtual {v7, v1, v10, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_1d} :catch_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1d} :catch_91
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1d} :catch_94
    .catchall {:try_start_f .. :try_end_1d} :catchall_8c

    goto :goto_12

    :catch_1e
    move-exception v4

    move-object v5, v6

    :goto_20
    :try_start_20
    const-string/jumbo v10, "SdpServiceKeeper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Failed to hash : missing algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_20 .. :try_end_3a} :catchall_80

    if-eqz v5, :cond_3f

    :try_start_3c
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_7b

    :cond_3f
    :goto_3f
    const/4 v10, 0x0

    return-object v10

    :cond_41
    :try_start_41
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    array-length v10, v9

    if-lez v10, :cond_52

    const-string/jumbo v10, "SdpServiceKeeper"

    invoke-direct {p0, v9}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_41 .. :try_end_52} :catch_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_52} :catch_91
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_52} :catch_94
    .catchall {:try_start_41 .. :try_end_52} :catchall_8c

    :cond_52
    if-eqz v6, :cond_57

    :try_start_54
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_58

    :cond_57
    :goto_57
    return-object v9

    :catch_58
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57

    :catch_5d
    move-exception v3

    :goto_5e
    :try_start_5e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_80

    if-eqz v5, :cond_3f

    :try_start_63
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_3f

    :catch_67
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    :catch_6c
    move-exception v2

    :goto_6d
    :try_start_6d
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_80

    if-eqz v5, :cond_3f

    :try_start_72
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_3f

    :catch_76
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    :catch_7b
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f

    :catchall_80
    move-exception v10

    :goto_81
    if-eqz v5, :cond_86

    :try_start_83
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    :cond_86
    :goto_86
    throw v10

    :catch_87
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_86

    :catchall_8c
    move-exception v10

    move-object v5, v6

    goto :goto_81

    :catch_8f
    move-exception v4

    goto :goto_20

    :catch_91
    move-exception v2

    move-object v5, v6

    goto :goto_6d

    :catch_94
    move-exception v3

    move-object v5, v6

    goto :goto_5e
.end method

.method private generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B
    .registers 4

    const/16 v1, 0x20

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-object v0
.end method

.method private getPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;
    .registers 11

    const/4 v8, 0x0

    new-instance v2, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;

    invoke-direct {v2, p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;-><init>(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->loadHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v4

    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_1d

    move-result-object v1

    :goto_f
    if-eqz v1, :cond_13

    if-nez v4, :cond_22

    :cond_13
    const-string/jumbo v5, "SdpServiceKeeper"

    const-string/jumbo v6, "No policy file or its hash"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    :cond_22
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v5

    invoke-direct {p0, v5, v1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateHash([BLjava/io/File;)[B

    move-result-object v3

    if-eqz v3, :cond_6a

    if-eqz v4, :cond_6a

    const-string/jumbo v5, "SdpServiceKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadPolicy :: generated hash : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "SdpServiceKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadPolicy :: stored hash : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v4}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->byteToHex([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_7a

    const-string/jumbo v5, "SdpServiceKeeper"

    const-string/jumbo v6, "Policy file tempered!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_7a
    :try_start_7a
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v5, v2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_82} :catch_87

    invoke-static {v2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->-wrap0(Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;)Lcom/android/server/sdp/engine/SdpPolicy;

    move-result-object v5

    return-object v5

    :catch_87
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v5, "SdpServiceKeeper"

    const-string/jumbo v6, "engine_poilcy xml io failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method private getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/data/system/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "sdp_engine_policy_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private loadHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B
    .registers 8

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_sdp_policy_hash"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/android/server/KeyProtector;->releaseMinor(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0
.end method

.method private putPolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/android/server/sdp/engine/SdpPolicy;)I
    .registers 27

    const/4 v12, 0x0

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_c2

    move-result-object v12

    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    const-string/jumbo v22, "engine_policy"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string/jumbo v22, "owner"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    const-string/jumbo v22, "alias"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    const-string/jumbo v22, "pkg_name"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v13, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/sdp/engine/SdpPolicy;->getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v13, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/sdp/engine/SdpPolicy;->getPrivilegedApps()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_d2

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v22

    xor-int/lit8 v22, v22, 0x1

    if-eqz v22, :cond_d2

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    const-string/jumbo v22, "privileged_app"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    const-string/jumbo v22, "alias"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    const-string/jumbo v22, "pkg_name"

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v15, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-virtual {v8}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    invoke-interface {v15, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_b1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_b1} :catch_b2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_b1} :catch_116

    goto :goto_6d

    :catch_b2
    move-exception v14

    invoke-virtual {v14}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    const-string/jumbo v22, "SdpServiceKeeper"

    const-string/jumbo v23, " putPolicyLocked failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x63

    return v22

    :catch_c2
    move-exception v11

    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v22, "SdpServiceKeeper"

    const-string/jumbo v23, " putPolicyLocked failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0xe

    return v22

    :cond_d2
    :try_start_d2
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    const-string/jumbo v22, "indent"

    const-string/jumbo v23, "yes"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v16, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_100
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_d2 .. :try_end_100} :catch_b2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_d2 .. :try_end_100} :catch_116

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->saveHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/io/File;)Z

    move-result v22

    if-eqz v22, :cond_126

    const-string/jumbo v22, "SdpServiceKeeper"

    const-string/jumbo v23, "putPolicyLocked :: SUCCESS"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    return v22

    :catch_116
    move-exception v19

    invoke-virtual/range {v19 .. v19}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    const-string/jumbo v22, "SdpServiceKeeper"

    const-string/jumbo v23, " putPolicyLocked failed"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x63

    return v22

    :cond_126
    const-string/jumbo v22, "SdpServiceKeeper"

    const-string/jumbo v23, "can\'t store hash to TIMA"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, -0x63

    return v22
.end method

.method private removePolicyLocked(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 10

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->getPolicyXmlFile(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)Ljava/io/File;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3f

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_13

    const-string/jumbo v3, "SdpServiceKeeper"

    const-string/jumbo v6, "Couldn\'t remove policy file!"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "_sdp_policy_hash"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/android/server/KeyProtector;->delete(Ljava/lang/String;I)Z

    move-result v2

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catch_3f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string/jumbo v3, "SdpServiceKeeper"

    const-string/jumbo v6, " removePolicyLocked  failed"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveHash(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Ljava/io/File;)Z
    .registers 10

    invoke-direct {p0, p1}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateSalt(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)[B

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/android/server/SdpServiceKeeper$SdpPolicyDatabase;->generateHash([BLjava/io/File;)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/KeyProtector;->getInstance()Lcom/android/server/KeyProtector;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_sdp_policy_hash"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/KeyProtector;->protect([BLjava/lang/String;I)Z

    move-result v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1
.end method


# virtual methods
.method public parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .registers 11

    const/4 v7, 0x0

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    invoke-interface {v4, p2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_18
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_18} :catch_24
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_18} :catch_1f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_18} :catch_1a

    :goto_18
    const/4 v6, 0x1

    return v6

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_18

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    return v7

    :catch_24
    move-exception v2

    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    return v7
.end method