.class public Lcom/samsung/android/settings/search/model/SecMenu;
.super Ljava/lang/Object;
.source "SecMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;
    }
.end annotation


# instance fields
.field private final EMPTY:Ljava/lang/String;

.field private final HYPHEN:Ljava/lang/String;

.field private final NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String;

.field private final NON_BREAKING_HYPHEN:Ljava/lang/String;

.field private final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field private SETTINGS_FOR_KNOX:[Ljava/lang/String;

.field protected TAG:Ljava/lang/String;

.field protected mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

.field protected parent:Lcom/samsung/android/settings/search/model/SecMenu;

.field protected subMenues:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/search/model/SecMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "SecMenutree"

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "PreferenceScreen"

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->NODE_NAME_PREFERENCE_SCREEN:Ljava/lang/String;

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->EMPTY:Ljava/lang/String;

    const-string/jumbo v1, "\u2011"

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->NON_BREAKING_HYPHEN:Ljava/lang/String;

    const-string/jumbo v1, "-"

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->HYPHEN:Ljava/lang/String;

    const-string/jumbo v1, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    iput-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iput-object p2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    if-eqz p1, :cond_54

    const-string/jumbo v1, ""

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    const-string/jumbo v1, "Settings"

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string/jumbo v0, ""

    :goto_4f
    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setMenuPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_54
    return-void

    :cond_55
    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_5c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f
.end method

.method private getCurrentRank(Lcom/samsung/android/settings/search/model/SecMenu;)I
    .registers 7

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    iget-object v3, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v3, v3, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get20(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const v3, 0x5f5e100

    mul-int v0, v1, v3

    :goto_1b
    return v0

    :cond_1c
    iget-object v3, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v3, v3, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get20(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v3, v3, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get19(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int v0, v3, v1

    goto :goto_1b
.end method

.method private getInitialConsonant(C)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, ""

    const v2, 0xac00

    sub-int v2, p1, v2

    div-int/lit16 v1, v2, 0x24c

    packed-switch v1, :pswitch_data_6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :pswitch_22
    const-string/jumbo v0, "\u3131"

    goto :goto_21

    :pswitch_26
    const-string/jumbo v0, "\u3132"

    goto :goto_21

    :pswitch_2a
    const-string/jumbo v0, "\u3134"

    goto :goto_21

    :pswitch_2e
    const-string/jumbo v0, "\u3137"

    goto :goto_21

    :pswitch_32
    const-string/jumbo v0, "\u3138"

    goto :goto_21

    :pswitch_36
    const-string/jumbo v0, "\u3139"

    goto :goto_21

    :pswitch_3a
    const-string/jumbo v0, "\u3141"

    goto :goto_21

    :pswitch_3e
    const-string/jumbo v0, "\u3142"

    goto :goto_21

    :pswitch_42
    const-string/jumbo v0, "\u3143"

    goto :goto_21

    :pswitch_46
    const-string/jumbo v0, "\u3145"

    goto :goto_21

    :pswitch_4a
    const-string/jumbo v0, "\u3146"

    goto :goto_21

    :pswitch_4e
    const-string/jumbo v0, "\u3147"

    goto :goto_21

    :pswitch_52
    const-string/jumbo v0, "\u3148"

    goto :goto_21

    :pswitch_56
    const-string/jumbo v0, "\u3149"

    goto :goto_21

    :pswitch_5a
    const-string/jumbo v0, "\u314a"

    goto :goto_21

    :pswitch_5e
    const-string/jumbo v0, "\u314b"

    goto :goto_21

    :pswitch_62
    const-string/jumbo v0, "\u314c"

    goto :goto_21

    :pswitch_66
    const-string/jumbo v0, "\u314d"

    goto :goto_21

    :pswitch_6a
    const-string/jumbo v0, "\u314e"

    goto :goto_21

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_26
        :pswitch_2a
        :pswitch_2e
        :pswitch_32
        :pswitch_36
        :pswitch_3a
        :pswitch_3e
        :pswitch_42
        :pswitch_46
        :pswitch_4a
        :pswitch_4e
        :pswitch_52
        :pswitch_56
        :pswitch_5a
        :pswitch_5e
        :pswitch_62
        :pswitch_66
        :pswitch_6a
    .end packed-switch
.end method

.method private getInitialKeyword(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string/jumbo v2, ""

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/search/model/SecMenu;->getInitialConsonant(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_26
    return-object v2
.end method

.method private hexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    if-nez v2, :cond_12

    invoke-static {}, Landroid/os/PersonaPolicyManager;->getComSettings()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    return v3

    :cond_12
    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_14
    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_26

    if-eqz p2, :cond_25

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->SETTINGS_FOR_KNOX:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    :cond_25
    const/4 v1, 0x0

    :cond_26
    return v1

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2a
    return v3
.end method

.method private normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_d

    const-string/jumbo v0, "\u2011"

    const-string/jumbo v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-string/jumbo v0, ""

    goto :goto_c
.end method

.method private normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_24

    const-string/jumbo v2, "-"

    const-string/jumbo v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    sget-object v2, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v0, v2}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

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

.method private saveMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/samsung/android/settings/search/model/SecMenu;)V
    .registers 8

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_1f

    iget-object v1, p4, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p4, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    check-cast p4, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    iget-object v2, p4, Lcom/samsung/android/settings/search/model/SecInnerMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get2(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_1f
    :goto_1f
    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setLocale(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setEnabled(Z)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUserId(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/search/model/SecMenu;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu;->updateOneRowWithFilteredData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V

    return-void

    :cond_3c
    instance-of v1, p4, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    if-eqz v1, :cond_1f

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object v1, p4

    check-cast v1, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    iget-object v1, v1, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get6(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v2

    move-object v1, p4

    check-cast v1, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    iget-object v1, v1, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get8(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v1

    check-cast p4, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    iget-object v2, p4, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get7(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    goto :goto_1f
.end method

.method private setRankPath(Lcom/samsung/android/settings/search/model/SecMenu;I)V
    .registers 6

    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v1, v1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get20(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string/jumbo v0, ""

    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setRankPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    return-void

    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_11
.end method


# virtual methods
.method public addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V
    .registers 5

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_b

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    :cond_b
    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v1, v1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get5(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v2, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get5(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-set0(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;I)I

    :cond_22
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/search/model/SecMenu;->getCurrentRank(Lcom/samsung/android/settings/search/model/SecMenu;)I

    move-result v0

    iget-object v1, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setRank(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/search/model/SecMenu;->setRankPath(Lcom/samsung/android/settings/search/model/SecMenu;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clear()V
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2e

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/model/SecMenu;->clear()V

    goto :goto_17

    :cond_27
    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iput-object v3, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    :cond_2e
    return-void
.end method

.method public find(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_37

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/search/model/SecMenu;->find(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_35
    const/4 v2, 0x1

    return v2

    :cond_37
    return v3
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSubMenu(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method protected initInnerSubMenu(Landroid/content/Context;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V
    .registers 22

    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    if-eqz v15, :cond_40

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get7(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SearchUtils;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_45

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "SearchIndexableResource \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' should implement the "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-class v16, Lcom/android/settings/search/Indexable;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " interface!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    return-void

    :cond_40
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get2(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_45
    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SearchUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v10

    if-nez v10, :cond_4c

    return-void

    :cond_4c
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v10, v0, v1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    if-eqz v6, :cond_93

    const/4 v4, 0x0

    :goto_5d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_93

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/provider/SearchIndexableResource;

    iget v14, v13, Landroid/provider/SearchIndexableResource;->xmlResId:I

    if-lez v14, :cond_77

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v14, v2}, Lcom/samsung/android/settings/search/model/SecMenu;->parsingXmlResource(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V

    :goto_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_5d

    :cond_77
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "There is no xmlResId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v13, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_74

    :cond_93
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v10, v0, v1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_26a

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_26a

    const/4 v4, 0x0

    :goto_a4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v4, v15, :cond_26a

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/search/SearchIndexableRaw;

    if-eqz v9, :cond_bd

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-interface {v9, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_bd

    :cond_ba
    :goto_ba
    add-int/lit8 v4, v4, 0x1

    goto :goto_a4

    :cond_bd
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v15, :cond_1d8

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    if-eqz v15, :cond_1d8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/search/model/SecMenu;

    if-eqz v7, :cond_1bb

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_f6

    iget-object v15, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_f6
    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_107

    iget-object v15, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_107
    iget v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_ba

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_13f

    iget-object v15, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v15, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    iget-object v0, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/settings/search/model/SecInnerMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_ba

    :cond_13f
    iget v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_19f

    const/4 v5, 0x0

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-eqz v15, :cond_199

    iget-object v15, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v5, Landroid/content/Intent;

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_15c
    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v15, :cond_185

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v15, :cond_185

    iget-object v15, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v15, Landroid/content/ComponentName;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_185
    new-instance v15, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    iget-object v0, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1, v5}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_ba

    :cond_199
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    goto :goto_15c

    :cond_19f
    iget v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_ba

    new-instance v15, Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v0, v7, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_ba

    :cond_1bb
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "menu is null : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto/16 :goto_ba

    :cond_1d8
    new-instance v8, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-direct {v8}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;-><init>()V

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setNormalizedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    if-eqz v15, :cond_211

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v15, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/samsung/android/settings/search/model/SecInnerMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_ba

    :cond_211
    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v15, :cond_258

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v15, :cond_258

    :cond_219
    new-instance v5, Landroid/content/Intent;

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v15, :cond_24a

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v15, :cond_24a

    new-instance v15, Landroid/content/ComponentName;

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_24a
    new-instance v15, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8, v5}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_ba

    :cond_258
    iget-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-nez v15, :cond_219

    new-instance v15, Lcom/samsung/android/settings/search/model/SecMenu;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_ba

    :cond_26a
    return-void
.end method

.method public initSubMenu(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method protected parsingXmlResource(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v23, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v23

    if-nez v23, :cond_35

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "parser is null: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V
    :try_end_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_2f} :catch_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_2f} :catch_1bd
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2f} :catch_261
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_2f} :catch_287
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2a4

    if-eqz v23, :cond_34

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_34
    return-void

    :cond_35
    :try_start_35
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_49

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_35

    :cond_49
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v28, "PreferenceScreen"

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_91

    new-instance v28, Ljava/lang/RuntimeException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " at "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v28
    :try_end_87
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_87} :catch_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_87} :catch_1bd
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_87} :catch_261
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_87} :catch_287
    .catchall {:try_start_35 .. :try_end_87} :catchall_2a4

    :catch_87
    move-exception v7

    :try_start_88
    invoke-virtual {v7}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_2a4

    if-eqz v23, :cond_90

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_90
    :goto_90
    return-void

    :cond_91
    :try_start_91
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v22

    invoke-static/range {v23 .. v23}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/16 v16, 0x1

    const/4 v5, 0x0

    if-eqz p4, :cond_a6

    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingUtils;->getPreferenceControllerUriMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v5

    :cond_a6
    :goto_a6
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_34a

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_c4

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v22

    if-le v0, v1, :cond_34a

    :cond_c4
    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_a6

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_a6

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_e8

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_100

    :cond_e8
    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a6

    const-string/jumbo v28, "PreferenceCategory"

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a6

    const/16 v16, 0x1

    goto :goto_a6

    :cond_100
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v28, "PreferenceCategory"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_14a

    const/16 v16, 0x1

    if-eqz p2, :cond_121

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_12d

    :cond_121
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu;->isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14a

    :cond_12d
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "nonIndexableKeys: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    const/16 v16, 0x0

    :cond_14a
    const/16 v18, 0x1

    if-eqz p2, :cond_158

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_164

    :cond_158
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu;->isRemovedFromCOM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_166

    :cond_164
    const/16 v18, 0x0

    :cond_166
    const-string/jumbo v28, "PreferenceCategory"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_a6

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_a6

    if-eqz v17, :cond_1c8

    if-eqz v18, :cond_1c8

    move/from16 v11, v16

    :goto_181
    if-nez v11, :cond_1ca

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, ") is disabled so not indexed in "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V
    :try_end_1bb
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_91 .. :try_end_1bb} :catch_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_91 .. :try_end_1bb} :catch_1bd
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_1bb} :catch_261
    .catch Ljava/lang/NullPointerException; {:try_start_91 .. :try_end_1bb} :catch_287
    .catchall {:try_start_91 .. :try_end_1bb} :catchall_2a4

    goto/16 :goto_a6

    :catch_1bd
    move-exception v10

    :try_start_1be
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_1c1
    .catchall {:try_start_1be .. :try_end_1c1} :catchall_2a4

    if-eqz v23, :cond_90

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_90

    :cond_1c8
    const/4 v11, 0x0

    goto :goto_181

    :cond_1ca
    :try_start_1ca
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getDataEng(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/settings/Utils;->getFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/settings/search2/DatabaseIndexingUtils;->getPayloadFromUriMap(Ljava/util/Map;Ljava/lang/String;)Lcom/android/settings/search2/ResultPayload;

    move-result-object v24

    new-instance v4, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-direct {v4}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    if-eqz v12, :cond_2ab

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_217
    :goto_217
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_26c

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_233

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v28

    move/from16 v0, v28

    if-le v0, v13, :cond_26c

    :cond_233
    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_217

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_217

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v28, "extra"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_217

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string/jumbo v29, "extra"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    :try_end_260
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1ca .. :try_end_260} :catch_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ca .. :try_end_260} :catch_1bd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_260} :catch_261
    .catch Ljava/lang/NullPointerException; {:try_start_1ca .. :try_end_260} :catch_287
    .catchall {:try_start_1ca .. :try_end_260} :catchall_2a4

    goto :goto_217

    :catch_261
    move-exception v8

    :try_start_262
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_265
    .catchall {:try_start_262 .. :try_end_265} :catchall_2a4

    if-eqz v23, :cond_90

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_90

    :cond_26c
    :try_start_26c
    invoke-virtual {v4, v12}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v28

    if-lez v28, :cond_292

    new-instance v28, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v6}, Lcom/samsung/android/settings/search/model/SecInnerMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V
    :try_end_285
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_26c .. :try_end_285} :catch_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26c .. :try_end_285} :catch_1bd
    .catch Ljava/io/IOException; {:try_start_26c .. :try_end_285} :catch_261
    .catch Ljava/lang/NullPointerException; {:try_start_26c .. :try_end_285} :catch_287
    .catchall {:try_start_26c .. :try_end_285} :catchall_2a4

    goto/16 :goto_a6

    :catch_287
    move-exception v9

    :try_start_288
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_28b
    .catchall {:try_start_288 .. :try_end_28b} :catchall_2a4

    if-eqz v23, :cond_90

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_90

    :cond_292
    :try_start_292
    new-instance v28, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/search/model/SecInnerMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V
    :try_end_2a2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_292 .. :try_end_2a2} :catch_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_292 .. :try_end_2a2} :catch_1bd
    .catch Ljava/io/IOException; {:try_start_292 .. :try_end_2a2} :catch_261
    .catch Ljava/lang/NullPointerException; {:try_start_292 .. :try_end_2a2} :catch_287
    .catchall {:try_start_292 .. :try_end_2a2} :catchall_2a4

    goto/16 :goto_a6

    :catchall_2a4
    move-exception v28

    if-eqz v23, :cond_2aa

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2aa
    throw v28

    :cond_2ab
    :try_start_2ab
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    const/4 v15, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    :cond_2b5
    :goto_2b5
    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_31a

    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2d1

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v28

    move/from16 v0, v28

    if-le v0, v13, :cond_31a

    :cond_2d1
    const/16 v28, 0x3

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2b5

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_2b5

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v28, "extra"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_302

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const-string/jumbo v29, "extra"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3, v6}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    invoke-static/range {v23 .. v23}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2b5

    :cond_302
    const-string/jumbo v28, "intent"

    move-object/from16 v0, v28

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_2b5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-static {v0, v1, v3}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v15

    goto :goto_2b5

    :cond_31a
    if-nez v15, :cond_32e

    new-instance v28, Lcom/samsung/android/settings/search/model/SecMenu;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_a6

    :cond_32e
    invoke-virtual {v6}, Landroid/os/Bundle;->size()I

    move-result v28

    if-lez v28, :cond_338

    invoke-virtual {v15, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v6, 0x0

    :cond_338
    new-instance v28, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v15}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V
    :try_end_348
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2ab .. :try_end_348} :catch_87
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2ab .. :try_end_348} :catch_1bd
    .catch Ljava/io/IOException; {:try_start_2ab .. :try_end_348} :catch_261
    .catch Ljava/lang/NullPointerException; {:try_start_2ab .. :try_end_348} :catch_287
    .catchall {:try_start_2ab .. :try_end_348} :catchall_2a4

    goto/16 :goto_a6

    :cond_34a
    if-eqz v23, :cond_90

    invoke-interface/range {v23 .. v23}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_90
.end method

.method public save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 8

    const/4 v3, 0x0

    instance-of v2, p0, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    if-eqz v2, :cond_15

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/samsung/android/settings/search/model/SecMenu;->saveMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/samsung/android/settings/search/model/SecMenu;)V

    :cond_8
    :goto_8
    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-nez v2, :cond_32

    :cond_14
    return-void

    :cond_15
    instance-of v2, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    if-eqz v2, :cond_1d

    invoke-direct {p0, p1, p2, p3, v3}, Lcom/samsung/android/settings/search/model/SecMenu;->saveMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto :goto_8

    :cond_1d
    const-string/jumbo v2, "Settings"

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-direct {p0, p1, p2, p3, v2}, Lcom/samsung/android/settings/search/model/SecMenu;->saveMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto :goto_8

    :cond_32
    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/search/model/SecMenu;->save(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_3c

    :cond_4c
    return-void
.end method

.method public updateOneRow(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;Landroid/os/Bundle;)V
    .registers 26

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_22

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuPath:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_23

    move-object/from16 v0, p3

    iget v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuType:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_23

    :cond_22
    return-void

    :cond_23
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->screenTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->key:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f121b7e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f121b7d

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8f

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8f

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_98

    :cond_8f
    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    :cond_98
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c3

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_c3

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string/jumbo v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_cc

    :cond_c3
    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    :cond_cc
    const-string/jumbo v9, ""

    const-string/jumbo v17, "ko_KR"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->locale:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10c

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->getInitialKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/settings/search/model/SecMenu;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_10c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/settings/sfinderconnect/NameNormalizer;->lettersAndDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v17, "docid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "locale"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->locale:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_rank"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->rank:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "data_title"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_title_en"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->keywords:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_title_normalized"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_title_hex"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_summary_on"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_summary_on_normalized"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_summary_on_hex"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu;->hexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_summary_off"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOff:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_summary_off_normalized"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->normalizedSummaryOff:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_entries"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->entries:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "data_keywords"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "class_name"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->className:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "screen_title"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->screenTitle:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "intent_action"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->intentAction:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "intent_target_package"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "intent_target_class"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "icon"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->iconResId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "enabled"

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->enabled:Z

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v17, "data_key_reference"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "user_id"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->userId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "menu_type"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "menu_path"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->menuPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "category_id"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->categoryId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "payload_type"

    move-object/from16 v0, p3

    iget v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->payloadType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "payload"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->payload:[B

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v17, "rank_path"

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->rankPath:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz p4, :cond_2f0

    new-instance v15, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v15}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    const/16 v17, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v12}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    :cond_2f0
    const-string/jumbo v17, "extras"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_2fa
    const-string/jumbo v17, "prefs_index"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_30a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2fa .. :try_end_30a} :catch_33d

    :goto_30a
    invoke-static {}, Lcom/android/settings/Utils;->getEnableDeviceSearchIndexging()Z

    move-result v17

    if-eqz v17, :cond_33c

    :try_start_310
    new-instance v8, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObjectSettings;

    move-object/from16 v0, p3

    iget v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->rank:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedTitle:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    move-object/from16 v20, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObjectSettings;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "com.samsung.android.settings.search.devicesearch.DeviceSearchIndexProvider"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/samsung/android/app/galaxyfinder/index/api/IndexClient;->insert(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/galaxyfinder/index/api/indexobjects/IndexObject;)J
    :try_end_33c
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException; {:try_start_310 .. :try_end_33c} :catch_342

    :cond_33c
    :goto_33c
    return-void

    :catch_33d
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_30a

    :catch_342
    move-exception v6

    invoke-virtual {v6}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexException;->printStackTrace()V

    goto :goto_33c
.end method

.method public updateOneRowWithFilteredData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V
    .registers 13

    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get3(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Z

    move-result v6

    if-nez v6, :cond_4f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "skip indexing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    return-void

    :cond_4f
    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get2(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / class: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get2(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    :goto_ab
    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get24(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get23(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/search/model/SecMenu;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedSummaryOff(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setNormalizedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setNormalizedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setNormalizedSummaryOff(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->build()Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;

    move-result-object v6

    invoke-virtual {p0, p1, p2, v6, p4}, Lcom/samsung/android/settings/search/model/SecMenu;->updateOneRow(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;Landroid/os/Bundle;)V

    return-void

    :cond_f8
    iget-object v6, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get7(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_156

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " / intentTargetClass: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get7(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto/16 :goto_ab

    :cond_156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "title: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/ path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-static {v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->-get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto/16 :goto_ab
.end method
