.class public Lcom/android/setupwizardlib/items/ButtonBarItem;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "ButtonBarItem.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/ItemInflater$ItemParent;


# instance fields
.field private final mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/setupwizardlib/items/ButtonItem;",
            ">;"
        }
    .end annotation
.end field

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mButtons:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mVisible:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mButtons:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mVisible:Z

    return-void
.end method


# virtual methods
.method public addChild(Lcom/android/setupwizardlib/items/ItemHierarchy;)V
    .registers 4

    instance-of v0, p1, Lcom/android/setupwizardlib/items/ButtonItem;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mButtons:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/setupwizardlib/items/ButtonItem;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Cannot add non-button item to Button Bar"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ButtonBarItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getLayoutResource()I
    .registers 2

    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_button_bar:I

    return v0
.end method

.method public getViewId()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ButtonBarItem;->getId()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mVisible:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 7

    move-object v3, p1

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/setupwizardlib/items/ButtonBarItem;->mButtons:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/setupwizardlib/items/ButtonItem;

    invoke-virtual {v1, v3}, Lcom/android/setupwizardlib/items/ButtonItem;->createButton(Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_20
    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/ButtonBarItem;->getViewId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    return-void
.end method
