.class public abstract Lorg/apache/http/impl/cookie/CookieSpecBase;
.super Lorg/apache/http/impl/cookie/AbstractCookieSpec;
.source "CookieSpecBase.java"


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/cookie/CookieAttributeHandler;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;-><init>(Ljava/util/HashMap;)V

    return-void
.end method

.method protected varargs constructor <init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/AbstractCookieSpec;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    return-void
.end method

.method protected static getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/apache/http/cookie/CookieOrigin;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_e

    :goto_d
    return-object v0

    :cond_e
    if-eqz v1, :cond_15

    :goto_10
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_15
    const/4 v1, 0x1

    goto :goto_10
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .registers 7

    const/4 v3, 0x0

    const-string/jumbo v2, "Cookie"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "Cookie origin"

    invoke-static {p2, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x1

    return v2

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v2

    if-nez v2, :cond_15

    return v3
.end method

.method protected parse([Lorg/apache/http/HeaderElement;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/HeaderElement;",
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

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    array-length v14, v0

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v1, p1

    move-object/from16 v0, p1

    array-length v10, v0

    const/4 v8, 0x0

    :goto_e
    if-lt v8, v10, :cond_11

    return-object v5

    :cond_11
    aget-object v7, p1, v8

    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;

    move-result-object v13

    if-nez v11, :cond_20

    :cond_1d
    :goto_1d
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_20
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1d

    new-instance v4, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-direct {v4, v11, v13}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getDefaultPath(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getDefaultDomain(Lorg/apache/http/cookie/CookieOrigin;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    invoke-interface {v7}, Lorg/apache/http/HeaderElement;->getParameters()[Lorg/apache/http/NameValuePair;

    move-result-object v3

    array-length v14, v3

    add-int/lit8 v9, v14, -0x1

    :goto_40
    if-gez v9, :cond_46

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_46
    aget-object v2, v3, v9

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v14, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v12, v14}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lorg/apache/http/impl/cookie/CookieSpecBase;->findAttribHandler(Ljava/lang/String;)Lorg/apache/http/cookie/CookieAttributeHandler;

    move-result-object v6

    if-nez v6, :cond_64

    :goto_61
    add-int/lit8 v9, v9, -0x1

    goto :goto_40

    :cond_64
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v4, v14}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    goto :goto_61
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    const-string/jumbo v2, "Cookie"

    invoke-static {p1, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v2, "Cookie origin"

    invoke-static {p2, v2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/http/impl/cookie/CookieSpecBase;->getAttribHandlers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    return-void

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    goto :goto_14
.end method
