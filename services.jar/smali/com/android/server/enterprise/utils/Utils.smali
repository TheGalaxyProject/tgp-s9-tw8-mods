.class public Lcom/android/server/enterprise/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static TAG:Ljava/lang/String; = null

.field public static final WHITELIST:Ljava/lang/String; = "WHITELIST"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "EnterpriseUtils"

    sput-object v0, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertListToString(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_d

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-static {p1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static deserializeObject([B)Ljava/lang/Object;
    .registers 7

    const/4 v5, 0x0

    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_12} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    return-object v3

    :catch_13
    move-exception v0

    return-object v5

    :catch_15
    move-exception v1

    return-object v5
.end method

.method public static deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 14

    const/4 v10, 0x0

    if-nez p0, :cond_4

    return-object v10

    :cond_4
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :try_start_7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const/4 v8, 0x0

    invoke-static {p0, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_11} :catch_69
    .catchall {:try_start_7 .. :try_end_11} :catchall_c5

    :try_start_11
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_d7
    .catchall {:try_start_11 .. :try_end_16} :catchall_c8

    :try_start_16
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_1b} :catch_da
    .catchall {:try_start_16 .. :try_end_1b} :catchall_cc

    :try_start_1b
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1e} :catch_de
    .catchall {:try_start_1b .. :try_end_1e} :catchall_d1

    move-result-object v11

    if-eqz v7, :cond_24

    :try_start_21
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_52
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_24} :catch_34
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_c0

    :cond_24
    move-object v8, v10

    :goto_25
    if-eqz v5, :cond_2a

    :try_start_27
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_54
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_2a} :catch_34
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_c0

    :cond_2a
    move-object v9, v8

    :cond_2b
    :goto_2b
    if-eqz v1, :cond_30

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_5e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_30} :catch_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_c0

    :cond_30
    move-object v8, v9

    :cond_31
    :goto_31
    if-eqz v8, :cond_68

    :try_start_33
    throw v8
    :try_end_34
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_34} :catch_34
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_34} :catch_c0

    :catch_34
    move-exception v3

    move-object v6, v7

    move-object v4, v5

    move-object v0, v1

    :goto_38
    sget-object v8, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ClassNotFoundException to Deserialize Object from String: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :catch_52
    move-exception v8

    goto :goto_25

    :catch_54
    move-exception v9

    if-eqz v8, :cond_2b

    if-eq v8, v9, :cond_2a

    :try_start_59
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v9, v8

    goto :goto_2b

    :catch_5e
    move-exception v8

    if-eqz v9, :cond_31

    if-eq v9, v8, :cond_30

    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_66
    .catch Ljava/lang/ClassNotFoundException; {:try_start_59 .. :try_end_66} :catch_34
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_66} :catch_c0

    move-object v8, v9

    goto :goto_31

    :cond_68
    return-object v11

    :catch_69
    move-exception v8

    :goto_6a
    :try_start_6a
    throw v8
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception v9

    move-object v12, v9

    move-object v9, v8

    move-object v8, v12

    :goto_6f
    if-eqz v6, :cond_74

    :try_start_71
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_85
    .catch Ljava/lang/ClassNotFoundException; {:try_start_71 .. :try_end_74} :catch_83
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_90

    :cond_74
    :goto_74
    if-eqz v4, :cond_79

    :try_start_76
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_79} :catch_ab
    .catch Ljava/lang/ClassNotFoundException; {:try_start_76 .. :try_end_79} :catch_83
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_90

    :cond_79
    move-object v11, v9

    :cond_7a
    :goto_7a
    if-eqz v0, :cond_7f

    :try_start_7c
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_b5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7c .. :try_end_7f} :catch_83
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_90

    :cond_7f
    move-object v9, v11

    :cond_80
    :goto_80
    if-eqz v9, :cond_bf

    :try_start_82
    throw v9

    :catch_83
    move-exception v3

    goto :goto_38

    :catch_85
    move-exception v11

    if-nez v9, :cond_8a

    move-object v9, v11

    goto :goto_74

    :cond_8a
    if-eq v9, v11, :cond_74

    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_8f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_82 .. :try_end_8f} :catch_83
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8f} :catch_90

    goto :goto_74

    :catch_90
    move-exception v2

    :goto_91
    sget-object v8, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IOException to Deserialize Object from String: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v10

    :catch_ab
    move-exception v11

    if-eqz v9, :cond_7a

    if-eq v9, v11, :cond_79

    :try_start_b0
    invoke-virtual {v9, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v11, v9

    goto :goto_7a

    :catch_b5
    move-exception v9

    if-eqz v11, :cond_80

    if-eq v11, v9, :cond_7f

    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v9, v11

    goto :goto_80

    :cond_bf
    throw v8
    :try_end_c0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b0 .. :try_end_c0} :catch_83
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_c0} :catch_90

    :catch_c0
    move-exception v2

    move-object v6, v7

    move-object v4, v5

    move-object v0, v1

    goto :goto_91

    :catchall_c5
    move-exception v8

    move-object v9, v10

    goto :goto_6f

    :catchall_c8
    move-exception v8

    move-object v0, v1

    move-object v9, v10

    goto :goto_6f

    :catchall_cc
    move-exception v8

    move-object v4, v5

    move-object v0, v1

    move-object v9, v10

    goto :goto_6f

    :catchall_d1
    move-exception v8

    move-object v6, v7

    move-object v4, v5

    move-object v0, v1

    move-object v9, v10

    goto :goto_6f

    :catch_d7
    move-exception v8

    move-object v0, v1

    goto :goto_6a

    :catch_da
    move-exception v8

    move-object v4, v5

    move-object v0, v1

    goto :goto_6a

    :catch_de
    move-exception v8

    move-object v6, v7

    move-object v4, v5

    move-object v0, v1

    goto :goto_6a
.end method

.method public static getMessagePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v1, "com.android.mms"

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    invoke-virtual {v4, v5, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-object v1

    :cond_15
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1d} :catch_1e

    :goto_1d
    return-object v3

    :catch_1e
    move-exception v0

    move-object v3, v1

    goto :goto_1d
.end method

.method private static getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/util/Set",
            "<TT;>;TT;)I"
        }
    .end annotation

    if-eqz p2, :cond_13

    const/4 v0, 0x0

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, 0x1

    :cond_12
    return v0

    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public static isBlacklisted(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;TT;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "WHITELIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const-string/jumbo v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "BLACKLIST"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2f
    const/4 v0, 0x1

    return v0

    :cond_31
    return v1
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .registers 4

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_4} :catch_8
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_4} :catch_6

    const/4 v2, 0x1

    return v2

    :catch_6
    move-exception v0

    return v2

    :catch_8
    move-exception v1

    return v2
.end method

.method private static isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_5

    if-nez p0, :cond_e

    :cond_5
    sget-object v1, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "invalid param, pkgInfo or signature null"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_e
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    array-length v2, p1

    if-ne v1, v2, :cond_3a

    const/4 v0, 0x0

    :goto_25
    array-length v1, p1

    if-ge v0, v1, :cond_38

    aget-object v1, p1, v0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    return v3

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :cond_38
    const/4 v1, 0x1

    return v1

    :cond_3a
    return v3
.end method

.method public static makeEffectiveLists(Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;TT;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TT;>;>;"
        }
    .end annotation

    const-string/jumbo v4, "WHITELIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    return-object p1

    :cond_10
    const-string/jumbo v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    return-object p0

    :cond_20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "BLACKLIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "WHITELIST"

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string/jumbo v4, "BLACKLIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string/jumbo v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "WHITELIST"

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v4, "BLACKLIST"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4, v5, p2}, Lcom/android/server/enterprise/utils/Utils;->getNumWildcardSets(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f4

    const-string/jumbo v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    const-string/jumbo v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    :goto_c9
    const-string/jumbo v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "WHITELIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0

    :cond_f4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_12d

    const-string/jumbo v4, "BLACKLIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v4, p2}, Lcom/android/server/enterprise/utils/Utils;->isNonWildcardSet(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12a

    move-object v1, v0

    move-object v2, p1

    :goto_108
    const-string/jumbo v4, "WHITELIST"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    const-string/jumbo v4, "WHITELIST"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_c9

    :cond_12a
    move-object v1, p1

    move-object v2, v0

    goto :goto_108

    :cond_12d
    const-string/jumbo v4, "WHITELIST"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string/jumbo v4, "WHITELIST"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    const-string/jumbo v5, "BLACKLIST"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_c9
.end method

.method public static readPropertyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/4 v12, 0x0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_26

    sget-object v9, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "File Not Found : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_26
    :try_start_26
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2b} :catch_6e

    new-instance v3, Ljava/io/BufferedReader;

    const/16 v9, 0x200

    invoke-direct {v3, v4, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v6, 0x0

    :cond_33
    :try_start_33
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_95

    const-string/jumbo v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    const-string/jumbo v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8c

    const/4 v9, 0x1

    aget-object v8, v7, v9

    :goto_57
    const-string/jumbo v9, "null"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5d} :catch_a7
    .catchall {:try_start_33 .. :try_end_5d} :catchall_bd

    move-result v9

    if-eqz v9, :cond_61

    const/4 v8, 0x0

    :cond_61
    if-eqz v4, :cond_67

    :try_start_63
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    const/4 v4, 0x0

    :cond_67
    if-eqz v3, :cond_6d

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6c} :catch_90

    const/4 v3, 0x0

    :cond_6d
    :goto_6d
    return-object v8

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-object v9, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "File access error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v12

    :cond_8c
    :try_start_8c
    const-string/jumbo v8, ""
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_a7
    .catchall {:try_start_8c .. :try_end_8f} :catchall_bd

    goto :goto_57

    :catch_90
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6d

    :cond_95
    if-eqz v4, :cond_9b

    :try_start_97
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    const/4 v4, 0x0

    :cond_9b
    if-eqz v3, :cond_a1

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_a0} :catch_a2

    const/4 v3, 0x0

    :cond_a1
    :goto_a1
    return-object v12

    :catch_a2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a1

    :catch_a7
    move-exception v2

    :try_start_a8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_bd

    if-eqz v4, :cond_b1

    :try_start_ad
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    const/4 v4, 0x0

    :cond_b1
    if-eqz v3, :cond_b7

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b6} :catch_b8

    const/4 v3, 0x0

    :cond_b7
    :goto_b7
    return-object v12

    :catch_b8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b7

    :catchall_bd
    move-exception v9

    if-eqz v4, :cond_c4

    :try_start_c0
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    const/4 v4, 0x0

    :cond_c4
    if-eqz v3, :cond_ca

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c9} :catch_cb

    const/4 v3, 0x0

    :cond_ca
    :goto_ca
    throw v9

    :catch_cb
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ca
.end method

.method public static serializeObject(Ljava/lang/Object;)[B
    .registers 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-interface {v3, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/io/ObjectOutput;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_15

    move-result-object v1

    return-object v1

    :catch_15
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v4, 0x0

    return-object v4
.end method

.method public static serializeObjectToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 13

    const/4 v9, 0x0

    if-nez p0, :cond_4

    return-object v9

    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_74
    .catchall {:try_start_7 .. :try_end_c} :catchall_b0

    :try_start_c
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v4, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_c2
    .catchall {:try_start_c .. :try_end_11} :catchall_b3

    :try_start_11
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_16} :catch_c5
    .catchall {:try_start_11 .. :try_end_16} :catchall_b7

    :try_start_16
    invoke-virtual {v6, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    new-instance v10, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2a} :catch_c9
    .catchall {:try_start_16 .. :try_end_2a} :catchall_bc

    if-eqz v6, :cond_2f

    :try_start_2c
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_5d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_3f

    :cond_2f
    move-object v7, v9

    :goto_30
    if-eqz v4, :cond_35

    :try_start_32
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_5f
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_3f

    :cond_35
    move-object v8, v7

    :cond_36
    :goto_36
    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_69
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3f

    :cond_3b
    move-object v7, v8

    :cond_3c
    :goto_3c
    if-eqz v7, :cond_73

    :try_start_3e
    throw v7
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3f} :catch_3f

    :catch_3f
    move-exception v2

    move-object v5, v6

    move-object v3, v4

    move-object v0, v1

    :goto_43
    sget-object v7, Lcom/android/server/enterprise/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException to Serialize Object to String: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :catch_5d
    move-exception v7

    goto :goto_30

    :catch_5f
    move-exception v8

    if-eqz v7, :cond_36

    if-eq v7, v8, :cond_35

    :try_start_64
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v7

    goto :goto_36

    :catch_69
    move-exception v7

    if-eqz v8, :cond_3c

    if-eq v8, v7, :cond_3b

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_71} :catch_3f

    move-object v7, v8

    goto :goto_3c

    :cond_73
    return-object v10

    :catch_74
    move-exception v7

    :goto_75
    :try_start_75
    throw v7
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_7a
    if-eqz v5, :cond_7f

    :try_start_7c
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7f} :catch_90
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_8e

    :cond_7f
    :goto_7f
    if-eqz v3, :cond_84

    :try_start_81
    invoke-virtual {v3}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_84} :catch_9b
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_8e

    :cond_84
    move-object v10, v8

    :cond_85
    :goto_85
    if-eqz v0, :cond_8a

    :try_start_87
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8a} :catch_a5
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8e

    :cond_8a
    move-object v8, v10

    :cond_8b
    :goto_8b
    if-eqz v8, :cond_af

    :try_start_8d
    throw v8

    :catch_8e
    move-exception v2

    goto :goto_43

    :catch_90
    move-exception v10

    if-nez v8, :cond_95

    move-object v8, v10

    goto :goto_7f

    :cond_95
    if-eq v8, v10, :cond_7f

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7f

    :catch_9b
    move-exception v10

    if-eqz v8, :cond_85

    if-eq v8, v10, :cond_84

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v8

    goto :goto_85

    :catch_a5
    move-exception v8

    if-eqz v10, :cond_8b

    if-eq v10, v8, :cond_8a

    invoke-virtual {v10, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v10

    goto :goto_8b

    :cond_af
    throw v7
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_b0} :catch_8e

    :catchall_b0
    move-exception v7

    move-object v8, v9

    goto :goto_7a

    :catchall_b3
    move-exception v7

    move-object v0, v1

    move-object v8, v9

    goto :goto_7a

    :catchall_b7
    move-exception v7

    move-object v3, v4

    move-object v0, v1

    move-object v8, v9

    goto :goto_7a

    :catchall_bc
    move-exception v7

    move-object v5, v6

    move-object v3, v4

    move-object v0, v1

    move-object v8, v9

    goto :goto_7a

    :catch_c2
    move-exception v7

    move-object v0, v1

    goto :goto_75

    :catch_c5
    move-exception v7

    move-object v3, v4

    move-object v0, v1

    goto :goto_75

    :catch_c9
    move-exception v7

    move-object v5, v6

    move-object v3, v4

    move-object v0, v1

    goto :goto_75
.end method

.method public static writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 21

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    :try_start_4
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_21

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x1a4

    const/16 v16, -0x1

    const/16 v17, -0x1

    invoke-static/range {v14 .. v17}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_21
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_109
    .catchall {:try_start_4 .. :try_end_26} :catchall_e5

    :try_start_26
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v14, 0x200

    invoke-direct {v4, v6, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_10c
    .catchall {:try_start_26 .. :try_end_2d} :catchall_fe

    :try_start_2d
    new-instance v10, Ljava/lang/StringBuffer;

    const-string/jumbo v14, ""

    invoke-direct {v10, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_36
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_92

    const-string/jumbo v14, "="

    invoke-virtual {v9, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6b

    const/4 v8, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_6b
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v14, "line.separator"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_78} :catch_79
    .catchall {:try_start_2d .. :try_end_78} :catchall_101

    goto :goto_36

    :catch_79
    move-exception v2

    move-object v3, v4

    move-object v5, v6

    :goto_7c
    :try_start_7c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_e5

    if-eqz v5, :cond_85

    :try_start_81
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    const/4 v5, 0x0

    :cond_85
    if-eqz v3, :cond_8b

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_8a} :catch_e0

    const/4 v3, 0x0

    :cond_8b
    :goto_8b
    if-eqz v12, :cond_91

    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    :goto_90
    const/4 v12, 0x0

    :cond_91
    :goto_91
    return v11

    :cond_92
    if-nez v8, :cond_bd

    :try_start_94
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v14, "line.separator"

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_bd
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_c0} :catch_79
    .catchall {:try_start_94 .. :try_end_c0} :catchall_101

    const/4 v3, 0x0

    :try_start_c1
    new-instance v13, Ljava/io/PrintStream;

    invoke-direct {v13, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c6} :catch_10c
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_fe

    :try_start_c6
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_cd} :catch_110
    .catchall {:try_start_c6 .. :try_end_cd} :catchall_105

    const/4 v11, 0x1

    if-eqz v6, :cond_118

    :try_start_d0
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_da

    const/4 v5, 0x0

    :goto_d4
    if-eqz v13, :cond_115

    invoke-virtual {v13}, Ljava/io/PrintStream;->close()V

    goto :goto_90

    :catch_da
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v5, v6

    goto :goto_d4

    :catch_e0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8b

    :catchall_e5
    move-exception v14

    :goto_e6
    if-eqz v5, :cond_ec

    :try_start_e8
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    const/4 v5, 0x0

    :cond_ec
    if-eqz v3, :cond_f2

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f1} :catch_f9

    const/4 v3, 0x0

    :cond_f2
    :goto_f2
    if-eqz v12, :cond_f8

    invoke-virtual {v12}, Ljava/io/PrintStream;->close()V

    const/4 v12, 0x0

    :cond_f8
    throw v14

    :catch_f9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f2

    :catchall_fe
    move-exception v14

    move-object v5, v6

    goto :goto_e6

    :catchall_101
    move-exception v14

    move-object v3, v4

    move-object v5, v6

    goto :goto_e6

    :catchall_105
    move-exception v14

    move-object v5, v6

    move-object v12, v13

    goto :goto_e6

    :catch_109
    move-exception v2

    goto/16 :goto_7c

    :catch_10c
    move-exception v2

    move-object v5, v6

    goto/16 :goto_7c

    :catch_110
    move-exception v2

    move-object v5, v6

    move-object v12, v13

    goto/16 :goto_7c

    :cond_115
    move-object v12, v13

    goto/16 :goto_91

    :cond_118
    move-object v5, v6

    goto :goto_d4
.end method
