.class public Lcom/android/setupwizardlib/items/SwitchItem;
.super Lcom/android/setupwizardlib/items/Item;
.source "SwitchItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/setupwizardlib/items/Item;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/Item;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwSwitchItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwSwitchItem_android_checked:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getDefaultLayoutResource()I
    .registers 2

    sget v0, Lcom/android/setupwizardlib/R$layout;->suw_items_switch:I

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/setupwizardlib/items/Item;->onBindView(Landroid/view/View;)V

    sget v1, Lcom/android/setupwizardlib/R$id;->suw_items_switch:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v1, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/items/SwitchItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->setEnabled(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mChecked:Z

    iget-object v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/setupwizardlib/items/SwitchItem;->mListener:Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;

    invoke-interface {v0, p0, p2}, Lcom/android/setupwizardlib/items/SwitchItem$OnCheckedChangeListener;->onCheckedChange(Lcom/android/setupwizardlib/items/SwitchItem;Z)V

    :cond_b
    return-void
.end method
