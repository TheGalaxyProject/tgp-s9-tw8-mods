.class public Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "RecentsKeyPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->setDescriptions()V

    return-void
.end method

.method private setDescriptions()V
    .registers 7

    const v4, 0x7f080459

    const v5, 0x7f080458

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;-><init>()V

    const-string/jumbo v2, "split_screen_view"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->key:Ljava/lang/String;

    const v2, 0x7f121223

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->title:I

    if-eqz v1, :cond_a1

    iput v4, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->animation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f121217

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f121218

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->summary:Ljava/lang/String;

    :goto_57
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;-><init>()V

    const-string/jumbo v2, "snap_window"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->key:Ljava/lang/String;

    const v2, 0x7f12121e

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->title:I

    if-eqz v1, :cond_d0

    iput v5, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->animation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f121221

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f121222

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->summary:Ljava/lang/String;

    :goto_9b
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_a1
    iput v4, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->animation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f121215

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f121216

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->summary:Ljava/lang/String;

    goto :goto_57

    :cond_d0
    iput v5, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->animation:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f12121f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    const v4, 0x7f121220

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->summary:Ljava/lang/String;

    goto :goto_9b
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 6

    const/4 v3, -0x1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    return v3

    :cond_7
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    :cond_32
    return v0

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_36
    return v3
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 12

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d01d1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f0a0238

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a0235

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0a0086

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_42

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int p2, v4, p2

    :cond_42
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->title:I

    if-nez v4, :cond_79

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_51
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->summary:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_64
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->animation:I

    if-nez v4, :cond_9b

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_73
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v3, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    return-object v3

    :cond_79
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->title:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_51

    :cond_8a
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;

    iget-object v4, v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->summary:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_64

    :cond_9b
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/usefulfeature/RecentsKeyPagerAdapter$Description;->animation:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_73
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p2, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method