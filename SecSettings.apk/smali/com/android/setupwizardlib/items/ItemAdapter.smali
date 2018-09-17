.class public Lcom/android/setupwizardlib/items/ItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "ItemAdapter.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;
    }
.end annotation


# instance fields
.field private final mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

.field private mViewTypes:Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .registers 4

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;-><init>(Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mViewTypes:Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;

    iput-object p1, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->registerObserver(Lcom/android/setupwizardlib/items/ItemHierarchy$Observer;)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemAdapter;->refreshViewTypes()V

    return-void
.end method

.method private refreshViewTypes()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/items/ItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mViewTypes:Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;

    invoke-interface {v1}, Lcom/android/setupwizardlib/items/IItem;->getLayoutResource()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->add(I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/setupwizardlib/items/IItem;
    .registers 3

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mItemHierarchy:Lcom/android/setupwizardlib/items/ItemHierarchy;

    invoke-interface {v0, p1}, Lcom/android/setupwizardlib/items/ItemHierarchy;->getItemAt(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->getLayoutResource()I

    move-result v1

    iget-object v2, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mViewTypes:Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;

    invoke-virtual {v2, v1}, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->get(I)I

    move-result v2

    return v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v1

    if-nez p2, :cond_17

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-interface {v1}, Lcom/android/setupwizardlib/items/IItem;->getLayoutResource()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_17
    invoke-interface {v1, p2}, Lcom/android/setupwizardlib/items/IItem;->onBindView(Landroid/view/View;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ItemAdapter;->mViewTypes:Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/items/ItemAdapter$ViewTypes;->size()I

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->getItem(I)Lcom/android/setupwizardlib/items/IItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/setupwizardlib/items/IItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/ItemAdapter;->refreshViewTypes()V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onItemRangeChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    return-void
.end method

.method public onItemRangeInserted(Lcom/android/setupwizardlib/items/ItemHierarchy;II)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/items/ItemAdapter;->onChanged(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    return-void
.end method
