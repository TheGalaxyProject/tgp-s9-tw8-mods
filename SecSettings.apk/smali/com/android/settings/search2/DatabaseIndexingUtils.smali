.class public Lcom/android/settings/search2/DatabaseIndexingUtils;
.super Ljava/lang/Object;
.source "DatabaseIndexingUtils.java"


# static fields
.field private static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search2/DatabaseIndexingUtils;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_4} :catch_c

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search2/DatabaseIndexingUtils;->isIndexableClass(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_28

    :goto_b
    return-object v0

    :catch_c
    move-exception v1

    const-string/jumbo v3, "IndexingUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_28
    move-object v0, v2

    goto :goto_b
.end method

.method public static getPayloadFromUriMap(Ljava/util/Map;Ljava/lang/String;)Lcom/android/settings/search2/ResultPayload;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/core/PreferenceController;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/settings/search2/ResultPayload;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/core/PreferenceController;

    if-nez v0, :cond_d

    return-object v1

    :cond_d
    invoke-virtual {v0}, Lcom/android/settings/core/PreferenceController;->getResultPayload()Lcom/android/settings/search2/ResultPayload;

    move-result-object v1

    return-object v1
.end method

.method public static getPreferenceControllerUriMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/core/PreferenceController;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    if-nez p1, :cond_4

    return-object v9

    :cond_4
    invoke-static {p0}, Lcom/android/settings/search2/DatabaseIndexingUtils;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3d

    const-string/jumbo v6, "IndexingUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SearchIndexableResource \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\' should implement the "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-class v8, Lcom/android/settings/search/Indexable;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " interface!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_3d
    invoke-static {v0}, Lcom/android/settings/search2/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_48

    return-object v9

    :cond_48
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/core/PreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/core/PreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    :cond_65
    return-object v4
.end method

.method public static getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    const/4 v7, 0x0

    :try_start_1
    const-string/jumbo v5, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/Indexable$SearchIndexProvider;
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_f} :catch_31
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_f} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_f} :catch_10

    return-object v5

    :catch_10
    move-exception v1

    const-string/jumbo v5, "IndexingUtil"

    const-string/jumbo v6, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-object v7

    :catch_1b
    move-exception v0

    const-string/jumbo v5, "IndexingUtil"

    const-string/jumbo v6, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :catch_26
    move-exception v4

    const-string/jumbo v5, "IndexingUtil"

    const-string/jumbo v6, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :catch_31
    move-exception v2

    const-string/jumbo v5, "IndexingUtil"

    const-string/jumbo v6, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public static isIndexableClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_9

    const-class v0, Lcom/android/settings/search/Indexable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isPrivilegedPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_6
    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_e} :catch_14

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_13

    const/4 v3, 0x1

    :cond_13
    return v3

    :catch_14
    move-exception v0

    return v3
.end method

.method public static isWellKnownProvider(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z
    .registers 8

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    return v5

    :cond_18
    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v4, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v3, v4, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    :cond_2c
    return v5

    :cond_2d
    const-string/jumbo v4, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    const-string/jumbo v4, "android.permission.READ_SEARCH_INDEXABLES"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_42

    :cond_41
    return v5

    :cond_42
    invoke-static {v1, p1}, Lcom/android/settings/search2/DatabaseIndexingUtils;->isPrivilegedPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    return v4
.end method

.method public static normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_d

    const-string/jumbo v0, "\u2011"

    const-string/jumbo v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string/jumbo v0, ""

    goto :goto_c
.end method

.method public static normalizeKeywords(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_d

    const-string/jumbo v0, "[,]\\s*"

    const-string/jumbo v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string/jumbo v0, ""

    goto :goto_c
.end method

.method public static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_24

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/search2/DatabaseIndexingUtils;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_24
    const-string/jumbo v0, ""

    goto :goto_c
.end method
