.class public abstract Lcom/android/setupwizardlib/items/AbstractItem;
.super Lcom/android/setupwizardlib/items/AbstractItemHierarchy;
.source "AbstractItem.java"

# interfaces
.implements Lcom/android/setupwizardlib/items/IItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItemHierarchy;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getItemAt(I)Lcom/android/setupwizardlib/items/IItem;
    .registers 2

    return-object p0
.end method

.method public notifyItemChanged()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/items/AbstractItem;->notifyItemRangeChanged(II)V

    return-void
.end method
