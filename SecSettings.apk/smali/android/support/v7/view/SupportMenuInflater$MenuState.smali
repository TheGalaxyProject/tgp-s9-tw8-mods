.class Landroid/support/v7/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/view/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Landroid/support/v4/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticModifiers:I

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemContentDescription:Ljava/lang/CharSequence;

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemIconTintList:Landroid/content/res/ColorStateList;

.field private itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericModifiers:I

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemTooltipText:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/support/v7/view/SupportMenuInflater;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    invoke-virtual {p0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v3, v3, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v3

    return-object v3

    :catch_19
    move-exception v2

    const-string/jumbo v3, "SupportMenuInflater"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot instantiate class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-boolean v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget-boolean v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    iget v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    if-lt v6, v4, :cond_19

    move v3, v4

    :cond_19
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    iget v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v3, :cond_31

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_31
    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v3, :cond_58

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v3, v3, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z

    move-result v3

    if-eqz v3, :cond_48

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_48
    new-instance v3, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    invoke-virtual {v5}, Landroid/support/v7/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_58
    instance-of v3, p1, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v3, :cond_c5

    move-object v2, p1

    check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;

    :goto_5f
    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v5, 0x2

    if-lt v3, v5, :cond_6e

    instance-of v3, p1, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v3, :cond_c7

    move-object v3, p1

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    :cond_6e
    :goto_6e
    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v3, :cond_85

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    sget-object v4, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v5, v5, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v3, v4, v5}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v1, 0x1

    :cond_85
    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v3, :cond_91

    if-nez v1, :cond_d2

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    :cond_91
    :goto_91
    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v3, :cond_9a

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    :cond_9a
    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setContentDescription(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setTooltipText(Landroid/view/MenuItem;Ljava/lang/CharSequence;)V

    iget-char v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    invoke-static {p1, v3, v4}, Landroid/support/v4/view/MenuItemCompat;->setAlphabeticShortcut(Landroid/view/MenuItem;CI)V

    iget-char v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    invoke-static {p1, v3, v4}, Landroid/support/v4/view/MenuItemCompat;->setNumericShortcut(Landroid/view/MenuItem;CI)V

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v3, :cond_bb

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setIconTintMode(Landroid/view/MenuItem;Landroid/graphics/PorterDuff$Mode;)V

    :cond_bb
    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_c4

    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setIconTintList(Landroid/view/MenuItem;Landroid/content/res/ColorStateList;)V

    :cond_c4
    return-void

    :cond_c5
    const/4 v2, 0x0

    goto :goto_5f

    :cond_c7
    instance-of v3, p1, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    if-eqz v3, :cond_6e

    move-object v3, p1

    check-cast v3, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    goto :goto_6e

    :cond_d2
    const-string/jumbo v3, "SupportMenuInflater"

    const-string/jumbo v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91
.end method


# virtual methods
.method public addItem()V
    .registers 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .registers 7

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    iget-object v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v1, v1, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_id:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_visible:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .registers 12

    const/16 v7, 0x1000

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v4, v4, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/support/v7/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v4, p1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_id:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    iget v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    iget v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v6, 0xffff

    and-int/2addr v6, v3

    or-int/2addr v4, v6

    iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_icon:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_alphabeticModifiers:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticModifiers:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_numericModifiers:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericModifiers:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_126

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_123

    const/4 v4, 0x1

    :goto_82
    iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    :goto_84
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checked:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_visible:I

    iget-boolean v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_showAsAction:I

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionLayout:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_12c

    const/4 v2, 0x1

    :goto_cd
    if-eqz v2, :cond_12e

    iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_12e

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_12e

    iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v6, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v7, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    iget-object v7, v7, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v4, v6, v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ActionProvider;

    iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    :goto_e7
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_contentDescription:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_tooltipText:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_13c

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTintMode:I

    invoke-virtual {v0, v4, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v4, v6}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_10d
    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_13f

    sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_iconTint:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    :goto_11d
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    return-void

    :cond_123
    move v4, v5

    goto/16 :goto_82

    :cond_126
    iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto/16 :goto_84

    :cond_12c
    const/4 v2, 0x0

    goto :goto_cd

    :cond_12e
    if-eqz v2, :cond_139

    const-string/jumbo v4, "SupportMenuInflater"

    const-string/jumbo v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_139
    iput-object v8, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    goto :goto_e7

    :cond_13c
    iput-object v8, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_10d

    :cond_13f
    iput-object v8, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_11d
.end method

.method public resetGroup()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    return-void
.end method
