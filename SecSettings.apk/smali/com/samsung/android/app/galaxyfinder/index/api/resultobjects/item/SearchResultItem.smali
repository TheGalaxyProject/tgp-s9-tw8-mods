.class public abstract Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;
.super Ljava/lang/Object;
.source "SearchResultItem.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/common/IResultItem;


# static fields
.field private static final RESERVED_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final RESULT_ITEM_VER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final jsonActions:Lorg/json/JSONArray;

.field private final jsonObject:Lorg/json/JSONObject;

.field private mId:J

.field private mViewAction:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ObjectId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ObjectType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ObjectVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    const-string/jumbo v1, "ObjectViewActions"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(JLandroid/content/Intent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "0.1.13"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESULT_ITEM_VER:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonActions:Lorg/json/JSONArray;

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->mId:J

    if-nez p3, :cond_25

    :goto_24
    return-void

    :cond_25
    new-instance v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;

    const-string/jumbo v1, "_view"

    invoke-direct {v0, v1, p3}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/action/ResultAction;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->mViewAction:Lorg/json/JSONObject;

    goto :goto_24
.end method

.method private isReservedKeyword(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->RESERVED_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getId()J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->mId:J

    return-wide v0
.end method

.method public final getVersion()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "0.1.13"

    return-object v0
.end method

.method final put(Ljava/lang/String;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final put(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method final put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->isReservedKeyword(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_26

    return-void

    :cond_c
    new-instance v1, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The name is reserved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_26
    move-exception v0

    new-instance v1, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toJSONObject()Lorg/json/JSONObject;
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->getId()J

    move-result-wide v2

    const-string/jumbo v4, "ObjectId"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ObjectType"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ObjectVersion"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->mViewAction:Lorg/json/JSONObject;

    if-nez v1, :cond_35

    :goto_28
    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonActions:Lorg/json/JSONArray;

    const-string/jumbo v3, "ObjectActions"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_32} :catch_44

    :goto_32
    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    return-object v1

    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->jsonObject:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->mViewAction:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ObjectViewActions"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_43} :catch_44

    goto :goto_28

    :catch_44
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Fail to get JsonString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyfinder/index/util/SearchLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method
