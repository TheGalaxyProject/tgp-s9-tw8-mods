.class Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$SingleLineAllCapsTransform;
.super Landroid/text/method/SingleLineTransformationMethod;
.source "SeslPagerTitleStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleLineAllCapsTransform"
.end annotation


# instance fields
.field private mLocale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$SingleLineAllCapsTransform;->mLocale:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 5

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/text/method/SingleLineTransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslPagerTitleStrip$SingleLineAllCapsTransform;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method
