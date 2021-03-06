.class public Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;
.super Ljava/lang/Object;
.source "RFC6265CookieSpecProvider.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$2;,
        Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final compatibilityLevel:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;

.field private final publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .registers 3

    sget-object v0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .registers 3

    sget-object v0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    sget-object p1, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    :cond_7
    iput-object p1, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->compatibilityLevel:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    iput-object p2, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .registers 8

    iget-object v2, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-eqz v2, :cond_7

    :goto_4
    iget-object v2, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object v2

    :cond_7
    move-object v0, p0

    monitor-enter p0

    :try_start_9
    iget-object v2, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-eqz v2, :cond_12

    :goto_d
    monitor-exit p0

    goto :goto_4

    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v1

    :cond_12
    :try_start_12
    sget-object v2, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$2;->$SwitchMap$org$apache$http$impl$cookie$RFC6265CookieSpecProvider$CompatibilityLevel:[I

    iget-object v3, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->compatibilityLevel:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    invoke-virtual {v3}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_d0

    new-instance v2, Lorg/apache/http/impl/cookie/RFC6265LaxSpec;

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v4, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v5, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v4, v5}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/LaxMaxAgeHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/LaxMaxAgeHandler;-><init>()V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/LaxExpiresHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/LaxExpiresHandler;-><init>()V

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lorg/apache/http/impl/cookie/RFC6265LaxSpec;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object v2, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    goto :goto_d

    :pswitch_58
    new-instance v2, Lorg/apache/http/impl/cookie/RFC6265StrictSpec;

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v4, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v5, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v4, v5}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    sget-object v5, Lorg/apache/http/impl/cookie/RFC6265StrictSpec;->DATE_PATTERNS:[Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lorg/apache/http/impl/cookie/RFC6265StrictSpec;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object v2, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    goto/16 :goto_d

    :pswitch_94
    new-instance v2, Lorg/apache/http/impl/cookie/RFC6265LaxSpec;

    const/4 v3, 0x5

    new-array v3, v3, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v4, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$1;

    invoke-direct {v4, p0}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$1;-><init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v5, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v4, v5}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v5, 0x2

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v4}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    new-instance v4, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    sget-object v5, Lorg/apache/http/impl/cookie/RFC6265StrictSpec;->DATE_PATTERNS:[Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lorg/apache/http/impl/cookie/RFC6265LaxSpec;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object v2, p0, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    :try_end_ce
    .catchall {:try_start_12 .. :try_end_ce} :catchall_f

    goto/16 :goto_d

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_58
        :pswitch_94
    .end packed-switch
.end method
