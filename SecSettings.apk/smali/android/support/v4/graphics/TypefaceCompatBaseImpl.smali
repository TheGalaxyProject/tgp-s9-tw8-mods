.class Landroid/support/v4/graphics/TypefaceCompatBaseImpl;
.super Ljava/lang/Object;
.source "TypefaceCompatBaseImpl.java"

# interfaces
.implements Landroid/support/v4/graphics/TypefaceCompat$TypefaceCompatImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findBestEntry(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;IZ)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 14

    const/4 v5, 0x0

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-virtual {p1}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v7

    array-length v8, v7

    move v6, v5

    :goto_b
    if-ge v6, v8, :cond_2f

    aget-object v2, v7, v6

    invoke-virtual {v2}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v4

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v9, v4, 0x2

    invoke-virtual {v2}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v4

    if-ne p3, v4, :cond_2d

    move v4, v5

    :goto_21
    add-int v3, v9, v4

    if-eqz v0, :cond_27

    if-le v1, v3, :cond_29

    :cond_27
    move-object v0, v2

    move v1, v3

    :cond_29
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_b

    :cond_2d
    const/4 v4, 0x1

    goto :goto_21

    :cond_2f
    return-object v0
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .registers 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x0

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_14

    const/16 v2, 0x190

    :goto_8
    and-int/lit8 v3, p4, 0x2

    if-eqz v3, :cond_d

    const/4 v1, 0x1

    :cond_d
    invoke-direct {p0, p2, v2, v1}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->findBestEntry(Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;IZ)Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v0

    if-nez v0, :cond_17

    return-object v4

    :cond_14
    const/16 v2, 0x2bc

    goto :goto_8

    :cond_17
    invoke-virtual {v0}, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v1

    invoke-static {p1, p3, v1, p4}, Landroid/support/v4/graphics/TypefaceCompat;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;II)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method public createTypeface(Landroid/content/Context;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;Ljava/util/Map;)Landroid/graphics/Typeface;
    .registers 12
    .param p2    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Landroid/support/v4/provider/FontsContractCompat$FontInfo;",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    const/4 v7, 0x0

    array-length v5, p2

    const/4 v6, 0x1

    if-ge v5, v6, :cond_6

    return-object v7

    :cond_6
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v2, p2, v5

    invoke-virtual {v2}, Landroid/support/v4/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroid/support/v4/graphics/TypefaceCompatUtil;->getTempFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1b

    return-object v7

    :cond_1b
    :try_start_1b
    invoke-static {v3, v0}, Landroid/support/v4/graphics/TypefaceCompatUtil;->copyToFile(Ljava/io/File;Ljava/nio/ByteBuffer;)Z
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1e} :catch_31
    .catchall {:try_start_1b .. :try_end_1e} :catchall_36

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object v7

    :cond_25
    :try_start_25
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2c} :catch_31
    .catchall {:try_start_25 .. :try_end_2c} :catchall_36

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object v5

    :catch_31
    move-exception v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-object v7

    :catchall_36
    move-exception v5

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v5
.end method
