.class public Lorg/apache/http/impl/cookie/BrowserCompatSpec;
.super Lorg/apache/http/impl/cookie/CookieSpecBase;
.source "BrowserCompatSpec.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field private static final DEFAULT_DATE_PATTERNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE, dd-MMM-yy HH:mm:ss zzz"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE MMM d HH:mm:ss yyyy"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE, dd MMM yy HH:mm:ss z"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE dd-MMM-yyyy HH:mm:ss z"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE dd MMM yyyy HH:mm:ss z"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE dd-MMM-yyyy HH-mm-ss z"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE dd-MMM-yy HH:mm:ss z"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE dd MMM yy HH:mm:ss z"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE,dd-MMM-yy HH:mm:ss z"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "EEE, dd-MM-yyyy HH:mm:ss z"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_DEFAULT:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;-><init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;)V
    .registers 7

    const/4 v0, 0x7

    new-array v1, v0, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatVersionAttributeHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BrowserCompatVersionAttributeHandler;-><init>()V

    const/4 v2, 0x0

    aput-object v0, v1, v2

    new-instance v0, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;->SECURITYLEVEL_IE_MEDIUM:Lorg/apache/http/impl/cookie/BrowserCompatSpecFactory$SecurityLevel;

    const/4 v2, 0x2

    if-eq p2, v0, :cond_47

    new-instance v0, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    :goto_1d
    aput-object v0, v1, v2

    new-instance v0, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    new-instance v0, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v2, 0x4

    aput-object v0, v1, v2

    new-instance v0, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const/4 v2, 0x5

    aput-object v0, v1, v2

    new-instance v2, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    const/4 v3, 0x6

    if-nez p1, :cond_4d

    sget-object v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->DEFAULT_DATE_PATTERNS:[Ljava/lang/String;

    :goto_3e
    invoke-direct {v2, v0}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v2, v1, v3

    invoke-direct {p0, v1}, Lorg/apache/http/impl/cookie/CookieSpecBase;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    return-void

    :cond_47
    new-instance v0, Lorg/apache/http/impl/cookie/BrowserCompatSpec$1;

    invoke-direct {v0}, Lorg/apache/http/impl/cookie/BrowserCompatSpec$1;-><init>()V

    goto :goto_1d

    :cond_4d
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_3e
.end method

.method private static isQuoteEnclosed(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const-string/jumbo v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public formatCookies(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const-string/jumbo v6, "List of cookies"

    invoke-static {p1, v6}, Lorg/apache/http/util/Args;->notEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    mul-int/lit8 v6, v6, 0x14

    invoke-direct {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    const-string/jumbo v6, "Cookie"

    invoke-virtual {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string/jumbo v6, ": "

    invoke-virtual {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1f
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_34

    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {v6, v0}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v4

    :cond_34
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    if-gtz v5, :cond_58

    :goto_3c
    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v6

    if-gtz v6, :cond_5f

    :cond_4a
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    const-string/jumbo v6, "="

    invoke-virtual {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    if-nez v3, :cond_70

    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_58
    const-string/jumbo v6, "; "

    invoke-virtual {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_3c

    :cond_5f
    invoke-static {v3}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->isQuoteEnclosed(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4a

    sget-object v6, Lorg/apache/http/message/BasicHeaderValueFormatter;->INSTANCE:Lorg/apache/http/message/BasicHeaderValueFormatter;

    new-instance v7, Lorg/apache/http/message/BasicHeaderElement;

    invoke-direct {v7, v2, v3}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0, v7, v8}, Lorg/apache/http/message/BasicHeaderValueFormatter;->formatHeaderElement(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/HeaderElement;Z)Lorg/apache/http/util/CharArrayBuffer;

    goto :goto_55

    :cond_70
    invoke-virtual {v0, v3}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_55
.end method

.method public getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionHeader()Lorg/apache/http/Header;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/Header;",
            "Lorg/apache/http/cookie/CookieOrigin;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    const-string/jumbo v22, "Header"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v22, "Cookie origin"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v22, "Set-Cookie"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7a

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v12

    const/16 v21, 0x0

    const/16 v17, 0x0

    move-object v2, v12

    array-length v15, v2

    const/4 v13, 0x0

    :goto_2e
    if-lt v13, v15, :cond_9f

    if-eqz v17, :cond_c1

    :cond_32
    sget-object v18, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->DEFAULT:Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;

    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/FormattedHeader;

    move/from16 v22, v0

    if-nez v22, :cond_cc

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_e9

    new-instance v5, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    invoke-direct {v5, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    new-instance v7, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v22

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-direct {v7, v0, v1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    :goto_61
    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v7}, Lorg/apache/http/impl/cookie/NetscapeDraftHeaderParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/HeaderElement;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v20

    if-nez v16, :cond_f2

    :cond_71
    new-instance v22, Lorg/apache/http/cookie/MalformedCookieException;

    const-string/jumbo v23, "Cookie name may not be empty"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_7a
    new-instance v22, Lorg/apache/http/cookie/MalformedCookieException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unrecognized cookie header \'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "\'"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_9f
    aget-object v11, v2, v13

    const-string/jumbo v22, "version"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v22

    if-nez v22, :cond_bb

    :goto_ac
    const-string/jumbo v22, "expires"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/apache/http/HeaderElement;->getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;

    move-result-object v22

    if-nez v22, :cond_be

    :goto_b7
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2e

    :cond_bb
    const/16 v21, 0x1

    goto :goto_ac

    :cond_be
    const/16 v17, 0x1

    goto :goto_b7

    :cond_c1
    if-eqz v21, :cond_32

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v12, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v22

    return-object v22

    :cond_cc
    move-object/from16 v22, p1

    check-cast v22, Lorg/apache/http/FormattedHeader;

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/FormattedHeader;->getBuffer()Lorg/apache/http/util/CharArrayBuffer;

    move-result-object v5

    new-instance v7, Lorg/apache/http/message/ParserCursor;

    check-cast p1, Lorg/apache/http/FormattedHeader;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/FormattedHeader;->getValuePos()I

    move-result v22

    invoke-virtual {v5}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v7, v0, v1}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    goto/16 :goto_61

    :cond_e9
    new-instance v22, Lorg/apache/http/cookie/MalformedCookieException;

    const-string/jumbo v23, "Header value is null"

    invoke-direct/range {v22 .. v23}, Lorg/apache/http/cookie/MalformedCookieException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_f2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_71

    new-instance v6, Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v6, v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v4

    array-length v0, v4

    move/from16 v22, v0

    add-int/lit8 v14, v22, -0x1

    :goto_11c
    if-gez v14, :cond_125

    if-nez v17, :cond_153

    :goto_120
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    return-object v22

    :cond_125
    aget-object v3, v4, v14

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BrowserCompatSpec;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    move-result-object v9

    if-nez v9, :cond_149

    :goto_146
    add-int/lit8 v14, v14, -0x1

    goto :goto_11c

    :cond_149
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v9, v6, v0}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_146

    :cond_153
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    goto :goto_120
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "compatibility"

    return-object v0
.end method
