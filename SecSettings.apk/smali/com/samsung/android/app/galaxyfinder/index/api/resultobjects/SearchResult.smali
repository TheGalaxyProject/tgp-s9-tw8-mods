.class public Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field private final categories:Lorg/json/JSONArray;

.field private totalCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->categories:Lorg/json/JSONArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->totalCount:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->categories:Lorg/json/JSONArray;

    iput p1, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->totalCount:I

    return-void
.end method


# virtual methods
.method public addCategory(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->categories:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-void
.end method

.method public getTotalCount()I
    .registers 2

    iget v0, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->totalCount:I

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    iget v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->totalCount:I

    const-string/jumbo v3, "totalCount"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->categories:Lorg/json/JSONArray;

    const-string/jumbo v3, "categories"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_15} :catch_16

    return-object v1

    :catch_16
    move-exception v0

    new-instance v2, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
