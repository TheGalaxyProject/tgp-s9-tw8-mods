.class Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateSuspended:Z

.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .registers 3

    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    return-void
.end method

.method private appendTransparentIconIfMissing(II)V
    .registers 6

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_11

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method

.method private prepareMenuItems()V
    .registers 20

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    if-eqz v15, :cond_7

    return-void

    :cond_7
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v16, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    invoke-direct/range {v16 .. v16}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;-><init>()V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v15, v15, Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v15}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    :goto_31
    if-ge v5, v14, :cond_156

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v15, v15, Landroid/support/design/internal/NavigationMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v15}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_4e

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    :cond_4e
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_58

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_58
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v15

    if-eqz v15, :cond_f0

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v15

    if-eqz v15, :cond_ec

    if-eqz v5, :cond_84

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v16, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_84
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v16, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v7, 0x0

    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v8

    :goto_a0
    if-ge v7, v8, :cond_dd

    invoke-interface {v9, v7}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v11

    check-cast v11, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_da

    if-nez v10, :cond_b7

    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_b7

    const/4 v10, 0x1

    :cond_b7
    invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_c1

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_c1
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_cc

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    :cond_cc
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v16, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_da
    add-int/lit8 v7, v7, 0x1

    goto :goto_a0

    :cond_dd
    if-eqz v10, :cond_ec

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    :cond_ec
    :goto_ec
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_31

    :cond_f0
    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v4

    if-eq v4, v2, :cond_13f

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_13d

    const/4 v1, 0x1

    :goto_105
    if-eqz v5, :cond_12d

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    new-instance v16, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/support/design/internal/NavigationMenuPresenter;->mPaddingSeparator:I

    move/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;-><init>(II)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12d
    :goto_12d
    new-instance v13, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-direct {v13, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;-><init>(Landroid/support/v7/view/menu/MenuItemImpl;)V

    iput-boolean v1, v13, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_ec

    :cond_13d
    const/4 v1, 0x0

    goto :goto_105

    :cond_13f
    if-nez v1, :cond_12d

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_12d

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->appendTransparentIconIfMissing(II)V

    goto :goto_12d

    :cond_156
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    return-void
.end method


# virtual methods
.method public createInstanceState()Landroid/os/Bundle;
    .registers 11

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget-object v8, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v8, :cond_15

    const-string/jumbo v8, "android:menu:checked"

    iget-object v9, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_15
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    iget-object v8, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_21
    if-ge v3, v6, :cond_51

    iget-object v8, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v8, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v8, :cond_4c

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    :goto_3b
    if-eqz v0, :cond_4c

    new-instance v2, Landroid/support/design/internal/ParcelableSparseArray;

    invoke-direct {v2}, Landroid/support/design/internal/ParcelableSparseArray;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v8

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_4f
    const/4 v0, 0x0

    goto :goto_3b

    :cond_51
    const-string/jumbo v8, "android:menu:action_views"

    invoke-virtual {v7, v8, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v7
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 6

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v2, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    if-eqz v2, :cond_e

    const/4 v2, 0x2

    return v2

    :cond_e
    instance-of v2, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuHeaderItem;

    if-eqz v2, :cond_14

    const/4 v2, 0x3

    return v2

    :cond_14
    instance-of v2, v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v2, :cond_29

    move-object v1, v0

    check-cast v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    return v2

    :cond_27
    const/4 v2, 0x0

    return v2

    :cond_29
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unknown item type."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V
    .registers 11

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->getItemViewType(I)I

    move-result v5

    packed-switch v5, :pswitch_data_88

    :goto_9
    :pswitch_9
    return-void

    :pswitch_a
    iget-object v2, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/support/design/internal/NavigationMenuItemView;

    iget-object v5, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mIconTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v5}, Landroid/support/design/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v5, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-boolean v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearanceSet:Z

    if-eqz v5, :cond_22

    iget-object v5, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mTextAppearance:I

    invoke-virtual {v2, v5}, Landroid/support/design/internal/NavigationMenuItemView;->setTextAppearance(I)V

    :cond_22
    iget-object v5, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_2f

    iget-object v5, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v5}, Landroid/support/design/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2f
    iget-object v5, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_41

    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v4, v4, Landroid/support/design/internal/NavigationMenuPresenter;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_41
    invoke-static {v2, v4}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    iget-boolean v4, v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->needsEmptyIcon:Z

    invoke-virtual {v2, v4}, Landroid/support/design/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v2, v4, v7}, Landroid/support/design/internal/NavigationMenuItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    goto :goto_9

    :pswitch_59
    iget-object v3, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :pswitch_71
    iget-object v4, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;

    iget-object v4, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuSeparatorItem;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_a
        :pswitch_59
        :pswitch_71
        :pswitch_9
    .end packed-switch
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onBindViewHolder(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
    .registers 6

    packed-switch p2, :pswitch_data_32

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v2, v2, Landroid/support/design/internal/NavigationMenuPresenter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, p1, v2}, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object v0

    :pswitch_13
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/NavigationMenuPresenter$SubheaderViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object v0

    :pswitch_1d
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-direct {v0, v1, p1}, Landroid/support/design/internal/NavigationMenuPresenter$SeparatorViewHolder;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object v0

    :pswitch_27
    new-instance v0, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;

    iget-object v1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    iget-object v1, v1, Landroid/support/design/internal/NavigationMenuPresenter;->mHeaderLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;-><init>(Landroid/view/View;)V

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_5
        :pswitch_13
        :pswitch_1d
        :pswitch_27
    .end packed-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V
    .registers 3

    instance-of v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$NormalViewHolder;

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/support/design/internal/NavigationMenuItemView;

    invoke-virtual {v0}, Landroid/support/design/internal/NavigationMenuItemView;->recycle()V

    :cond_b
    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .registers 2

    check-cast p1, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;

    invoke-virtual {p0, p1}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->onViewRecycled(Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .registers 14

    const/4 v11, 0x0

    const-string/jumbo v10, "android:menu:checked"

    invoke-virtual {p1, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_38

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    const/4 v4, 0x0

    iget-object v10, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_14
    if-ge v4, v9, :cond_33

    iget-object v10, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v10, v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-eqz v10, :cond_59

    check-cast v5, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v5}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v7

    if-eqz v7, :cond_59

    invoke-virtual {v7}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    if-ne v10, v2, :cond_59

    invoke-virtual {p0, v7}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    :cond_33
    iput-boolean v11, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    :cond_38
    const-string/jumbo v10, "android:menu:action_views"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_7a

    const/4 v4, 0x0

    iget-object v10, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    :goto_48
    if-ge v4, v9, :cond_7a

    iget-object v10, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuItem;

    instance-of v10, v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    if-nez v10, :cond_5c

    :cond_56
    :goto_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_5c
    check-cast v8, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;

    invoke-virtual {v8}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuTextItem;->getMenuItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v6

    if-eqz v6, :cond_56

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_56

    invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v10

    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/internal/ParcelableSparseArray;

    if-eqz v3, :cond_56

    invoke-virtual {v0, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    goto :goto_56

    :cond_7a
    return-void
.end method

.method public setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V
    .registers 4

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_c

    invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    :cond_17
    iput-object p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mCheckedItem:Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->mUpdateSuspended:Z

    return-void
.end method

.method public update()V
    .registers 1

    invoke-direct {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->prepareMenuItems()V

    invoke-virtual {p0}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->notifyDataSetChanged()V

    return-void
.end method
