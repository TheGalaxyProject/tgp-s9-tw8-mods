.class public Lorg/apache/http/impl/cookie/PublicSuffixFilter;
.super Ljava/lang/Object;
.source "PublicSuffixFilter.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieAttributeHandler;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private exceptions:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private matcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

.field private suffixes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/cookie/CookieAttributeHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    return-void
.end method

.method private isForPublicSuffix(Lorg/apache/http/cookie/Cookie;)Z
    .registers 5

    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->matcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    if-eqz v0, :cond_f

    :goto_4
    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->matcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/util/PublicSuffixMatcher;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_f
    new-instance v0, Lorg/apache/http/conn/util/PublicSuffixMatcher;

    iget-object v1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Collection;

    iget-object v2, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Collection;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/conn/util/PublicSuffixMatcher;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->matcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    goto :goto_4
.end method


# virtual methods
.method public match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->isForPublicSuffix(Lorg/apache/http/cookie/Cookie;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v0

    return v0

    :cond_e
    return v1
.end method

.method public parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->parse(Lorg/apache/http/cookie/SetCookie;Ljava/lang/String;)V

    return-void
.end method

.method public setExceptions(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->exceptions:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->matcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-void
.end method

.method public setPublicSuffixes(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->suffixes:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->matcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-void
.end method

.method public validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/cookie/MalformedCookieException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/impl/cookie/PublicSuffixFilter;->wrapped:Lorg/apache/http/cookie/CookieAttributeHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/cookie/CookieAttributeHandler;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    return-void
.end method
