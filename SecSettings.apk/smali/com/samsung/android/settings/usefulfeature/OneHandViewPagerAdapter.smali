.class public Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "OneHandViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;",
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

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->setDescriptions()V

    return-void
.end method

.method private setDescriptions()V
    .registers 5

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;-><init>()V

    const-string/jumbo v2, "gesture_type"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    if-eqz v1, :cond_49

    const v2, 0x7f0804d4

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    :goto_23
    const v2, 0x7f1213f3

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->summary:I

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;-><init>()V

    const-string/jumbo v2, "button_type"

    iput-object v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    if-eqz v1, :cond_4f

    const v2, 0x7f1213f4

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->summary:I

    const v2, 0x7f0804cd

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    :goto_43
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_49
    const v2, 0x7f0804cf

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    goto :goto_23

    :cond_4f
    const v2, 0x7f1213f5

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->summary:I

    const v2, 0x7f0804cc

    iput v2, v0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    goto :goto_43
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

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

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
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget-object v2, v2, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

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
    .registers 13

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0d01d1

    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v5, 0x7f0a0238

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a0235

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v5, 0x7f0a0086

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_42

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int p2, v5, p2

    :cond_42
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->title:I

    if-nez v5, :cond_75

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_51
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->summary:I

    if-nez v5, :cond_86

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_60
    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    if-nez v5, :cond_97

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6f
    :goto_6f
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v4, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    return-object v4

    :cond_75
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->title:I

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_51

    :cond_86
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->summary:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_60

    :cond_97
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget v5, v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->animation:I

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;

    iget-object v5, v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$Description;->key:Ljava/lang/String;

    const-string/jumbo v6, "gesture_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_6f

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter$1;-><init>(Lcom/samsung/android/settings/usefulfeature/OneHandViewPagerAdapter;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_6f
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
