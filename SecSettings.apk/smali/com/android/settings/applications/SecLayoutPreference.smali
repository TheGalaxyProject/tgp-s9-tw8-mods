.class public Lcom/android/settings/applications/SecLayoutPreference;
.super Landroid/preference/Preference;
.source "SecLayoutPreference.java"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/SecLayoutPreference;->setSelectable(Z)V

    sget-object v4, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-nez v2, :cond_1e

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "SecLayoutPreference requires a layout to be defined"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1e
    invoke-virtual {p0}, Lcom/android/settings/applications/SecLayoutPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a0071

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_39

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    :cond_39
    iput-object v3, p0, Lcom/android/settings/applications/SecLayoutPreference;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/SecLayoutPreference;->setShouldDisableView(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/SecLayoutPreference;->mRootView:Landroid/view/View;

    return-object v0
.end method
