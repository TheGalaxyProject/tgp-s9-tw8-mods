.class public Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;
.super Landroid/support/v7/preference/ListPreference;
.source "NavigationBarDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsSelectable:Z

.field private final mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Landroid/widget/ArrayAdapter;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mIsSelectable:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mIsSelectable:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const v0, 0x1010091

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    const v0, 0x1010091

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mIsSelectable:Z

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->createAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->updateEntries()V

    return-void
.end method

.method private updateEntries()V
    .registers 7

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_11
    if-ge v1, v3, :cond_21

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_21
    return-void
.end method


# virtual methods
.method protected createAdapter()Landroid/widget/ArrayAdapter;
    .registers 4

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method protected createSpinner(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;
    .registers 4

    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected notifyChanged()V
    .registers 2

    invoke-super {p0}, Landroid/support/v7/preference/ListPreference;->notifyChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v7/preference/ListPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-void

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_27
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_4c

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/16 v1, 0x30

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070292

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4c
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setSelection(I)V

    return-void
.end method

.method protected onClick()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mIsSelectable:Z

    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .registers 2
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->updateEntries()V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setValueIndex(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->mSpinner:Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setSelection(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method