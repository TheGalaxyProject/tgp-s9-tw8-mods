.class public abstract Lcom/android/server/SEAMSContainer;
.super Ljava/lang/Object;
.source "SEAMSContainer.java"


# static fields
.field public static final ACTION_SECONTAINER_ADDED:Ljava/lang/String; = "android.intent.action.SECONTAINER_ADDED"

.field public static final ACTION_SECONTAINER_REMOVED:Ljava/lang/String; = "android.intent.action.SECONTAINER_REMOVED"

.field public static final BBCCONTAINER:I = 0x3

.field public static final BBC_SHARED_APPS_SPACE:I = 0x1f5

.field public static final KNOXCONTAINER_START_SPACE:I = 0x1

.field public static final MYCONTAINER:I = 0x2

.field public static final NONE:I = 0x0

.field public static final OTHER_CONTAINER_END_SPACE:I = 0x2bc

.field public static final OTHER_CONTAINER_START_SPACE:I = 0x66

.field public static final REMOVE_BBCCONTAINER_TYPE:I = 0x6

.field public static final REMOVE_MYCONTAINER_TYPE:I = 0x0

.field public static final SECURED_APPTYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SEAMSContainer"

.field public static final THIRDPARTYCONTAINER:I = 0x1

.field public static final TRUSTED_APPTYPE:I = 0x2

.field public static final USER_VALUE:I = 0x62

.field protected static mContext:Landroid/content/Context;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field protected mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field protected mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 48

    const-class v37, Lcom/android/server/SEAMSContainer;

    monitor-enter v37

    :try_start_3
    sget-boolean v36, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v36, :cond_7a

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac_begin"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "packageName: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", seinfo: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", space: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", appType: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", agent: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/16 v35, 0x0

    invoke-static {}, Lcom/android/server/SEAMSContainer;->getBbcEnabled()I

    move-result v35

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_88
    .catchall {:try_start_3 .. :try_end_88} :catchall_3f9

    move-result-object v7

    const/4 v6, 0x0

    :try_start_8a
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v36

    if-eqz v36, :cond_270

    sget-boolean v36, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v36, :cond_be

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "macPermFile exists "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v36

    if-nez v36, :cond_cd

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_cd
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    const/16 v18, 0x1

    :goto_d5
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v36, "policy"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    const/16 v21, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v21

    check-cast v21, Lorg/w3c/dom/Element;

    const-string/jumbo v36, "signer"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_fd
    .catch Lorg/xml/sax/SAXException; {:try_start_8a .. :try_end_fd} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8a .. :try_end_fd} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8a .. :try_end_fd} :catch_421
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_fd} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_fd} :catch_539
    .catchall {:try_start_8a .. :try_end_fd} :catchall_3f9

    move-result-object v27

    const/16 v29, 0x0

    const/16 v28, 0x0

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v26, 0x0

    :try_start_107
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I
    :try_end_10e
    .catch Ljava/lang/NumberFormatException; {:try_start_107 .. :try_end_10e} :catch_303
    .catch Lorg/xml/sax/SAXException; {:try_start_107 .. :try_end_10e} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_107 .. :try_end_10e} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_107 .. :try_end_10e} :catch_421
    .catch Ljava/io/IOException; {:try_start_107 .. :try_end_10e} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10e} :catch_539
    .catchall {:try_start_107 .. :try_end_10e} :catchall_3f9

    move-result v4

    const/16 v31, 0x0

    const/16 v36, 0x1

    move/from16 v0, v36

    if-eq v4, v0, :cond_11d

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_335

    :cond_11d
    const/16 v36, 0x2

    move/from16 v0, p5

    move/from16 v1, v36

    if-eq v0, v1, :cond_12d

    const/16 v36, 0x4

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_363

    :cond_12d
    :try_start_12d
    const-string/jumbo v31, "service"

    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    const-string/jumbo v36, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "seinfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "space"

    const-string/jumbo v38, "1023"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "allowSpace"

    const-string/jumbo v38, "0,701-1023"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "containerAllowSpace"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_178
    :goto_178
    sget-boolean v36, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v36, :cond_18d

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addentrytomac - done with preparing entry"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18d
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v25

    const-string/jumbo v36, "signer"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v28

    const-string/jumbo v36, "seinfo"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    const-string/jumbo v36, "allow-all"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v25, :cond_1c7

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_562

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string/jumbo v38, "default"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_562

    :cond_1c7
    const-string/jumbo v36, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "value"

    const-string/jumbo v38, "untrusted"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "space"

    const-string/jumbo v38, "1023"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "allowSpace"

    const-string/jumbo v38, "0,701-1023"

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v36, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v36, :cond_215

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac seandroidinfo = null"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_215
    :goto_215
    if-nez v17, :cond_231

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_231
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v33

    const/16 v30, 0x0

    if-eqz v18, :cond_81d

    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    :goto_24b
    new-instance v23, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v30

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v36

    if-eqz v36, :cond_26c

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_26c
    .catch Lorg/xml/sax/SAXException; {:try_start_12d .. :try_end_26c} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_12d .. :try_end_26c} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_12d .. :try_end_26c} :catch_421
    .catch Ljava/io/IOException; {:try_start_12d .. :try_end_26c} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_26c} :catch_539
    .catchall {:try_start_12d .. :try_end_26c} :catchall_3f9

    :cond_26c
    const/16 v36, 0x0

    monitor-exit v37

    return v36

    :cond_270
    :try_start_270
    sget-boolean v36, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v36, :cond_2a1

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "addEntryToMac,"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " does not exist, creating file"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v36

    if-nez v36, :cond_2b3

    const/16 v36, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_2b3
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    const-string/jumbo v36, "policy"

    move-object/from16 v0, v36

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_2c5
    .catch Lorg/xml/sax/SAXException; {:try_start_270 .. :try_end_2c5} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_270 .. :try_end_2c5} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_270 .. :try_end_2c5} :catch_421
    .catch Ljava/io/IOException; {:try_start_270 .. :try_end_2c5} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_270 .. :try_end_2c5} :catch_539
    .catchall {:try_start_270 .. :try_end_2c5} :catchall_3f9

    goto/16 :goto_d5

    :catch_2c7
    move-exception v13

    :try_start_2c8
    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->printStackTrace()V

    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    new-instance v36, Ljava/io/PrintWriter;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lorg/xml/sax/SAXException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2ee
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac, POLICY_FAILED is returned"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ff
    .catchall {:try_start_2c8 .. :try_end_2ff} :catchall_3f9

    const/16 v36, -0x1

    monitor-exit v37

    return v36

    :catch_303
    move-exception v9

    :try_start_304
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "space: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " integer parse failed"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_331
    .catch Lorg/xml/sax/SAXException; {:try_start_304 .. :try_end_331} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_304 .. :try_end_331} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_304 .. :try_end_331} :catch_421
    .catch Ljava/io/IOException; {:try_start_304 .. :try_end_331} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_304 .. :try_end_331} :catch_539
    .catchall {:try_start_304 .. :try_end_331} :catchall_3f9

    const/16 v36, -0x1

    monitor-exit v37

    return v36

    :cond_335
    const/16 v36, 0x3

    move/from16 v0, v36

    if-eq v4, v0, :cond_11d

    :try_start_33b
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "addEntryToMac is not supported for containertype:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35f
    .catch Lorg/xml/sax/SAXException; {:try_start_33b .. :try_end_35f} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_33b .. :try_end_35f} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_33b .. :try_end_35f} :catch_421
    .catch Ljava/io/IOException; {:try_start_33b .. :try_end_35f} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_33b .. :try_end_35f} :catch_539
    .catchall {:try_start_33b .. :try_end_35f} :catchall_3f9

    const/16 v36, -0x1

    monitor-exit v37

    return v36

    :cond_363
    const/16 v36, 0x1

    move/from16 v0, p5

    move/from16 v1, v36

    if-eq v0, v1, :cond_373

    const/16 v36, 0x3

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_44a

    :cond_373
    :try_start_373
    const-string/jumbo v31, "service"

    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    const-string/jumbo v36, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "seinfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "space"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "1023"

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3fc

    const-string/jumbo v36, "allowSpace"

    const-string/jumbo v38, "0,701-1023"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3bc
    if-eqz p6, :cond_178

    const-string/jumbo v36, "agent"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3ce
    .catch Lorg/xml/sax/SAXException; {:try_start_373 .. :try_end_3ce} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_373 .. :try_end_3ce} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_373 .. :try_end_3ce} :catch_421
    .catch Ljava/io/IOException; {:try_start_373 .. :try_end_3ce} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_373 .. :try_end_3ce} :catch_539
    .catchall {:try_start_373 .. :try_end_3ce} :catchall_3f9

    goto/16 :goto_178

    :catch_3d0
    move-exception v11

    :try_start_3d1
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    new-instance v36, Ljava/io/PrintWriter;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f7
    .catchall {:try_start_3d1 .. :try_end_3f7} :catchall_3f9

    goto/16 :goto_2ee

    :catchall_3f9
    move-exception v36

    monitor-exit v37

    throw v36

    :cond_3fc
    :try_start_3fc
    const-string/jumbo v36, "allowSpace"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "0,"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_420
    .catch Lorg/xml/sax/SAXException; {:try_start_3fc .. :try_end_420} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3fc .. :try_end_420} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3fc .. :try_end_420} :catch_421
    .catch Ljava/io/IOException; {:try_start_3fc .. :try_end_420} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_3fc .. :try_end_420} :catch_539
    .catchall {:try_start_3fc .. :try_end_420} :catchall_3f9

    goto :goto_3bc

    :catch_421
    move-exception v12

    :try_start_422
    invoke-virtual {v12}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    new-instance v36, Ljava/io/PrintWriter;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v36

    invoke-virtual {v12, v0}, Ljavax/xml/transform/TransformerException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_448
    .catchall {:try_start_422 .. :try_end_448} :catchall_3f9

    goto/16 :goto_2ee

    :cond_44a
    const/16 v36, 0x5

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_178

    :try_start_452
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "appType = SEAMSPolicy.BBC_SECURED_APPTYPE"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v31, "service"

    move-object/from16 v0, v31

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    const-string/jumbo v36, "name"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "bbcseinfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "bbcSpace"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    const/16 v38, 0x1f5

    move/from16 v0, v36

    move/from16 v1, v38

    if-ne v0, v1, :cond_514

    const-string/jumbo v36, "bbcAllowSpace"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "0,"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ",502-700"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c7
    const-string/jumbo v36, "sdcarduserid"

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_178

    const-string/jumbo v36, "agent"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e9
    .catch Lorg/xml/sax/SAXException; {:try_start_452 .. :try_end_4e9} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_452 .. :try_end_4e9} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_452 .. :try_end_4e9} :catch_421
    .catch Ljava/io/IOException; {:try_start_452 .. :try_end_4e9} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_452 .. :try_end_4e9} :catch_539
    .catchall {:try_start_452 .. :try_end_4e9} :catchall_3f9

    goto/16 :goto_178

    :catch_4eb
    move-exception v10

    :try_start_4ec
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    new-instance v36, Ljava/io/PrintWriter;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_512
    .catchall {:try_start_4ec .. :try_end_512} :catchall_3f9

    goto/16 :goto_2ee

    :cond_514
    :try_start_514
    const-string/jumbo v36, "bbcAllowSpace"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "0,501,"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_538
    .catch Lorg/xml/sax/SAXException; {:try_start_514 .. :try_end_538} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_514 .. :try_end_538} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_514 .. :try_end_538} :catch_421
    .catch Ljava/io/IOException; {:try_start_514 .. :try_end_538} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_514 .. :try_end_538} :catch_539
    .catchall {:try_start_514 .. :try_end_538} :catchall_3f9

    goto :goto_4c7

    :catch_539
    move-exception v8

    :try_start_53a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v32, Ljava/io/StringWriter;

    invoke-direct/range {v32 .. v32}, Ljava/io/StringWriter;-><init>()V

    new-instance v36, Ljava/io/PrintWriter;

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual/range {v32 .. v32}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v14

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_560
    .catchall {:try_start_53a .. :try_end_560} :catchall_3f9

    goto/16 :goto_2ee

    :cond_562
    const/16 v36, 0x1

    move/from16 v0, v36

    if-eq v4, v0, :cond_56e

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_617

    :cond_56e
    :try_start_56e
    const-string/jumbo v36, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v36, 0x3

    move/from16 v0, v36

    if-ne v4, v0, :cond_66d

    const-string/jumbo v36, "value"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "space"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->space:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "allowSpace"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "bbcSpace"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->bbcSpace:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "bbcAllowSpace"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcAllowSpace:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5e2
    const/16 v36, 0x2

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_61d

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_6a9

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_6a9

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac, same allowContainerSpace already exists for this package, return true and continue with next step"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_613
    .catch Lorg/xml/sax/SAXException; {:try_start_56e .. :try_end_613} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_56e .. :try_end_613} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_56e .. :try_end_613} :catch_421
    .catch Ljava/io/IOException; {:try_start_56e .. :try_end_613} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_56e .. :try_end_613} :catch_539
    .catchall {:try_start_56e .. :try_end_613} :catchall_3f9

    const/16 v36, -0x9

    monitor-exit v37

    return v36

    :cond_617
    const/16 v36, 0x3

    move/from16 v0, v36

    if-eq v4, v0, :cond_56e

    :cond_61d
    :goto_61d
    const/16 v16, 0x0

    :goto_61f
    :try_start_61f
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v36

    move/from16 v0, v16

    move/from16 v1, v36

    if-ge v0, v1, :cond_215

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v29

    check-cast v29, Lorg/w3c/dom/Element;

    const-string/jumbo v36, "signature"

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_819

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    if-eqz v15, :cond_6d3

    const/16 v36, 0x1

    move/from16 v0, v36

    if-ne v4, v0, :cond_6d3

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_1"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_669
    .catch Lorg/xml/sax/SAXException; {:try_start_61f .. :try_end_669} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_61f .. :try_end_669} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_61f .. :try_end_669} :catch_421
    .catch Ljava/io/IOException; {:try_start_61f .. :try_end_669} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_61f .. :try_end_669} :catch_539
    .catchall {:try_start_61f .. :try_end_669} :catchall_3f9

    const/16 v36, -0x9

    monitor-exit v37

    return v36

    :cond_66d
    :try_start_66d
    const-string/jumbo v36, "value"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "space"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->space:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "allowSpace"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5e2

    :cond_6a9
    const-string/jumbo v36, "space"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->space:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v36, "allowSpace"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_61d

    :cond_6d3
    if-eqz v15, :cond_6fb

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_6fb

    const/16 v36, 0x3

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_6fb

    const-string/jumbo v36, "1023"

    const-string/jumbo v38, "space"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    xor-int/lit8 v36, v36, 0x1

    if-nez v36, :cond_70b

    :cond_6fb
    if-eqz v15, :cond_720

    const/16 v36, 0x3

    move/from16 v0, v36

    if-ne v4, v0, :cond_720

    const/16 v36, 0x5

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_720

    :cond_70b
    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_2"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71c
    .catch Lorg/xml/sax/SAXException; {:try_start_66d .. :try_end_71c} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_66d .. :try_end_71c} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_66d .. :try_end_71c} :catch_421
    .catch Ljava/io/IOException; {:try_start_66d .. :try_end_71c} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_66d .. :try_end_71c} :catch_539
    .catchall {:try_start_66d .. :try_end_71c} :catchall_3f9

    const/16 v36, -0x9

    monitor-exit v37

    return v36

    :cond_720
    if-eqz v15, :cond_7de

    const/16 v36, 0x2

    move/from16 v0, v36

    if-ne v4, v0, :cond_7de

    const/16 v36, 0x4

    move/from16 v0, p5

    move/from16 v1, v36

    if-ne v0, v1, :cond_7de

    :try_start_730
    const-string/jumbo v36, "containerAllowSpace"

    move-object/from16 v0, v36

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    if-nez v36, :cond_750

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    const-string/jumbo v39, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_3"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_74c
    .catch Lorg/xml/sax/SAXException; {:try_start_730 .. :try_end_74c} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_730 .. :try_end_74c} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_730 .. :try_end_74c} :catch_421
    .catch Ljava/io/IOException; {:try_start_730 .. :try_end_74c} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_730 .. :try_end_74c} :catch_539
    .catchall {:try_start_730 .. :try_end_74c} :catchall_3f9

    const/16 v36, -0x9

    monitor-exit v37

    return v36

    :cond_750
    :try_start_750
    const-string/jumbo v36, "containerAllowSpace"

    move-object/from16 v0, v36

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_7a3

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "addEntryToMac, Existing "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-interface {v15}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, " entry for "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", return true and continue with next step"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79f
    .catch Lorg/xml/sax/SAXException; {:try_start_750 .. :try_end_79f} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_750 .. :try_end_79f} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_750 .. :try_end_79f} :catch_421
    .catch Ljava/io/IOException; {:try_start_750 .. :try_end_79f} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_750 .. :try_end_79f} :catch_539
    .catchall {:try_start_750 .. :try_end_79f} :catchall_3f9

    const/16 v36, -0x9

    monitor-exit v37

    return v36

    :cond_7a3
    :try_start_7a3
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v38, ","

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v38, "containerAllowSpace"

    move-object/from16 v0, v38

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v36, "containerAllowSpace"

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v17, 0x1

    goto/16 :goto_215

    :cond_7de
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v36, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v36, :cond_815

    sget-object v36, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v38, "SEAMSContainer"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "addEntryToMac, signature match found. Appending elem of ContainerType:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_815
    const/16 v17, 0x1

    goto/16 :goto_215

    :cond_819
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_61f

    :cond_81d
    new-instance v30, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_826
    .catch Lorg/xml/sax/SAXException; {:try_start_7a3 .. :try_end_826} :catch_2c7
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7a3 .. :try_end_826} :catch_3d0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7a3 .. :try_end_826} :catch_421
    .catch Ljava/io/IOException; {:try_start_7a3 .. :try_end_826} :catch_4eb
    .catch Ljava/lang/Exception; {:try_start_7a3 .. :try_end_826} :catch_539
    .catchall {:try_start_7a3 .. :try_end_826} :catchall_3f9

    goto/16 :goto_24b
.end method

.method private static checkCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 v3, 0x0

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v4, "SEAMSContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkCategory: existingContAllowSpace="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", newSpace="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    const-string/jumbo v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    move v2, v3

    :goto_35
    if-ge v2, v4, :cond_44

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    const/4 v2, 0x1

    return v2

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_44
    return v3
.end method

.method public static checkCategoryRange(Ljava/lang/String;III)I
    .registers 14

    const/4 v9, 0x1

    const/4 v5, 0x0

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_2d

    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMSContainer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkCategory: existingContAllowSpace="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", startRange="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_34
    array-length v6, v0

    move v4, v5

    :goto_36
    if-ge v4, v6, :cond_ed

    aget-object v2, v0, v4

    const-string/jumbo v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ab

    const-string/jumbo v7, "-"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_84

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gt v7, p2, :cond_84

    :cond_5c
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found other container space:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in contAllowCat is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :cond_84
    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_96

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_5c

    :cond_96
    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v7, p1, :cond_a8

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gt v7, p2, :cond_5c

    :cond_a8
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_ab
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_a8

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gt v7, p2, :cond_a8

    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Found other container space:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in contAllowCat:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_de} :catch_df

    return v9

    :catch_df
    move-exception v1

    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    const-string/jumbo v6, "NumberFormatException in checkCategoryRange"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    return v4

    :cond_ed
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v6, "SEAMSContainer"

    const-string/jumbo v7, "checkCategoryRange, FALSE is returned"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v5
.end method

.method private static checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .registers 10

    const/4 v5, 0x0

    if-nez p0, :cond_f

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMSContainer"

    const-string/jumbo v4, "checkContainerIDEntryExists: curElem is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_f
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    if-eqz p3, :cond_1b

    const/4 v2, 0x6

    if-ne p3, v2, :cond_98

    :cond_1b
    :goto_1b
    if-eqz v0, :cond_8a

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8b

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const-string/jumbo v2, "space"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string/jumbo v2, "bbcSpace"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    :cond_51
    const-string/jumbo v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    const-string/jumbo v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    :cond_6a
    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8b

    :cond_7a
    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_89

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMSContainer"

    const-string/jumbo v4, "checkContainerIDEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    move-object v1, v0

    :cond_8a
    :goto_8a
    return-object v1

    :cond_8b
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_1b

    :cond_92
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    :cond_98
    if-eqz v0, :cond_8a

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_92

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    const-string/jumbo v2, "space"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ce

    const-string/jumbo v2, "bbcSpace"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_92

    :cond_ce
    const-string/jumbo v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_92

    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_92

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_fa

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMSContainer"

    const-string/jumbo v4, "checkContainerIDEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fa
    move-object v1, v0

    goto :goto_8a
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 8

    const/4 v5, 0x0

    if-nez p0, :cond_f

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMSContainer"

    const-string/jumbo v4, "checkTrustedEntryExists: curElem is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_f
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    :goto_16
    if-eqz v0, :cond_5f

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_60

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string/jumbo v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_60

    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_60

    sget-boolean v2, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v2, :cond_5e

    sget-object v2, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v3, "SEAMSContainer"

    const-string/jumbo v4, "checkTrustedEntryExists, Match found..returning elem"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    move-object v1, v0

    :cond_5f
    return-object v1

    :cond_60
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    goto :goto_16
.end method

.method protected static getBbcEnabled()I
    .registers 4

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getBbcEnabled()I

    move-result v1

    return v1
.end method

.method private static getContainerType(I)I
    .registers 3

    const/16 v1, 0x1f4

    const/16 v0, 0xc7

    if-le p0, v0, :cond_a

    if-gt p0, v1, :cond_a

    :cond_8
    const/4 v0, 0x2

    return v0

    :cond_a
    const/16 v0, 0x3ff

    if-eq p0, v0, :cond_8

    if-le p0, v1, :cond_16

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_16

    const/4 v0, 0x3

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method protected static declared-synchronized getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 22

    const-class v16, Lcom/android/server/SEAMSContainer;

    monitor-enter v16

    :try_start_3
    sget-boolean v15, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v15, :cond_2b

    sget-object v15, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v17, "SEAMSContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getSignatureEntryFromMac packageName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    const/4 v12, 0x0

    const/4 v11, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_126

    move-result-object v4

    :try_start_31
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_e7

    sget-boolean v15, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v15, :cond_4f

    sget-object v15, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v17, "SEAMSContainer"

    const-string/jumbo v18, "macpermfile exists"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v15, "policy"

    invoke-interface {v3, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v15, 0x0

    invoke-interface {v9, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string/jumbo v15, "signer"

    invoke-interface {v8, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v10, 0x0

    sget-boolean v15, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v15, :cond_ab

    sget-object v15, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v17, "SEAMSContainer"

    const-string/jumbo v18, "Looking for matching entry in /data/security/<container>/mac_permissions.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v15, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v17, "SEAMSContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "the signer length is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ab
    const/4 v6, 0x0

    :goto_ac
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v6, v15, :cond_123

    invoke-interface {v13, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    :goto_be
    if-eqz v7, :cond_11c

    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v17, "seinfo"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_115

    const-string/jumbo v15, "name"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_115

    const-string/jumbo v15, "signature"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_e4} :catch_11f
    .catchall {:try_start_31 .. :try_end_e4} :catchall_126

    move-result-object v12

    monitor-exit v16

    return-object v12

    :cond_e7
    :try_start_e7
    sget-object v15, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v17, "SEAMSContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getSignatureEntryFromMac, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " does not exist, creating file"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_112} :catch_11f
    .catchall {:try_start_e7 .. :try_end_112} :catchall_126

    const/4 v15, 0x0

    monitor-exit v16

    return-object v15

    :cond_115
    :try_start_115
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_11b} :catch_11f
    .catchall {:try_start_115 .. :try_end_11b} :catchall_126

    goto :goto_be

    :cond_11c
    add-int/lit8 v6, v6, 0x1

    goto :goto_ac

    :catch_11f
    move-exception v5

    :try_start_120
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_123
    .catchall {:try_start_120 .. :try_end_123} :catchall_126

    :cond_123
    const/4 v15, 0x0

    monitor-exit v16

    return-object v15

    :catchall_126
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    if-nez p0, :cond_14

    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMSContainer"

    const-string/jumbo v9, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_14
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v7, 0x40

    :try_start_1b
    invoke-interface {v3, p0, v7, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_29
    array-length v7, v4

    if-ge v1, v7, :cond_38

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    :cond_38
    return-object v5

    :cond_39
    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMSContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSignatureFromPackage("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ") null is returned, check bbcuser."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/SEAMSContainer;->getBbcEnabled()I

    move-result v6

    const/16 v7, 0x40

    invoke-interface {v3, p0, v7, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_80

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_70
    array-length v7, v4

    if-ge v1, v7, :cond_7f

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_7f
    return-object v5

    :cond_80
    sget-object v7, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v8, "SEAMSContainer"

    const-string/jumbo v9, "getSignatureFromPackage: null is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_8b} :catch_8c

    return-object v11

    :catch_8c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v11
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v1

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method protected static declared-synchronized isContainerEmpty(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 29

    const-class v21, Lcom/android/server/SEAMSContainer;

    monitor-enter v21

    :try_start_3
    sget-boolean v20, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v20, :cond_18

    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "Entered isContainerEmpty in SEAMSContainer"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/16 v16, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_20f

    move-result-object v7

    :try_start_1e
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v20

    if-eqz v20, :cond_10f

    sget-boolean v20, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v20, :cond_3e

    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "macpermfile exists"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v20, "policy"

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v13, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    const-string/jumbo v20, "signer"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v19, 0x0

    const/4 v15, 0x0

    sget-boolean v20, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v20, :cond_95

    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "the signer length is "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    sget-boolean v20, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v20, :cond_aa

    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "Check if there is a package name match"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_aa
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_1dc

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    const-string/jumbo v20, "signature"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c7

    const-string/jumbo v20, "service"

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    const/16 v22, 0x2

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_140

    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_fa

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_140

    :cond_fa
    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "service entry different than expected"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10b
    .catch Lorg/xml/sax/SAXException; {:try_start_1e .. :try_end_10b} :catch_217
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1e .. :try_end_10b} :catch_212
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_10b} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_10b} :catch_1f1
    .catchall {:try_start_1e .. :try_end_10b} :catchall_20f

    const/16 v20, 0x0

    monitor-exit v21

    return v20

    :cond_10f
    :try_start_10f
    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isContainerEmpty, "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " does not exist, return failed "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13c
    .catch Lorg/xml/sax/SAXException; {:try_start_10f .. :try_end_13c} :catch_217
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10f .. :try_end_13c} :catch_212
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_13c} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_13c} :catch_1f1
    .catchall {:try_start_10f .. :try_end_13c} :catchall_20f

    const/16 v20, -0x1

    monitor-exit v21

    return v20

    :cond_140
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    :goto_143
    :try_start_143
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    move/from16 v0, v20

    if-ge v12, v0, :cond_1af

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    sget-boolean v20, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v20, :cond_182

    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "isContainerEmpty, curElem name: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "name"

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_182
    const-string/jumbo v20, "name"

    move-object/from16 v0, v20

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1ac

    sget-boolean v20, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v20, :cond_1aa

    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "isContainerEmpty, agent packagename with generic_mdm seinfo"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1aa
    .catch Lorg/xml/sax/SAXException; {:try_start_143 .. :try_end_1aa} :catch_217
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_143 .. :try_end_1aa} :catch_212
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_1aa} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_1aa} :catch_1f1
    .catchall {:try_start_143 .. :try_end_1aa} :catchall_20f

    :cond_1aa
    add-int/lit8 v3, v3, 0x1

    :cond_1ac
    add-int/lit8 v12, v12, 0x1

    goto :goto_143

    :cond_1af
    const/16 v20, 0x2

    move/from16 v0, v20

    if-eq v3, v0, :cond_1c3

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_1f5

    const/16 v20, 0x1

    move/from16 v0, p3

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f5

    :cond_1c3
    const/16 v20, 0x1

    monitor-exit v21

    return v20

    :cond_1c7
    :try_start_1c7
    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "Container has signature mis-match with agent"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d8
    .catch Lorg/xml/sax/SAXException; {:try_start_1c7 .. :try_end_1d8} :catch_217
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1c7 .. :try_end_1d8} :catch_212
    .catch Ljava/io/IOException; {:try_start_1c7 .. :try_end_1d8} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_1d8} :catch_1f1
    .catchall {:try_start_1c7 .. :try_end_1d8} :catchall_20f

    const/16 v20, -0x1

    monitor-exit v21

    return v20

    :cond_1dc
    :try_start_1dc
    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "Container non-empty"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ed
    .catch Lorg/xml/sax/SAXException; {:try_start_1dc .. :try_end_1ed} :catch_217
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1dc .. :try_end_1ed} :catch_212
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_1ed} :catch_20a
    .catch Ljava/lang/Exception; {:try_start_1dc .. :try_end_1ed} :catch_1f1
    .catchall {:try_start_1dc .. :try_end_1ed} :catchall_20f

    const/16 v20, 0x0

    monitor-exit v21

    return v20

    :catch_1f1
    move-exception v8

    :try_start_1f2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f5
    :goto_1f5
    sget-object v20, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v22, "SEAMSContainer"

    const-string/jumbo v23, "isContainerEmpty, POLICY_FAILED is returned"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_206
    .catchall {:try_start_1f2 .. :try_end_206} :catchall_20f

    const/16 v20, -0x1

    monitor-exit v21

    return v20

    :catch_20a
    move-exception v9

    :try_start_20b
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_20e
    .catchall {:try_start_20b .. :try_end_20e} :catchall_20f

    goto :goto_1f5

    :catchall_20f
    move-exception v20

    monitor-exit v21

    throw v20

    :catch_212
    move-exception v10

    :try_start_213
    invoke-virtual {v10}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1f5

    :catch_217
    move-exception v11

    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_21b
    .catchall {:try_start_213 .. :try_end_21b} :catchall_20f

    goto :goto_1f5
.end method

.method private static removeCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    array-length v5, v3

    :goto_c
    if-ge v4, v5, :cond_37

    aget-object v0, v3, v4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v1, 0x1

    :goto_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1a
    if-nez v2, :cond_1e

    move-object v2, v0

    goto :goto_17

    :cond_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_37
    if-eqz v1, :cond_5a

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_59

    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeCategory, return: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    return-object v2

    :cond_5a
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    const-string/jumbo v6, "removeCategory, null is returned"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method protected static declared-synchronized removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 38

    const-class v29, Lcom/android/server/SEAMSContainer;

    monitor-enter v29

    :try_start_3
    sget-boolean v28, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v28, :cond_18

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    const-string/jumbo v31, "removeEntryFromMac_begin"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/4 v15, 0x0

    const/16 v21, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_486

    move-result-object v7

    :try_start_1f
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_22
    .catch Lorg/xml/sax/SAXException; {:try_start_1f .. :try_end_22} :catch_480
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1f .. :try_end_22} :catch_49b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1f .. :try_end_22} :catch_495
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_48f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_489
    .catchall {:try_start_1f .. :try_end_22} :catchall_486

    move-result-object v5

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_25
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcom/android/server/SEAMSContainer;->getContainerType(I)I
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2c} :catch_238
    .catch Lorg/xml/sax/SAXException; {:try_start_25 .. :try_end_2c} :catch_480
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_25 .. :try_end_2c} :catch_49b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_25 .. :try_end_2c} :catch_495
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_48f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_489
    .catchall {:try_start_25 .. :try_end_2c} :catchall_486

    move-result v4

    :try_start_2d
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_26a

    sget-boolean v28, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v28, :cond_48

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    const-string/jumbo v31, "macpermfile exists"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_48
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v28

    if-nez v28, :cond_57

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_57
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v28, "policy"

    move-object/from16 v0, v28

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    const/16 v17, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Element;

    const-string/jumbo v28, "signer"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v19, 0x0

    sget-boolean v28, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v28, :cond_c5

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    const-string/jumbo v31, "Looking for matching entry in /data/security/<container>/mac_permissions.xml"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "the signer length is "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c5
    const/4 v14, 0x0

    :goto_c6
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    move/from16 v0, v28

    if-ge v14, v0, :cond_1bb

    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    const-string/jumbo v28, "signature"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_44d

    sget-boolean v28, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v28, :cond_115

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "matched signature found "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_115
    const/16 v28, 0x2

    move/from16 v0, v28

    if-ne v4, v0, :cond_29b

    const/16 v28, 0x3

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_125

    if-nez p4, :cond_29b

    :cond_125
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v19

    :goto_131
    if-eqz v19, :cond_2e5

    const/16 v28, 0x1

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_143

    const/16 v28, 0x3

    move/from16 v0, p4

    move/from16 v1, v28

    if-ne v0, v1, :cond_2d3

    :cond_143
    const-string/jumbo v28, "space"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_16d

    const-string/jumbo v28, "bbcSpace"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_36a

    :cond_16d
    sget-boolean v28, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v28, :cond_1ad

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "removeEntryFromMac, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " match found for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "..deleting elem"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ad
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v15, 0x1

    :cond_1bb
    :goto_1bb
    if-eqz v15, :cond_451

    const-string/jumbo v28, "service"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v28

    if-nez v28, :cond_1d5

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1d5
    sget-boolean v28, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v28, :cond_1ea

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    const-string/jumbo v31, "removeEntryFromMac, Match found..deleted elem...writing to file"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1ea
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v26

    new-instance v25, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v20, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    sget-boolean v28, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v28, :cond_227

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    const-string/jumbo v31, " removeEntryFromMac, entry removed from mac_permissions.xml"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_227
    :goto_227
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v28

    if-eqz v28, :cond_236

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_236
    .catch Lorg/xml/sax/SAXException; {:try_start_2d .. :try_end_236} :catch_480
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2d .. :try_end_236} :catch_49b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2d .. :try_end_236} :catch_495
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_236} :catch_48f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_236} :catch_489
    .catchall {:try_start_2d .. :try_end_236} :catchall_486

    :cond_236
    :goto_236
    monitor-exit v29

    return v15

    :catch_238
    move-exception v9

    :try_start_239
    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "space: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " integer parse failed"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_266
    .catch Lorg/xml/sax/SAXException; {:try_start_239 .. :try_end_266} :catch_480
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_239 .. :try_end_266} :catch_49b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_239 .. :try_end_266} :catch_495
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_266} :catch_48f
    .catch Ljava/lang/Exception; {:try_start_239 .. :try_end_266} :catch_489
    .catchall {:try_start_239 .. :try_end_266} :catchall_486

    const/16 v28, 0x0

    monitor-exit v29

    return v28

    :cond_26a
    :try_start_26a
    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "removeEntryFromMac, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " does not exist, creating file"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_297
    .catch Lorg/xml/sax/SAXException; {:try_start_26a .. :try_end_297} :catch_480
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_26a .. :try_end_297} :catch_49b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_26a .. :try_end_297} :catch_495
    .catch Ljava/io/IOException; {:try_start_26a .. :try_end_297} :catch_48f
    .catch Ljava/lang/Exception; {:try_start_26a .. :try_end_297} :catch_489
    .catchall {:try_start_26a .. :try_end_297} :catchall_486

    const/16 v28, 0x0

    monitor-exit v29

    return v28

    :cond_29b
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v4, v0, :cond_2b1

    const/16 v28, 0x5

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_125

    const/16 v28, 0x6

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_125

    :cond_2b1
    if-eqz p4, :cond_2bb

    const/16 v28, 0x6

    move/from16 v0, p4

    move/from16 v1, v28

    if-ne v0, v1, :cond_2c9

    :cond_2bb
    :try_start_2bb
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v19

    goto/16 :goto_131

    :cond_2c9
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    goto/16 :goto_131

    :cond_2d3
    const/16 v28, 0x5

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_143

    if-eqz p4, :cond_143

    const/16 v28, 0x6

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_143

    :cond_2e5
    if-eqz v19, :cond_423

    const/16 v28, 0x4

    move/from16 v0, p4

    move/from16 v1, v28

    if-eq v0, v1, :cond_2f7

    const/16 v28, 0x2

    move/from16 v0, p4

    move/from16 v1, v28

    if-ne v0, v1, :cond_423

    :cond_2f7
    const/16 v28, 0x2

    move/from16 v0, v28

    if-ne v4, v0, :cond_3cd

    const/16 v28, 0x4

    move/from16 v0, p4

    move/from16 v1, v28

    if-ne v0, v1, :cond_3cd

    const-string/jumbo v28, "containerAllowSpace"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_394

    sget-boolean v28, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v28, :cond_35a

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "removeEntryFromMac, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " match found for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "..deleting elem"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35a
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v15, 0x1

    goto/16 :goto_1bb

    :cond_36a
    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "removeEntryFromMac, no match found for"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_390
    .catch Lorg/xml/sax/SAXException; {:try_start_2bb .. :try_end_390} :catch_480
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2bb .. :try_end_390} :catch_49b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2bb .. :try_end_390} :catch_495
    .catch Ljava/io/IOException; {:try_start_2bb .. :try_end_390} :catch_48f
    .catch Ljava/lang/Exception; {:try_start_2bb .. :try_end_390} :catch_489
    .catchall {:try_start_2bb .. :try_end_390} :catchall_486

    const/16 v28, 0x0

    monitor-exit v29

    return v28

    :cond_394
    :try_start_394
    sget-boolean v28, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v28, :cond_3a9

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    const-string/jumbo v31, "it is for Generic Trusted with partial space match"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a9
    const-string/jumbo v28, "containerAllowSpace"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->removeCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_44d

    const-string/jumbo v28, "containerAllowSpace"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    goto/16 :goto_1bb

    :cond_3cd
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v4, v0, :cond_44d

    sget-boolean v28, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v28, :cond_413

    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "removeEntryFromMac, "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " match found for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, "..deleting elem"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_413
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const/4 v15, 0x1

    goto/16 :goto_1bb

    :cond_423
    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Signature matches but no entry for "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_449
    .catch Lorg/xml/sax/SAXException; {:try_start_394 .. :try_end_449} :catch_480
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_394 .. :try_end_449} :catch_49b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_394 .. :try_end_449} :catch_495
    .catch Ljava/io/IOException; {:try_start_394 .. :try_end_449} :catch_48f
    .catch Ljava/lang/Exception; {:try_start_394 .. :try_end_449} :catch_489
    .catchall {:try_start_394 .. :try_end_449} :catchall_486

    const/16 v28, 0x0

    monitor-exit v29

    return v28

    :cond_44d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_c6

    :cond_451
    :try_start_451
    sget-object v28, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v30, "SEAMSContainer"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, " removeEntryFromMac, No match for packageName:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, ". Please check again"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47e
    .catch Lorg/xml/sax/SAXException; {:try_start_451 .. :try_end_47e} :catch_480
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_451 .. :try_end_47e} :catch_49b
    .catch Ljavax/xml/transform/TransformerException; {:try_start_451 .. :try_end_47e} :catch_495
    .catch Ljava/io/IOException; {:try_start_451 .. :try_end_47e} :catch_48f
    .catch Ljava/lang/Exception; {:try_start_451 .. :try_end_47e} :catch_489
    .catchall {:try_start_451 .. :try_end_47e} :catchall_486

    goto/16 :goto_227

    :catch_480
    move-exception v13

    :try_start_481
    invoke-virtual {v13}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_484
    .catchall {:try_start_481 .. :try_end_484} :catchall_486

    goto/16 :goto_236

    :catchall_486
    move-exception v28

    monitor-exit v29

    throw v28

    :catch_489
    move-exception v8

    :try_start_48a
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_236

    :catch_48f
    move-exception v10

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_236

    :catch_495
    move-exception v12

    invoke-virtual {v12}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_236

    :catch_49b
    move-exception v11

    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_49f
    .catchall {:try_start_48a .. :try_end_49f} :catchall_486

    goto/16 :goto_236
.end method

.method protected static declared-synchronized updateEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I
    .registers 51

    const-class v36, Lcom/android/server/SEAMSContainer;

    monitor-enter v36

    :try_start_3
    sget-boolean v35, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v35, :cond_18

    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    const-string/jumbo v38, "updateEntryToMac_begin"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v34, 0x0

    invoke-static {}, Lcom/android/server/SEAMSContainer;->getBbcEnabled()I

    move-result v34

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_361

    move-result-object v6

    const/4 v5, 0x0

    :try_start_26
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v35

    if-eqz v35, :cond_2b7

    sget-boolean v35, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v35, :cond_5a

    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "macPermFile exists "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v35

    if-nez v35, :cond_69

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_69
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    const/16 v16, 0x1

    :goto_71
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Element;->normalize()V

    const-string/jumbo v35, "policy"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    const/16 v19, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    check-cast v19, Lorg/w3c/dom/Element;

    const-string/jumbo v35, "signer"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    const/16 v27, 0x0

    const/16 v26, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v24, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x5

    move/from16 v0, p6

    move/from16 v1, v35

    if-ne v0, v1, :cond_364

    const-string/jumbo v29, "service"

    move-object/from16 v0, v29

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    const-string/jumbo v35, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "bbcseinfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "bbcSpace"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "0"

    move-object/from16 v0, p5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_327

    const-string/jumbo v35, "bbcAllowSpace"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "0,"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ",502-700"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_112
    const-string/jumbo v35, "sdcarduserid"

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_134

    const-string/jumbo v35, "agent"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_134
    sget-boolean v35, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v35, :cond_149

    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    const-string/jumbo v38, "updateEntryToMac - done with preparing entry"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_149
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    const-string/jumbo v35, "signer"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    const-string/jumbo v35, "seinfo"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    const-string/jumbo v35, "allow-all"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string/jumbo v35, "signature"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "value"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcseInfo:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "space"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->space:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "allowSpace"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "bbcSpace"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->bbcSpace:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "bbcAllowSpace"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcAllowSpace:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    :goto_1d7
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    move/from16 v0, v35

    if-ge v14, v0, :cond_429

    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Element;

    const-string/jumbo v35, "signature"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4a8

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/server/SEAMSContainer;->checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    if-eqz v12, :cond_484

    const-string/jumbo v18, ""

    const/16 v31, 0x0

    const-string/jumbo v35, "bbcAllowSpace"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz p8, :cond_3d6

    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    const-string/jumbo v38, "updateEntryToMac, removeFlag is true"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v35, "[,]"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    const/16 v35, 0x0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v37, v0

    :goto_237
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_41e

    aget-object v30, v31, v35

    sget-object v38, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v39, "SEAMSContainer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "updateEntryToMac, removeFlag is true tmpAllowSpace = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",allowSpace = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "0"

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_285

    move-object/from16 v0, v30

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_38e

    :cond_285
    sget-object v38, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v39, "SEAMSContainer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "updateEntryToMac, removeFlag is true skip tmpAllowSpace = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, ",allowSpace = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b4
    add-int/lit8 v35, v35, 0x1

    goto :goto_237

    :cond_2b7
    sget-boolean v35, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v35, :cond_2e8

    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "updateEntryToMac,"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " does not exist, creating file"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e8
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v35

    if-nez v35, :cond_2fa

    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_2fa
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    const-string/jumbo v35, "policy"

    move-object/from16 v0, v35

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_30c
    .catch Lorg/xml/sax/SAXException; {:try_start_26 .. :try_end_30c} :catch_30e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_26 .. :try_end_30c} :catch_35c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_26 .. :try_end_30c} :catch_3d0
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_30c} :catch_4bc
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_30c} :catch_4b6
    .catchall {:try_start_26 .. :try_end_30c} :catchall_361

    goto/16 :goto_71

    :catch_30e
    move-exception v11

    :try_start_30f
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V

    :goto_312
    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    const-string/jumbo v38, "updateEntryToMac, POLICY_FAILED is returned"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_323
    .catchall {:try_start_30f .. :try_end_323} :catchall_361

    const/16 v35, -0x1

    monitor-exit v36

    return v35

    :cond_327
    :try_start_327
    const-string/jumbo v35, "bbcAllowSpace"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "0,"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, ","

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35a
    .catch Lorg/xml/sax/SAXException; {:try_start_327 .. :try_end_35a} :catch_30e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_327 .. :try_end_35a} :catch_35c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_327 .. :try_end_35a} :catch_3d0
    .catch Ljava/io/IOException; {:try_start_327 .. :try_end_35a} :catch_4bc
    .catch Ljava/lang/Exception; {:try_start_327 .. :try_end_35a} :catch_4b6
    .catchall {:try_start_327 .. :try_end_35a} :catchall_361

    goto/16 :goto_112

    :catch_35c
    move-exception v9

    :try_start_35d
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_360
    .catchall {:try_start_35d .. :try_end_360} :catchall_361

    goto :goto_312

    :catchall_361
    move-exception v35

    monitor-exit v36

    throw v35

    :cond_364
    :try_start_364
    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "updateEntryToMac is not supported for apptype:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38a
    .catch Lorg/xml/sax/SAXException; {:try_start_364 .. :try_end_38a} :catch_30e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_364 .. :try_end_38a} :catch_35c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_364 .. :try_end_38a} :catch_3d0
    .catch Ljava/io/IOException; {:try_start_364 .. :try_end_38a} :catch_4bc
    .catch Ljava/lang/Exception; {:try_start_364 .. :try_end_38a} :catch_4b6
    .catchall {:try_start_364 .. :try_end_38a} :catchall_361

    const/16 v35, -0x1

    monitor-exit v36

    return v35

    :cond_38e
    :try_start_38e
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ","

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v38, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v39, "SEAMSContainer"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "updateEntryToMac, removeFlag is true newValue = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3ce
    .catch Lorg/xml/sax/SAXException; {:try_start_38e .. :try_end_3ce} :catch_30e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_38e .. :try_end_3ce} :catch_35c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_38e .. :try_end_3ce} :catch_3d0
    .catch Ljava/io/IOException; {:try_start_38e .. :try_end_3ce} :catch_4bc
    .catch Ljava/lang/Exception; {:try_start_38e .. :try_end_3ce} :catch_4b6
    .catchall {:try_start_38e .. :try_end_3ce} :catchall_361

    goto/16 :goto_2b4

    :catch_3d0
    move-exception v10

    :try_start_3d1
    invoke-virtual {v10}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_3d4
    .catchall {:try_start_3d1 .. :try_end_3d4} :catchall_361

    goto/16 :goto_312

    :cond_3d6
    :try_start_3d6
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v37, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "updateEntryToMac, removeFlag is false newValue = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41e
    const-string/jumbo v35, "bbcAllowSpace"

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    :cond_429
    :goto_429
    if-nez v15, :cond_445

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_445
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Element;->normalize()V

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v32

    const/16 v28, 0x0

    if-eqz v16, :cond_4ac

    new-instance v28, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v28

    invoke-direct {v0, v5}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    :goto_45f
    new-instance v21, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v35

    if-eqz v35, :cond_480

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_480
    .catch Lorg/xml/sax/SAXException; {:try_start_3d6 .. :try_end_480} :catch_30e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3d6 .. :try_end_480} :catch_35c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3d6 .. :try_end_480} :catch_3d0
    .catch Ljava/io/IOException; {:try_start_3d6 .. :try_end_480} :catch_4bc
    .catch Ljava/lang/Exception; {:try_start_3d6 .. :try_end_480} :catch_4b6
    .catchall {:try_start_3d6 .. :try_end_480} :catchall_361

    :cond_480
    const/16 v35, 0x0

    monitor-exit v36

    return v35

    :cond_484
    :try_start_484
    move-object/from16 v0, v25

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    sget-boolean v35, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v35, :cond_4a6

    sget-object v35, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v37, "SEAMSContainer"

    const-string/jumbo v38, "updateEntryToMac, signature match found. Appending elem of ContainerType:"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a6
    const/4 v15, 0x1

    goto :goto_429

    :cond_4a8
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1d7

    :cond_4ac
    new-instance v28, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_4b5
    .catch Lorg/xml/sax/SAXException; {:try_start_484 .. :try_end_4b5} :catch_30e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_484 .. :try_end_4b5} :catch_35c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_484 .. :try_end_4b5} :catch_3d0
    .catch Ljava/io/IOException; {:try_start_484 .. :try_end_4b5} :catch_4bc
    .catch Ljava/lang/Exception; {:try_start_484 .. :try_end_4b5} :catch_4b6
    .catchall {:try_start_484 .. :try_end_4b5} :catchall_361

    goto :goto_45f

    :catch_4b6
    move-exception v7

    :try_start_4b7
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_312

    :catch_4bc
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4c0
    .catchall {:try_start_4b7 .. :try_end_4c0} :catchall_361

    goto/16 :goto_312
.end method


# virtual methods
.method public activateDomain(IZ)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method

.method public addAgentEntryAfterFotaAndReload()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 6

    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 27

    monitor-enter p0

    const/4 v9, 0x0

    const/16 v16, 0x0

    :try_start_4
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_43

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v14}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_43

    const/4 v1, 0x1

    invoke-virtual {v14, v1}, Ljava/io/File;->setWritable(Z)Z

    :cond_43
    new-instance v18, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_6e} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_6e} :catch_176
    .catchall {:try_start_4 .. :try_end_6e} :catchall_1c4

    :try_start_6e
    new-instance v17, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_6e .. :try_end_7c} :catch_1f8
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_7c} :catch_1fc
    .catchall {:try_start_6e .. :try_end_7c} :catchall_1e7

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    :try_start_8b
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/SEAMSContainer;->getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_af

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the added seapp context line is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_af
    :goto_af
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_118

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e9

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V
    :try_end_c3
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_c3} :catch_c4
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_c3} :catch_200
    .catchall {:try_start_8b .. :try_end_c3} :catchall_1ea

    goto :goto_af

    :catch_c4
    move-exception v12

    move-object/from16 v16, v17

    move-object v9, v10

    :goto_c8
    :try_start_c8
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e6
    .catchall {:try_start_c8 .. :try_end_e6} :catchall_1c4

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :cond_e9
    :try_start_e9
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_115

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Could not delete the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_115
    .catch Ljava/io/FileNotFoundException; {:try_start_e9 .. :try_end_115} :catch_c4
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_115} :catch_200
    .catchall {:try_start_e9 .. :try_end_115} :catchall_1ea

    :cond_115
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_118
    :try_start_118
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_14d

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14a
    .catch Ljava/io/FileNotFoundException; {:try_start_118 .. :try_end_14a} :catch_c4
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_14a} :catch_200
    .catchall {:try_start_118 .. :try_end_14a} :catchall_1ea

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :cond_14d
    :try_start_14d
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_1c7

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not rename file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_173
    .catch Ljava/io/FileNotFoundException; {:try_start_14d .. :try_end_173} :catch_c4
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_173} :catch_200
    .catchall {:try_start_14d .. :try_end_173} :catchall_1ea

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catch_176
    move-exception v13

    :goto_177
    :try_start_177
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Other Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19c
    .catchall {:try_start_177 .. :try_end_19c} :catchall_1c4

    if-eqz v9, :cond_1a2

    :try_start_19e
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    const/4 v9, 0x0

    :cond_1a2
    if-eqz v16, :cond_1a9

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a7} :catch_1b7
    .catchall {:try_start_19e .. :try_end_1a7} :catchall_1c4

    const/16 v16, 0x0

    :cond_1a9
    :goto_1a9
    :try_start_1a9
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "addSEAppContext, POLICY_FAILED is returned"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b4
    .catchall {:try_start_1a9 .. :try_end_1b4} :catchall_1c4

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catch_1b7
    move-exception v11

    :try_start_1b8
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c3
    .catchall {:try_start_1b8 .. :try_end_1c3} :catchall_1c4

    goto :goto_1a9

    :catchall_1c4
    move-exception v1

    :goto_1c5
    monitor-exit p0

    throw v1

    :cond_1c7
    if-eqz v10, :cond_209

    :try_start_1c9
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_1d7
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_1ea

    const/4 v9, 0x0

    :goto_1cd
    if-eqz v17, :cond_206

    :try_start_1cf
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d2} :catch_1f3
    .catchall {:try_start_1cf .. :try_end_1d2} :catchall_1ef

    const/16 v16, 0x0

    :goto_1d4
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :catch_1d7
    move-exception v11

    move-object v9, v10

    :goto_1d9
    :try_start_1d9
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e4
    .catchall {:try_start_1d9 .. :try_end_1e4} :catchall_1ef

    move-object/from16 v16, v17

    goto :goto_1d4

    :catchall_1e7
    move-exception v1

    move-object v9, v10

    goto :goto_1c5

    :catchall_1ea
    move-exception v1

    move-object/from16 v16, v17

    move-object v9, v10

    goto :goto_1c5

    :catchall_1ef
    move-exception v1

    move-object/from16 v16, v17

    goto :goto_1c5

    :catch_1f3
    move-exception v11

    goto :goto_1d9

    :catch_1f5
    move-exception v12

    goto/16 :goto_c8

    :catch_1f8
    move-exception v12

    move-object v9, v10

    goto/16 :goto_c8

    :catch_1fc
    move-exception v13

    move-object v9, v10

    goto/16 :goto_177

    :catch_200
    move-exception v13

    move-object/from16 v16, v17

    move-object v9, v10

    goto/16 :goto_177

    :cond_206
    move-object/from16 v16, v17

    goto :goto_1d4

    :cond_209
    move-object v9, v10

    goto :goto_1cd
.end method

.method public changeAppDomain(Ljava/lang/String;ILjava/lang/String;Z)I
    .registers 6

    const/4 v0, -0x1

    return v0
.end method

.method public createSEContainer(II)I
    .registers 4

    const/4 v0, -0x1

    return v0
.end method

.method public deActivateDomain(I)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method protected deleteSEContainerClipboardTableEntry(II)I
    .registers 15

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const-string/jumbo v8, "containerID"

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const-string/jumbo v8, "mode"

    const/4 v9, 0x1

    aput-object v8, v5, v9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v4, 0x0

    :try_start_30
    iget-object v8, p0, Lcom/android/server/SEAMSContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "SeamsClipboardTable"

    const-string/jumbo v10, "mode"

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-nez v8, :cond_5c

    :cond_44
    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMSContainer"

    const-string/jumbo v10, "cvOld null or size 0"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMSContainer"

    const-string/jumbo v10, "no entry in database to delete"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    return v8

    :cond_5c
    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Checking if entry already exists:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/SEAMSContainer;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "SeamsClipboardTable"

    invoke-virtual {v8, v9, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSEContainerClipboardTable: ret = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_a1} :catch_a7

    if-eqz v4, :cond_a5

    const/4 v8, 0x0

    :goto_a4
    return v8

    :cond_a5
    const/4 v8, -0x1

    goto :goto_a4

    :catch_a7
    move-exception v3

    sget-object v8, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSEContainerClipboardTable Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, -0x1

    return v8
.end method

.method public getActivationStatus()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method protected getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .registers 10

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    sget-boolean v4, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v4, :cond_12

    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    const-string/jumbo v6, "entered getMDMID"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    sget-object v4, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-nez v4, :cond_37

    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    const-string/jumbo v6, "MDMID package name is null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_37
    iget-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/SEAMSContainer;->getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_51

    :cond_45
    sget-object v4, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v5, "SEAMSContainer"

    const-string/jumbo v6, "MDMID certs are null"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    :cond_51
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    return-object v1
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    sget-object v5, Lcom/android/server/SEAMSContainer;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v1, 0x0

    :goto_17
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_30

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x1

    return v5

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_30
    const/4 v5, 0x0

    return v5
.end method

.method public loadContainerSetting(Ljava/lang/String;IZ)I
    .registers 9

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_2b

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadContainerSetting_begin packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "containerID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    const/4 v0, -0x1

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_34
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "loadContainerSetting, packageName is null or empty"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_40
    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_4f

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "loadContainerSetting, before calling updateAppInfo"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/SEAMSContainer;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_72

    sget-boolean v1, Lcom/samsung/android/knox/seams/SEAMSPolicy;->DEBUG:Z

    if-eqz v1, :cond_71

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "loadContainerSetting, done with updateAppInfoForPackage"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    const/4 v0, 0x0

    :cond_72
    return v0
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 6

    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 28

    monitor-enter p0

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    :try_start_5
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1d

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "Parameter is not an existing file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_1a} :catch_19e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1a} :catch_139
    .catchall {:try_start_5 .. :try_end_1a} :catchall_17c

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :cond_1d
    :try_start_1d
    new-instance v19, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_48} :catch_19e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_48} :catch_139
    .catchall {:try_start_1d .. :try_end_48} :catchall_17c

    :try_start_48
    new-instance v17, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, v19

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_56
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_56} :catch_1a1
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_56} :catch_1a5
    .catchall {:try_start_48 .. :try_end_56} :catchall_190

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    :try_start_65
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/SEAMSContainer;->getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    :goto_69
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a8

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->flush()V
    :try_end_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_65 .. :try_end_7f} :catch_80
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_7f} :catch_1a8
    .catchall {:try_start_65 .. :try_end_7f} :catchall_193

    goto :goto_69

    :catch_80
    move-exception v12

    move-object/from16 v16, v17

    move-object v8, v9

    :goto_84
    :try_start_84
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_17c

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :cond_a5
    add-int/lit8 v10, v10, 0x1

    goto :goto_69

    :cond_a8
    :try_start_a8
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    if-nez v10, :cond_e9

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_d9

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z
    :try_end_d9
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_d9} :catch_80
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_d9} :catch_1a8
    .catchall {:try_start_a8 .. :try_end_d9} :catchall_193

    :cond_d9
    if-eqz v9, :cond_1b1

    :try_start_db
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_17f
    .catchall {:try_start_db .. :try_end_de} :catchall_193

    const/4 v8, 0x0

    :goto_df
    if-eqz v17, :cond_1ad

    :try_start_e1
    invoke-virtual/range {v17 .. v17}, Ljava/io/PrintWriter;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_19c
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_198

    const/16 v16, 0x0

    :goto_e6
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_e9
    :try_start_e9
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_110

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catch Ljava/io/FileNotFoundException; {:try_start_e9 .. :try_end_10d} :catch_80
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_10d} :catch_1a8
    .catchall {:try_start_e9 .. :try_end_10d} :catchall_193

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :cond_110
    :try_start_110
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_d9

    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not rename file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_136
    .catch Ljava/io/FileNotFoundException; {:try_start_110 .. :try_end_136} :catch_80
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_136} :catch_1a8
    .catchall {:try_start_110 .. :try_end_136} :catchall_193

    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catch_139
    move-exception v13

    :goto_13a
    :try_start_13a
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Other Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15f
    .catchall {:try_start_13a .. :try_end_15f} :catchall_17c

    if-eqz v8, :cond_165

    :try_start_161
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    const/4 v8, 0x0

    :cond_165
    if-eqz v16, :cond_16c

    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_161 .. :try_end_16a} :catch_16f
    .catchall {:try_start_161 .. :try_end_16a} :catchall_17c

    const/16 v16, 0x0

    :cond_16c
    :goto_16c
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    :catch_16f
    move-exception v11

    :try_start_170
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17b
    .catchall {:try_start_170 .. :try_end_17b} :catchall_17c

    goto :goto_16c

    :catchall_17c
    move-exception v1

    :goto_17d
    monitor-exit p0

    throw v1

    :catch_17f
    move-exception v11

    move-object v8, v9

    :goto_181
    :try_start_181
    sget-object v1, Lcom/android/server/SEAMSContainer;->mSKLog:Lcom/android/server/SKLogger;

    const-string/jumbo v2, "SEAMSContainer"

    const-string/jumbo v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18c
    .catchall {:try_start_181 .. :try_end_18c} :catchall_198

    move-object/from16 v16, v17

    goto/16 :goto_e6

    :catchall_190
    move-exception v1

    move-object v8, v9

    goto :goto_17d

    :catchall_193
    move-exception v1

    move-object/from16 v16, v17

    move-object v8, v9

    goto :goto_17d

    :catchall_198
    move-exception v1

    move-object/from16 v16, v17

    goto :goto_17d

    :catch_19c
    move-exception v11

    goto :goto_181

    :catch_19e
    move-exception v12

    goto/16 :goto_84

    :catch_1a1
    move-exception v12

    move-object v8, v9

    goto/16 :goto_84

    :catch_1a5
    move-exception v13

    move-object v8, v9

    goto :goto_13a

    :catch_1a8
    move-exception v13

    move-object/from16 v16, v17

    move-object v8, v9

    goto :goto_13a

    :cond_1ad
    move-object/from16 v16, v17

    goto/16 :goto_e6

    :cond_1b1
    move-object v8, v9

    goto/16 :goto_df
.end method

.method public removeSEContainer(III)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method public restartApp(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    return v0
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .registers 8

    const/4 v0, -0x1

    return v0
.end method

.method public updateSeappContextsAndReload()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method
