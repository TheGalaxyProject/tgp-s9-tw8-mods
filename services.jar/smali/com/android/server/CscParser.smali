.class public Lcom/android/server/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CscParser$Holder;
    }
.end annotation


# static fields
.field public static final KEY_REGION:Ljava/lang/String; = "GeneralInfo.Region"

.field public static final KEY_SALESCODE:Ljava/lang/String; = "GeneralInfo.SalesCode"


# instance fields
.field private mDocument:Lorg/w3c/dom/Document;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/CscParser;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/CscParser;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCustomerInstance()Lcom/android/server/CscParser;
    .registers 2

    const-class v0, Lcom/android/server/CscParser;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/server/CscParser$Holder;->sInstance:Lcom/android/server/CscParser;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 9

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v4, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return-object v5

    :cond_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v3, :cond_27

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    return-object v0

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_27
    return-object v5
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-nez v1, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_15
    return-object v2
.end method

.method public getValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v2, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return-object v3

    :cond_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3a

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_19
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_35

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_35
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3a
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isLoaded()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public load(Ljava/lang/String;)Z
    .registers 11

    const/4 v8, 0x0

    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_8} :catch_1e

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_29

    const-string/jumbo v5, "CscParser"

    const-string/jumbo v6, "File didn\'t exist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_1e
    move-exception v2

    const-string/jumbo v5, "CscParser"

    const-string/jumbo v6, "ParserConfigurationException is occured"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_29
    :try_start_29
    invoke-virtual {v0, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;
    :try_end_2f
    .catch Lorg/xml/sax/SAXException; {:try_start_29 .. :try_end_2f} :catch_4d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_31

    const/4 v5, 0x1

    return v5

    :catch_31
    move-exception v1

    const-string/jumbo v5, "CscParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IOException is occured"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4c
    return v8

    :catch_4d
    move-exception v3

    const-string/jumbo v5, "CscParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SAXException is occured"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v3, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return-object v4

    :cond_8
    iget-object v3, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_23

    return-object v4

    :cond_23
    invoke-direct {p0, v0, v1}, Lcom/android/server/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_16

    :cond_28
    return-object v0
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .registers 12

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    if-eqz v6, :cond_7

    if-nez p1, :cond_8

    :cond_7
    return-object v8

    :cond_8
    :try_start_8
    iget-object v6, p0, Lcom/android/server/CscParser;->mDocument:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v5, :cond_3a

    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_38

    move-result v6

    if-eqz v6, :cond_30

    :try_start_2d
    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_33

    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :catch_33
    move-exception v2

    :try_start_34
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    :catch_38
    move-exception v2

    return-object v8

    :cond_3a
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3d} :catch_38

    move-result-object v6

    return-object v6
.end method
