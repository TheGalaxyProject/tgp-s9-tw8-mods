.class public Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;
.super Ljava/lang/Object;
.source "UserDictionaryAddWordContents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/UserDictionaryAddWordContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleRenderer"
.end annotation


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mLocaleString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mLocaleString:Ljava/lang/String;

    if-nez p2, :cond_11

    const v0, 0x7f121d8e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    :goto_10
    return-void

    :cond_11
    const-string/jumbo v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const v0, 0x7f121d89

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    goto :goto_10

    :cond_24
    invoke-static {p2}, Lcom/android/settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    goto :goto_10
.end method


# virtual methods
.method public getLocaleString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mLocaleString:Ljava/lang/String;

    return-object v0
.end method

.method public isMoreLanguages()Z
    .registers 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mLocaleString:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/UserDictionaryAddWordContents$LocaleRenderer;->mDescription:Ljava/lang/String;

    return-object v0
.end method
