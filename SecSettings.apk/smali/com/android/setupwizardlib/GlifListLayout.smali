.class public Lcom/android/setupwizardlib/GlifListLayout;
.super Lcom/android/setupwizardlib/GlifLayout;
.source "GlifListLayout.java"


# instance fields
.field private mListMixin:Lcom/android/setupwizardlib/template/ListMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/setupwizardlib/GlifListLayout;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifListLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    new-instance v1, Lcom/android/setupwizardlib/template/ListMixin;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/setupwizardlib/template/ListMixin;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    const-class v1, Lcom/android/setupwizardlib/template/ListMixin;

    iget-object v2, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {p0, v1, v2}, Lcom/android/setupwizardlib/GlifListLayout;->registerMixin(Ljava/lang/Class;Lcom/android/setupwizardlib/template/Mixin;)V

    const-class v1, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/GlifListLayout;->getMixin(Ljava/lang/Class;)Lcom/android/setupwizardlib/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/template/RequireScrollMixin;

    new-instance v1, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;

    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .registers 3

    if-nez p1, :cond_5

    const p1, 0x102000a

    :cond_5
    invoke-super {p0, p1}, Lcom/android/setupwizardlib/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInset()I
    .registers 2

    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInset()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .registers 4

    if-nez p2, :cond_4

    sget p2, Lcom/android/setupwizardlib/R$layout;->suw_glif_list_template:I

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/setupwizardlib/GlifLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    invoke-super/range {p0 .. p5}, Lcom/android/setupwizardlib/GlifLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/template/ListMixin;->onLayout()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDividerInset(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/setupwizardlib/GlifListLayout;->mListMixin:Lcom/android/setupwizardlib/template/ListMixin;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInset(I)V

    return-void
.end method
